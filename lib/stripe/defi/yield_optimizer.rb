# frozen_string_literal: true

module Stripe
  module DeFi
    # Yield optimization engine
    # Scans multiple DeFi protocols to find optimal yields and recommend rebalancing
    class YieldOptimizer
      attr_reader :scanners, :monitored_wallets

      def initialize(monitored_wallets = {})
        @scanners = {
          aave: AaveScanner.new,
          compound: CompoundScanner.new,
          uniswap: UniswapScanner.new,
        }
        @monitored_wallets = monitored_wallets
        validate_wallets!
      end

      # Get best yield for an asset across all protocols and chains
      def best_global_yield(asset)
        results = @scanners.map do |protocol, scanner|
          best = scanner.best_yield_for_asset(asset)
          next unless best && best[:apy] && best[:apy] > 0

          best.merge(protocol: protocol.to_s)
        end.compact

        return { asset: asset, error: "No yields found" } if results.empty?

        results.sort_by { |r| r[:apy] }.reverse.first
      end

      # Get all available yields for an asset sorted by APY
      def all_yields_for_asset(asset)
        all_yields = []

        @scanners.each do |protocol, scanner|
          scanner.supported_chains.each do |chain|
            apy = scanner.get_apy(chain, asset)
            next unless apy && apy > 0

            all_yields << {
              asset: asset,
              protocol: protocol.to_s,
              chain: chain,
              apy: apy,
            }
          end
        end

        all_yields.sort_by { |y| y[:apy] }.reverse
      end

      # Find opportunities to move funds from lower yield to higher yield
      def find_rebalancing_opportunities(min_apy_improvement: 1.0)
        opportunities = []

        @monitored_wallets.each do |wallet_id, wallet_data|
          current_assets = wallet_data[:assets] || {}
          current_chain = wallet_data[:chain]

          current_assets.each do |asset, amount|
            best = best_global_yield(asset)
            next unless best && best[:apy] && !best[:error]
            next unless best[:apy].is_a?(Numeric)

            current_yield_val = wallet_data[:yields] && wallet_data[:yields][asset] || 0
            current_yield_val = current_yield_val.is_a?(Numeric) ? current_yield_val : 0

            apy_improvement = best[:apy] - current_yield_val

            next unless apy_improvement >= min_apy_improvement

            opportunities << {
              wallet_id: wallet_id,
              asset: asset,
              amount: amount,
              from_protocol: wallet_data[:protocol] || "current",
              from_chain: current_chain,
              to_protocol: best[:protocol],
              to_chain: best[:chain],
              current_apy: current_yield_val,
              potential_apy: best[:apy],
              apy_improvement: apy_improvement,
              estimated_annual_gain: (amount * apy_improvement / 100).round(2),
            }
          end
        end

        opportunities.sort_by { |o| o[:estimated_annual_gain] }.reverse
      end

      # Get current yields for wallet assets
      def wallet_current_yields(wallet_id)
        wallet_data = @monitored_wallets[wallet_id]
        return { error: "Wallet not found" } unless wallet_data

        yields = {}
        current_assets = wallet_data[:assets] || {}

        current_assets.each do |asset, _amount|
          best = best_global_yield(asset)
          yields[asset] = best[:apy] || 0
        end

        yields
      end

      # Get portfolio yield analysis
      def portfolio_yield_analysis
        total_value = 0
        total_potential_yield = 0
        asset_breakdown = {}

        @monitored_wallets.each do |_wallet_id, wallet_data|
          assets = wallet_data[:assets] || {}
          assets.each do |asset, amount|
            best = best_global_yield(asset)
            apy = best[:apy] || 0

            total_value += amount
            total_potential_yield += amount * apy / 100

            asset_breakdown[asset] ||= { total_value: 0, total_apy: 0, avg_apy: 0 }
            asset_breakdown[asset][:total_value] += amount
            asset_breakdown[asset][:total_apy] += amount * apy / 100
          end
        end

        # Calculate averages
        asset_breakdown.each do |asset, data|
          data[:avg_apy] = (data[:total_apy] / data[:total_value] * 100).round(2) if data[:total_value] > 0
        end

        {
          total_portfolio_value: total_value.round(2),
          total_potential_annual_yield: total_potential_yield.round(2),
          average_portfolio_apy: total_value > 0 ? (total_potential_yield / total_value * 100).round(2) : 0,
          asset_breakdown: asset_breakdown,
          wallet_count: @monitored_wallets.count,
        }
      end

      # Get yield comparison for a specific asset across protocols and chains
      def yield_comparison_matrix(asset)
        matrix = {}

        @scanners.each do |protocol, scanner|
          matrix[protocol.to_s] = {}
          scanner.supported_chains.each do |chain|
            apy = scanner.get_apy(chain, asset)
            matrix[protocol.to_s][chain] = apy || 0
          end
        end

        matrix
      end

      protected

      def validate_wallets!
        @monitored_wallets.each do |wallet_id, data|
          raise ArgumentError, "Wallet #{wallet_id} missing :assets" unless data.is_a?(Hash) && data[:assets]
          raise ArgumentError, "Wallet #{wallet_id} missing :chain" unless data[:chain]
        end
      end
    end
  end
end
