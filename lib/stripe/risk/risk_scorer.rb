# frozen_string_literal: true

module Stripe
  module Risk
    # Risk scoring engine for evaluating transaction risk levels
    class RiskScorer
      # Risk score ranges
      LOW_THRESHOLD = 0..30
      MEDIUM_THRESHOLD = 31..65
      HIGH_THRESHOLD = 66..100

      attr_reader :transaction_history, :baseline_stats

      def initialize
        @transaction_history = []
        @baseline_stats = {}
        @lock = Mutex.new
        @rules = RiskRules.new
      end

      # Calculate risk score for a transaction
      def calculate_score(transaction)
        raise ArgumentError, "transaction must be a Hash" unless transaction.is_a?(Hash)

        score = 0
        factors = {}

        # Apply rules
        rules = @rules.applicable_rules(transaction)
        rules.each do |rule|
          factor_score, reason = rule.apply(transaction, @baseline_stats)
          score += factor_score
          factors[reason] = factor_score
        end

        # Cap score at 100
        final_score = [score, 100].min

        {
          score: final_score,
          level: level_for_score(final_score),
          factors: factors,
          timestamp: Time.now.utc,
        }
      end

      # Record a transaction for baseline building
      def record_transaction(transaction)
        @lock.synchronize do
          @transaction_history << transaction
          update_baseline_stats(transaction)
        end
      end

      # Get risk level from score
      def level_for_score(score)
        case score
        when LOW_THRESHOLD
          "low"
        when MEDIUM_THRESHOLD
          "medium"
        when HIGH_THRESHOLD
          "high"
        else
          "unknown"
        end
      end

      # Update baseline statistics
      private

      def update_baseline_stats(transaction)
        # Update average amount
        amounts = @transaction_history.map { |t| t[:amount].to_f }
        @baseline_stats[:avg_amount] = amounts.sum / amounts.length if amounts.any?

        # Update frequency stats
        @baseline_stats[:total_transactions] = @transaction_history.length

        # Update by currency
        by_currency = @transaction_history.group_by { |t| t[:currency] }
        @baseline_stats[:by_currency] = by_currency.transform_values(&:length)

        # Update by type
        by_type = @transaction_history.group_by { |t| t[:type] }
        @baseline_stats[:by_type] = by_type.transform_values(&:length)
      end
    end
  end
end
