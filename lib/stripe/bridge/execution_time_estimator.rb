# frozen_string_literal: true

module Stripe
  module Bridge
    # Estimates cross-chain execution times
    class ExecutionTimeEstimator
      attr_reader :from_chain, :to_chain

      # Network condition impact on timing
      NETWORK_CONDITIONS = {
        optimal: { multiplier: 0.8, description: "Optimal conditions" },
        normal: { multiplier: 1.0, description: "Normal conditions" },
        congested: { multiplier: 1.5, description: "Network congestion" },
        critical: { multiplier: 2.5, description: "Critical delays" },
      }.freeze

      # Priority levels affect execution time
      PRIORITY_LEVELS = {
        low: { multiplier: 1.3, priority_fee_multiplier: 0.8 },
        standard: { multiplier: 1.0, priority_fee_multiplier: 1.0 },
        high: { multiplier: 0.7, priority_fee_multiplier: 1.5 },
        urgent: { multiplier: 0.4, priority_fee_multiplier: 2.5 },
      }.freeze

      def initialize(from_chain, to_chain)
        @from_chain = from_chain.to_sym
        @to_chain = to_chain.to_sym
        @network_condition = :normal
        @priority_level = :standard
        validate_chains!
      end

      # Set network condition
      def set_network_condition(condition)
        raise ArgumentError, "Invalid condition: #{condition}" unless NETWORK_CONDITIONS.key?(condition.to_sym)

        @network_condition = condition.to_sym
      end

      # Set priority level
      def set_priority_level(priority)
        raise ArgumentError, "Invalid priority: #{priority}" unless PRIORITY_LEVELS.key?(priority.to_sym)

        @priority_level = priority.to_sym
      end

      # Estimate execution time for a single hop
      def estimate_hop_time(from_chain, to_chain, protocol)
        from_info = ChainConfig.get_chain(from_chain)
        to_info = ChainConfig.get_chain(to_chain)
        protocol_info = ChainConfig.get_protocol(protocol)

        # Time for transaction inclusion on source chain
        source_confirmation_time = from_info[:avg_block_time] * 2

        # Time for bridge execution (average of min and max)
        bridge_execution_time = (protocol_info[:min_bridge_time] + protocol_info[:max_bridge_time]) / 2

        # Time for destination chain finality
        dest_finality_time = to_info[:finality_time]

        # Total time without adjustments
        base_time = source_confirmation_time + bridge_execution_time + dest_finality_time

        # Apply network condition multiplier
        network_multiplier = NETWORK_CONDITIONS[@network_condition][:multiplier]
        condition_adjusted_time = base_time * network_multiplier

        # Apply priority multiplier
        priority_multiplier = PRIORITY_LEVELS[@priority_level][:multiplier]
        final_time = condition_adjusted_time * priority_multiplier

        {
          source_confirmation: (source_confirmation_time * priority_multiplier).round(0),
          bridge_execution: (bridge_execution_time * priority_multiplier).round(0),
          destination_finality: (dest_finality_time * priority_multiplier).round(0),
          total_time: final_time.round(0),
          total_time_formatted: format_time(final_time.round(0)),
          network_condition: @network_condition.to_s,
          priority_level: @priority_level.to_s,
        }
      end

      # Estimate complete bridge path execution time
      def estimate_complete_path_time
        path_calc = PathCalculator.new(@from_chain, @to_chain)
        optimal_path = path_calc.optimal_path
        hop_details = optimal_path.to_h[:hop_details]

        hop_times = []
        total_time = 0

        hop_details.each_with_index do |hop, idx|
          from_chain = hop[:from].to_sym
          to_chain = hop[:to].to_sym
          protocol = hop[:protocol].to_sym

          hop_time = estimate_hop_time(from_chain, to_chain, protocol)
          hop_times << {
            hop_number: idx + 1,
            from: hop[:from],
            to: hop[:to],
            protocol: hop[:protocol],
            estimated_seconds: hop_time[:total_time],
            estimated_time: hop_time[:total_time_formatted],
            details: hop_time,
          }
          total_time += hop_time[:total_time]
        end

        {
          total_execution_time: total_time,
          total_execution_time_formatted: format_time(total_time),
          estimated_completion_time: calculate_completion_time(total_time),
          hop_breakdown: hop_times,
          network_condition: @network_condition.to_s,
          priority_level: @priority_level.to_s,
        }
      end

      # Compare execution times for different priority levels
      def compare_priorities
        priorities = PRIORITY_LEVELS.keys
        comparisons = []

        priorities.each do |priority|
          old_priority = @priority_level
          @priority_level = priority

          timing = estimate_complete_path_time
          comparisons << {
            priority: priority.to_s,
            total_time: timing[:total_execution_time],
            formatted_time: timing[:total_execution_time_formatted],
            completion_time: timing[:estimated_completion_time],
          }

          @priority_level = old_priority
        end

        comparisons
      end

      # Get recommended priority based on time requirement
      def recommended_priority(max_time_seconds)
        comparisons = compare_priorities
        suitable = comparisons.select { |c| c[:total_time] <= max_time_seconds }

        if suitable.empty?
          # Even urgent won't meet requirement
          comparisons.last # Return urgent (fastest)
        else
          # Return cheapest suitable option (likely standard or high)
          suitable.min_by { |c| PRIORITY_LEVELS[c[:priority].to_sym][:priority_fee_multiplier] }
        end
      end

      # Detailed execution timeline
      def execution_timeline
        timing = estimate_complete_path_time
        hop_breakdown = timing[:hop_breakdown]

        timeline = []
        current_time = 0

        hop_breakdown.each do |hop|
          start_time = current_time
          end_time = current_time + hop[:estimated_seconds]

          timeline << {
            hop: hop[:hop_number],
            from: hop[:from],
            to: hop[:to],
            protocol: hop[:protocol],
            start_time: start_time,
            start_time_formatted: format_time(start_time),
            end_time: end_time,
            end_time_formatted: format_time(end_time),
            duration: hop[:estimated_seconds],
            duration_formatted: hop[:estimated_time],
          }

          current_time = end_time
        end

        {
          timeline: timeline,
          total_duration: timing[:total_execution_time],
          total_duration_formatted: timing[:total_execution_time_formatted],
          estimated_completion: timing[:estimated_completion_time],
        }
      end

      private

      def validate_chains!
        raise ArgumentError, "Unsupported source chain: #{@from_chain}" unless ChainConfig.get_chain(@from_chain)
        return if ChainConfig.get_chain(@to_chain)

        raise ArgumentError, "Unsupported destination chain: #{@to_chain}"
      end

      def calculate_completion_time(seconds_from_now)
        completion = Time.now.utc + seconds_from_now
        {
          time: completion.iso8601,
          in_seconds: seconds_from_now,
          formatted: "#{(seconds_from_now / 60).round(0)}m #{(seconds_from_now % 60).round(0)}s from now",
        }
      end

      def format_time(seconds)
        case seconds
        when 0..60
          "#{seconds}s"
        when 61..3600
          minutes = (seconds / 60).round(0)
          secs = (seconds % 60).round(0)
          "#{minutes}m #{secs}s"
        else
          hours = (seconds / 3600).round(1)
          "#{hours}h"
        end
      end
    end
  end
end
