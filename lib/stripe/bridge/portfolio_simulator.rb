# frozen_string_literal: true

module Stripe
  module Bridge
    # Simulates portfolio rebalancing across multiple chains
    class PortfolioSimulator
      attr_reader :portfolio, :target_allocation

      def initialize(portfolio = {})
        @portfolio = portfolio.transform_keys(&:to_sym)
        @target_allocation = {}
        validate_portfolio!
      end

      # Set target allocation (e.g., {ethereum: 0.5, arbitrum: 0.3, polygon: 0.2})
      def set_target_allocation(allocation)
        total = allocation.values.sum
        raise ArgumentError, "Allocation must sum to 1.0, got #{total}" unless (total - 1.0).abs < 0.001

        @target_allocation = allocation.transform_keys(&:to_sym)
      end

      # Calculate rebalancing moves needed
      def calculate_rebalancing_moves
        raise "Target allocation not set. Call set_target_allocation first." unless @target_allocation.any?

        current_allocation = current_allocation_percentages
        moves = []

        # Identify assets that need to move
        @target_allocation.each do |target_chain, target_pct|
          current_pct = current_allocation[target_chain] || 0
          difference = target_pct - current_pct

          next if difference.abs < 0.001 # Skip negligible differences

          moves << if difference > 0
                     # Need to receive assets on this chain
                     {
                       direction: :receive,
                       chain: target_chain,
                       target_percentage: target_pct,
                       current_percentage: current_pct,
                       difference_percentage: difference,
                     }
                   else
                     # Need to send assets from this chain
                     {
                       direction: :send,
                       chain: target_chain,
                       target_percentage: target_pct,
                       current_percentage: current_pct,
                       difference_percentage: difference,
                     }
                   end
        end

        moves
      end

      # Simulate rebalancing with cost analysis (simplified for all-to-all paths)
      def simulate_rebalancing(strategy = :optimal)
        moves = calculate_rebalancing_moves
        unless moves.any?
          return {
            success: false,
            message: "Portfolio already aligned with target allocation",
            moves: [],
            total_cost: 0,
            total_time: 0,
            move_count: 0,
          }
        end

        simulations = []

        send_chains = moves.select { |m| m[:direction] == :send }.map { |m| m[:chain] }
        receive_chains = moves.select { |m| m[:direction] == :receive }.map { |m| m[:chain] }

        # Create simulations for each send-to-receive pair
        send_chains.each do |from_chain|
          receive_chains.each do |to_chain|
            next if from_chain == to_chain

            amount = calculate_move_amount(from_chain, moves)
            next if amount <= 0

            # Check if route exists
            routes = ChainConfig.available_routes(from_chain, to_chain)
            next if routes.empty?

            simulation = simulate_single_move(from_chain, to_chain, amount, strategy)
            simulations << simulation
          end
        end

        aggregate_simulation(simulations)
      end

      # Compare different rebalancing strategies
      def compare_strategies
        strategies = %i[optimal balanced conservative]
        comparisons = []

        strategies.each do |strategy|
          result = simulate_rebalancing(strategy)
          comparisons << {
            strategy: strategy.to_s,
            total_cost: result[:total_cost],
            total_time: result[:total_time],
            cost_percentage: result[:cost_percentage],
            moves_count: result[:moves].count,
          }
        end

        comparisons.sort_by { |c| c[:total_cost] }
      end

      # Get optimization recommendations
      def get_recommendations
        current_alloc = current_allocation_percentages
        recommendations = []

        @target_allocation.each do |chain, target_pct|
          current_pct = current_alloc[chain] || 0
          difference = (target_pct - current_pct).abs

          next unless difference > 0.1 # More than 10% difference

          amount = (@portfolio.values.sum * difference).round(2)
          recommendations << {
            chain: chain.to_s,
            current_percentage: current_pct,
            target_percentage: target_pct,
            difference_percentage: difference,
            amount_to_move: amount,
            action: (target_pct - current_pct) > 0 ? "RECEIVE" : "SEND",
            priority: difference > 0.2 ? "HIGH" : "MEDIUM",
          }
        end

        recommendations.sort_by { |r| -r[:difference_percentage] }
      end

      # Estimate final portfolio after rebalancing
      def estimate_final_portfolio
        simulation = simulate_rebalancing
        return { error: "Rebalancing failed" } unless simulation[:success]

        total_value = @portfolio.values.sum
        total_cost = simulation[:total_cost]
        final_value = total_value - total_cost

        final_portfolio = {}
        @target_allocation.each do |chain, target_pct|
          final_portfolio[chain] = (final_value * target_pct).round(2)
        end

        {
          initial_value: total_value.round(2),
          total_rebalancing_cost: total_cost.round(2),
          cost_percentage: ((total_cost / total_value) * 100).round(2),
          final_value: final_value.round(2),
          final_portfolio: final_portfolio,
          time_required: simulation[:total_time],
          time_formatted: format_time(simulation[:total_time]),
        }
      end

      # Get detailed cost breakdown
      def get_cost_breakdown
        simulation = simulate_rebalancing
        return { error: "No simulation available" } unless simulation[:success]

        breakdown = {
          gas_fees: 0,
          bridge_fees: 0,
          total_fees: 0,
          moves: [],
        }

        simulation[:moves].each do |move|
          breakdown[:gas_fees] += move[:gas_fee]
          breakdown[:bridge_fees] += move[:bridge_fee]
          breakdown[:total_fees] += move[:total_cost]

          breakdown[:moves] << {
            from: move[:from_chain],
            to: move[:to_chain],
            amount: move[:amount],
            gas_fee: move[:gas_fee],
            bridge_fee: move[:bridge_fee],
            total_cost: move[:total_cost],
            protocol: move[:protocol],
          }
        end

        breakdown
      end

      private

      def validate_portfolio!
        @portfolio.each do |chain, amount|
          raise ArgumentError, "Unknown chain: #{chain}" unless ChainConfig.get_chain(chain)
          raise ArgumentError, "Amount must be a positive number" unless amount.is_a?(Numeric) && amount > 0
        end
      end

      def current_allocation_percentages
        total = @portfolio.values.sum
        return {} if total.zero?

        allocation = {}
        @portfolio.each do |chain, amount|
          allocation[chain] = (amount.to_f / total).round(4)
        end
        allocation
      end

      def calculate_move_amount(chain, moves)
        move = moves.find { |m| m[:chain] == chain && m[:direction] == :send }
        return 0 unless move

        total = @portfolio.values.sum
        (total * move[:difference_percentage].abs).round(2)
      end

      def simulate_single_move(from_chain, to_chain, amount, strategy)
        path_calc = PathCalculator.new(from_chain, to_chain, amount)
        optimal_path = path_calc.optimal_path

        gas_estimator = GasFeeEstimator.new(from_chain, to_chain, "USDC", amount)
        fee_estimate = gas_estimator.estimate_bridge_operation_fee(strategy)

        exec_time_estimator = ExecutionTimeEstimator.new(from_chain, to_chain)
        time_estimate = exec_time_estimator.estimate_complete_path_time

        {
          from_chain: from_chain.to_s,
          to_chain: to_chain.to_s,
          amount: amount,
          gas_fee: extract_gas_fee(fee_estimate),
          bridge_fee: extract_bridge_fee(fee_estimate),
          total_cost: fee_estimate[:total_estimated_fee],
          output_amount: fee_estimate[:output_amount],
          time_required: time_estimate[:total_execution_time],
          protocol: optimal_path.to_h[:protocols][0],
        }
      end

      def aggregate_simulation(simulations)
        if simulations.empty?
          return {
            success: false,
            message: "No rebalancing moves needed",
            moves: [],
            total_cost: 0,
            total_time: 0,
            move_count: 0,
          }
        end

        {
          success: true,
          moves: simulations,
          total_cost: simulations.sum { |s| s[:total_cost] }.round(6),
          total_time: simulations.map { |s| s[:time_required] }.max,
          total_output: simulations.sum { |s| s[:output_amount] }.round(2),
          move_count: simulations.count,
          cost_percentage: ((simulations.sum { |s| s[:total_cost] } / simulations.sum do |s|
            s[:amount]
          end) * 100).round(4),
        }
      end

      def extract_gas_fee(fee_estimate)
        # Estimate gas portion (typically 30-50% of bridge fees)
        return 0 unless fee_estimate && fee_estimate[:total_estimated_fee]
        (fee_estimate[:total_estimated_fee] * 0.4).round(6)
      end

      def extract_bridge_fee(fee_estimate)
        # Extract bridge portion
        return 0 unless fee_estimate && fee_estimate[:total_estimated_fee]
        (fee_estimate[:total_estimated_fee] * 0.6).round(6)
      end

      def format_time(seconds)
        case seconds
        when 0..60
          "#{seconds}s"
        when 61..3600
          "#{(seconds / 60).round(0)}m"
        else
          "#{(seconds / 3600).round(1)}h"
        end
      end
    end
  end
end
