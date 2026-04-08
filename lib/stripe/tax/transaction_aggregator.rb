# frozen_string_literal: true

module Stripe
  module Tax
    # Aggregates transactions from multiple monitored wallets
    class TransactionAggregator
      attr_reader :wallets, :transactions

      def initialize
        @wallets = {}
        @transactions = []
      end

      # Add a wallet to track
      def add_wallet(wallet_id, chain, address)
        raise ArgumentError, "Wallet ID cannot be empty" if wallet_id.to_s.strip.empty?
        raise ArgumentError, "Unsupported chain: #{chain}" unless valid_chain?(chain)

        @wallets[wallet_id] = {
          chain: chain,
          address: address,
          transactions: [],
        }
      end

      # Add transaction for a wallet
      def add_transaction(wallet_id, transaction_data)
        raise ArgumentError, "Wallet not found: #{wallet_id}" unless @wallets[wallet_id]

        tx = {
          wallet_id: wallet_id,
          date: transaction_data[:date],
          type: transaction_data[:type], # :buy, :sell, :transfer, :stake, :unstake
          asset: transaction_data[:asset],
          quantity: transaction_data[:quantity].to_f,
          price_per_unit: transaction_data[:price_per_unit].to_f,
          cost_basis: (transaction_data[:quantity].to_f * transaction_data[:price_per_unit].to_f).round(8),
          fee: transaction_data[:fee].to_f,
          notes: transaction_data[:notes] || "",
        }

        @wallets[wallet_id][:transactions] << tx
        @transactions << tx

        tx
      end

      # Get all transactions sorted by date
      def all_transactions(sort_order = :asc)
        sorted = @transactions.sort_by { |t| t[:date] }
        sort_order == :desc ? sorted.reverse : sorted
      end

      # Get transactions for a specific wallet
      def wallet_transactions(wallet_id, sort_order = :asc)
        raise ArgumentError, "Wallet not found: #{wallet_id}" unless @wallets[wallet_id]

        transactions = @wallets[wallet_id][:transactions]
        sorted = transactions.sort_by { |t| t[:date] }
        sort_order == :desc ? sorted.reverse : sorted
      end

      # Get transactions of a specific type
      def transactions_by_type(transaction_type)
        @transactions.select { |t| t[:type] == transaction_type }.sort_by { |t| t[:date] }
      end

      # Get transactions for a specific asset
      def transactions_by_asset(asset)
        @transactions.select { |t| t[:asset].to_s.upcase == asset.to_s.upcase }.sort_by { |t| t[:date] }
      end

      # Get transactions within a date range
      def transactions_by_date_range(start_date, end_date)
        @transactions.select { |t| t[:date].between?(start_date, end_date) }.sort_by { |t| t[:date] }
      end

      # Calculate total volume by asset
      def volume_by_asset
        volume = {}

        @transactions.each do |tx|
          asset = tx[:asset].to_s.upcase
          volume[asset] ||= { buy_qty: 0, sell_qty: 0, total_cost: 0, total_proceeds: 0 }

          case tx[:type]
          when :buy
            volume[asset][:buy_qty] += tx[:quantity]
            volume[asset][:total_cost] += tx[:cost_basis]
          when :sell
            volume[asset][:sell_qty] += tx[:quantity]
            volume[asset][:total_proceeds] += tx[:cost_basis]
          end
        end

        volume
      end

      # Calculate total fees
      def total_fees
        @transactions.sum { |t| t[:fee] }.round(8)
      end

      # Get transaction count
      def transaction_count
        @transactions.count
      end

      # Get wallet count
      def wallet_count
        @wallets.count
      end

      protected

      def valid_chain?(chain)
        %i[ethereum arbitrum optimism polygon avalanche base].include?(chain.to_sym)
      end
    end
  end
end
