# frozen_string_literal: true

module Stripe
  module Bridge
    # Calculates optimal bridge paths between chains
    class PathCalculator
      attr_reader :from_chain, :to_chain, :paths

      def initialize(from_chain, to_chain, amount = 1000)
        @from_chain = from_chain.to_sym
        @to_chain = to_chain.to_sym
        @amount = amount.to_f
        @paths = []
        validate_chains!
      end

      # Calculate all available bridge paths
      def calculate_paths
        @paths = []
        routes = ChainConfig.available_routes(@from_chain, @to_chain)

        routes.each do |route|
          path = Path.new(route, @amount)
          path.calculate_costs
          @paths << path
        end

        @paths.sort_by(&:total_cost)
      end

      # Get optimal (cheapest) path
      def optimal_path
        calculate_paths.first
      end

      # Get fastest path
      def fastest_path
        calculate_paths.min_by(&:total_time)
      end

      # Get all paths sorted by cost
      def paths_by_cost
        calculate_paths.sort_by(&:total_cost)
      end

      # Get all paths sorted by time
      def paths_by_time
        calculate_paths.sort_by(&:total_time)
      end

      # Get best value path (balance cost and time)
      def best_value_path
        calculate_paths.min_by { |p| p.cost_efficiency_score }
      end

      def validate_chains!
        raise ArgumentError, "Unsupported source chain: #{@from_chain}" unless ChainConfig.get_chain(@from_chain)
        raise ArgumentError, "Unsupported destination chain: #{@to_chain}" unless ChainConfig.get_chain(@to_chain)
        return unless @from_chain == @to_chain

        raise ArgumentError, "Source and destination chains must be different"
      end

      # Represents a single bridge path
      class Path
        attr_reader :route, :amount, :hops, :protocols, :costs, :execution_times

        def initialize(route, amount)
          @route = route
          @amount = amount.to_f
          @hops = route[:hops]
          @protocols = route[:protocols]
          @costs = []
          @execution_times = []
        end

        def calculate_costs
          @costs = []
          @execution_times = []

          # Calculate cost and time for each hop
          (@hops.length - 1).times do |i|
            from_chain = @hops[i]
            to_chain = @hops[i + 1]
            protocol = @protocols[i]

            hop_cost = calculate_hop_cost(from_chain, to_chain, protocol)
            hop_time = calculate_hop_time(from_chain, to_chain, protocol)

            @costs << hop_cost
            @execution_times << hop_time
          end
        end

        def total_cost
          @costs.sum
        end

        def total_time
          @execution_times.sum
        end

        def cost_percentage
          (total_cost / @amount * 100).round(2)
        end

        def cost_efficiency_score
          # Lower is better: cost per second
          total_time > 0 ? total_cost / total_time : 0
        end

        def to_h
          {
            type: @route[:type],
            hops: @hops.map(&:to_s),
            protocols: @protocols.map(&:to_s),
            input_amount: @amount,
            output_amount: (@amount - total_cost).round(2),
            total_cost: total_cost.round(6),
            cost_percentage: cost_percentage,
            total_time: total_time,
            total_time_formatted: format_time(total_time),
            hop_details: hop_details,
          }
        end

        private

        def calculate_hop_cost(from_chain, to_chain, protocol)
          from_info = ChainConfig.get_chain(from_chain)
          _to_info = ChainConfig.get_chain(to_chain)
          protocol_info = ChainConfig.get_protocol(protocol)

          # Source chain gas cost
          gas_cost = (@amount * from_info[:gas_price_gwei] / 1_000_000).round(6)

          # Bridge protocol fee
          bridge_fee = (@amount * protocol_info[:bridge_fee_bps] / 10_000).round(6)

          # Connection fee
          connection = ChainConfig.get_connection(from_chain, to_chain)
          connection_fee = (@amount * connection[:fee_bps] / 10_000).round(6)

          (gas_cost + bridge_fee + connection_fee).round(6)
        end

        def calculate_hop_time(from_chain, to_chain, protocol)
          from_info = ChainConfig.get_chain(from_chain)
          protocol_info = ChainConfig.get_protocol(protocol)

          # Time for transaction to be included
          source_time = from_info[:avg_block_time] * 2

          # Time for bridge execution
          bridge_time = (protocol_info[:min_bridge_time] + protocol_info[:max_bridge_time]) / 2

          # Destination finality time
          to_info = ChainConfig.get_chain(to_chain)
          finality_time = to_info[:finality_time]

          (source_time + bridge_time + finality_time).round(0)
        end

        def hop_details
          details = []
          (@hops.length - 1).times do |i|
            details << {
              from: @hops[i].to_s,
              to: @hops[i + 1].to_s,
              protocol: @protocols[i].to_s,
              cost: @costs[i].round(6),
              time: @execution_times[i],
              time_formatted: format_time(@execution_times[i]),
            }
          end
          details
        end

        def format_time(seconds)
          return "#{(seconds / 60).round(0)}m" if seconds >= 60

          "#{seconds}s"
        end
      end
    end
  end
end
