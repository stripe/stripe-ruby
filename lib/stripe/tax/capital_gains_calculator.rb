# frozen_string_literal: true

module Stripe
  module Tax
    # Calculates capital gains using FIFO or LIFO accounting methods
    class CapitalGainsCalculator
      attr_reader :transactions, :accounting_method, :gains

      def initialize(transactions, accounting_method = :fifo)
        raise ArgumentError, "Invalid accounting method: #{accounting_method}" unless %i[fifo
                                                                                         lifo].include?(accounting_method)

        @transactions = transactions.sort_by { |t| t[:date] }
        @accounting_method = accounting_method
        @gains = []
        calculate_gains!
      end

      # Calculate all capital gains
      def calculate_gains!
        @gains = []

        # Group transactions by asset
        by_asset = @transactions.group_by { |t| t[:asset] }

        by_asset.each do |asset, asset_txs|
          calculate_asset_gains(asset, asset_txs)
        end
      end

      # Get total realized gains
      def total_realized_gains
        @gains.sum { |g| g[:gain] }.round(8)
      end

      # Get total realized losses
      def total_realized_losses
        @gains.select { |g| g[:gain] < 0 }.sum { |g| g[:gain] }.round(8)
      end

      # Get gains by holding period (short-term vs long-term)
      def gains_by_holding_period
        short_term = @gains.select { |g| g[:holding_period_days] < 365 }
        long_term = @gains.select { |g| g[:holding_period_days] >= 365 }

        {
          short_term: {
            count: short_term.count,
            total_gain: short_term.sum { |g| g[:gain] }.round(8),
            average_gain: short_term.count > 0 ? (short_term.sum { |g| g[:gain] } / short_term.count).round(8) : 0,
          },
          long_term: {
            count: long_term.count,
            total_gain: long_term.sum { |g| g[:gain] }.round(8),
            average_gain: long_term.count > 0 ? (long_term.sum { |g| g[:gain] } / long_term.count).round(8) : 0,
          },
        }
      end

      # Get gains by asset
      def gains_by_asset
        @gains.group_by { |g| g[:asset] }.transform_values do |asset_gains|
          {
            count: asset_gains.count,
            total_gain: asset_gains.sum { |g| g[:gain] }.round(8),
            total_quantity: asset_gains.sum { |g| g[:quantity] }.round(8),
          }
        end
      end

      # Get tax liability estimate (simple calculation)
      # Short-term: 37%, Long-term: 15% (US federal, simplified)
      def estimated_tax_liability(short_term_rate = 0.37, long_term_rate = 0.15)
        by_holding = gains_by_holding_period

        short_term_tax = [by_holding[:short_term][:total_gain], 0].max * short_term_rate
        long_term_tax = [by_holding[:long_term][:total_gain], 0].max * long_term_rate

        (short_term_tax + long_term_tax).round(2)
      end

      protected

      def calculate_asset_gains(asset, asset_txs)
        cost_basis_queue = [] # FIFO/LIFO queue of [quantity, cost_per_unit, date]

        asset_txs.each do |tx|
          case tx[:type]
          when :buy, :stake
            cost_basis_queue << [tx[:quantity], tx[:price_per_unit], tx[:date]]

          when :sell, :unstake
            quantity_to_sell = tx[:quantity]

            while quantity_to_sell > 0 && !cost_basis_queue.empty?
              cost_entry = @accounting_method == :fifo ? cost_basis_queue.shift : cost_basis_queue.pop

              qty_from_batch = [quantity_to_sell, cost_entry[0]].min
              cost_per_unit_basis = cost_entry[1]
              purchase_date = cost_entry[2]

              proceeds = qty_from_batch * tx[:price_per_unit]
              cost = qty_from_batch * cost_per_unit_basis
              gain = proceeds - cost - tx[:fee]

              holding_period_days = (tx[:date] - purchase_date).to_i

              @gains << {
                asset: asset,
                quantity: qty_from_batch,
                purchase_date: purchase_date,
                sale_date: tx[:date],
                cost_basis: cost.round(8),
                proceeds: proceeds.round(8),
                gain: gain.round(8),
                holding_period_days: holding_period_days,
                is_long_term: holding_period_days >= 365,
              }

              quantity_to_sell -= qty_from_batch
              cost_entry[0] -= qty_from_batch

              # Put back if not fully consumed
              cost_basis_queue.unshift(cost_entry) if @accounting_method == :fifo && cost_entry[0] > 0
            end
          end
        end
      end
    end
  end
end
