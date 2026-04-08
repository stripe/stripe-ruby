# frozen_string_literal: true

module Stripe
  module Bridge
    # Advanced gas fee estimation and optimization
    class GasFeeEstimator
      attr_reader :from_chain, :to_chain, :token, :amount

      # Network congestion levels and their impact
      CONGESTION_LEVELS = {
        low: { multiplier: 0.8, description: "Low network activity" },
        medium: { multiplier: 1.0, description: "Normal network activity" },
        high: { multiplier: 1.5, description: "High network activity" },
        critical: { multiplier: 2.5, description: "Critical congestion" },
      }.freeze

      # Gas optimization strategies
      GAS_STRATEGIES = {
        default: { name: "Default", optimization: 0 },
        aggressive: { name: "Aggressive", optimization: -0.3 }, # May fail in high congestion
        conservative: { name: "Conservative", optimization: 0.5 }, # Higher cost, safer
      }.freeze

      def initialize(from_chain, to_chain, token = "USDC", amount = 1000)
        @from_chain = from_chain.to_sym
        @to_chain = to_chain.to_sym
        @token = token
        @amount = amount.to_f
        @congestion_level = :medium
      end

      # Set network congestion level
      def set_congestion_level(level)
        raise ArgumentError, "Invalid congestion level: #{level}" unless CONGESTION_LEVELS.key?(level.to_sym)

        @congestion_level = level.to_sym
      end

      # Estimate gas fee with current congestion
      def estimate_gas_fee(strategy = :default)
        from_info = ChainConfig.get_chain(@from_chain)
        raise ArgumentError, "Unknown chain: #{@from_chain}" unless from_info

        # Base gas cost
        base_fee = calculate_base_gas_fee(from_info)

        # Apply congestion multiplier
        congestion_multiplier = CONGESTION_LEVELS[@congestion_level][:multiplier]
        congested_fee = base_fee * congestion_multiplier

        # Apply strategy optimization
        strategy_info = GAS_STRATEGIES[strategy.to_sym]
        raise ArgumentError, "Invalid strategy: #{strategy}" unless strategy_info

        optimized_fee = congested_fee * (1 + strategy_info[:optimization])

        {
          base_fee: base_fee.round(8),
          congestion_multiplier: congestion_multiplier,
          congestion_level: @congestion_level.to_s,
          strategy: strategy.to_s,
          strategy_optimization: strategy_info[:optimization],
          estimated_fee: optimized_fee.round(8),
          chain: @from_chain.to_s,
          token: @token,
          amount: @amount,
        }
      end

      # Estimate fees for complete bridge operation
      def estimate_bridge_operation_fee(strategy = :default)
        path_calc = PathCalculator.new(@from_chain, @to_chain, @amount)
        optimal_path = path_calc.optimal_path
        hop_details = optimal_path.to_h[:hop_details]

        fees = []
        total_fee = 0

        hop_details.each_with_index do |hop, idx|
          from_chain = hop[:from].to_sym
          protocol = hop[:protocol].to_sym

          # Estimate gas for this chain
          gas_estimate = estimate_gas_for_chain(from_chain, strategy)
          fees << {
            hop_number: idx + 1,
            from_chain: hop[:from],
            to_chain: hop[:to],
            protocol: hop[:protocol],
            estimated_gas: gas_estimate[:estimated_fee],
            bridge_fee: hop[:cost].round(8),
            total_fee: (gas_estimate[:estimated_fee] + hop[:cost]).round(8),
          }
          total_fee += gas_estimate[:estimated_fee] + hop[:cost]
        end

        {
          total_estimated_fee: total_fee.round(8),
          fee_percentage: ((total_fee / @amount) * 100).round(4),
          output_amount: (@amount - total_fee).round(8),
          hop_fees: fees,
          strategy: strategy.to_s,
          congestion_level: @congestion_level.to_s,
        }
      end

      # Compare fee estimates for different strategies
      def compare_strategies
        strategies = GAS_STRATEGIES.keys
        comparisons = []

        strategies.each do |strategy|
          estimate = estimate_bridge_operation_fee(strategy)
          comparisons << {
            strategy: strategy.to_s,
            total_fee: estimate[:total_estimated_fee],
            fee_percentage: estimate[:fee_percentage],
            output_amount: estimate[:output_amount],
          }
        end

        # Sort by total fee (cheapest first)
        comparisons.sort_by { |c| c[:total_fee] }
      end

      # Get optimal strategy based on criteria
      def optimal_strategy(criteria = :cost)
        comparisons = compare_strategies

        case criteria.to_sym
        when :cost
          comparisons.first  # Cheapest
        when :safety
          comparisons.last   # Most conservative
        else
          comparisons.find { |c| c[:strategy] == "Default" }
        end
      end

      # Estimate when to execute for lowest fees
      def best_execution_time
        congestion_forecast = forecast_congestion_24h

        best_time = congestion_forecast.min_by { |h| h[:estimated_fee] }
        {
          recommended_hour: best_time[:hour],
          estimated_fee: best_time[:estimated_fee],
          estimated_congestion: best_time[:congestion_level],
          savings_vs_now: (estimate_gas_fee[:estimated_fee] - best_time[:estimated_fee]).round(8),
          forecast: congestion_forecast,
        }
      end

      private

      def calculate_base_gas_fee(chain_info)
        # Base gas calculation: gas_price * gas_units / 10^9 (to convert gwei to native token)
        gas_price_gwei = chain_info[:gas_price_gwei].to_f

        # Typical EVM transfer: ~21,000 gas
        # Bridge operation: ~100,000 gas (includes approval, bridge call, etc.)
        gas_units = 100_000

        # Fee in native token = (gas_price * gas_units) / 10^9
        (gas_price_gwei * gas_units / 1_000_000_000.0).round(8)
      end

      def estimate_gas_for_chain(chain, strategy = :default)
        from_info = ChainConfig.get_chain(chain)
        base_fee = calculate_base_gas_fee(from_info)

        # Apply strategy optimization
        strategy_info = GAS_STRATEGIES[strategy.to_sym] || GAS_STRATEGIES[:default]
        optimized_fee = base_fee * (1 + strategy_info[:optimization])

        {
          base_fee: base_fee.round(8),
          strategy: strategy.to_s,
          estimated_fee: optimized_fee.round(8),
        }
      end

      def forecast_congestion_24h
        # Simulate 24-hour congestion forecast
        hours = []
        24.times do |hour|
          # Simulate realistic congestion pattern (higher during peak times)
          peak_hours = [8, 9, 10, 14, 15, 16, 20, 21, 22] # UTC peak times
          congestion = if peak_hours.include?(hour)
                         :high
                       elsif hour > 6 && hour < 23
                         :medium
                       else
                         :low
                       end

          multiplier = CONGESTION_LEVELS[congestion][:multiplier]
          base_fee = calculate_base_gas_fee(ChainConfig.get_chain(@from_chain))
          estimated_fee = base_fee * multiplier

          hours << {
            hour: hour,
            congestion_level: congestion.to_s,
            multiplier: multiplier,
            estimated_fee: estimated_fee.round(8),
          }
        end

        hours
      end
    end
  end
end
