# frozen_string_literal: true

module Stripe
  module Risk
    # Rule definitions for risk scoring
    class RiskRules
      class Rule
        attr_reader :name, :weight

        def initialize(name, weight = 10)
          @name = name
          @weight = weight
        end

        def apply(transaction, baseline_stats)
          raise NotImplementedError
        end
      end

      class HighAmountRule < Rule
        def initialize(threshold = 100_000)
          super("High Amount", 25)
          @threshold = threshold
        end

        def apply(transaction, baseline_stats)
          amount = transaction[:amount].to_f
          score = amount > @threshold ? @weight : 0
          reason = "High transaction amount: #{amount}"
          [score, reason]
        end
      end

      class UnusualAmountRule < Rule
        def initialize(deviation = 3.0)
          super("Unusual Amount", 15)
          @deviation = deviation
        end

        def apply(transaction, baseline_stats)
          amount = transaction[:amount].to_f
          average = baseline_stats[:avg_amount].to_f
          return [0, "Insufficient history"] if average.zero?

          deviation = (amount - average).abs / average
          score = deviation > @deviation ? @weight : 0
          reason = "Unusual amount deviation: #{(deviation * 100).round(2)}%"
          [score, reason]
        end
      end

      class NewEntityRule < Rule
        def initialize
          super("New Entity", 20)
        end

        def apply(transaction, baseline_stats)
          # Check if counterparty is new
          is_new = transaction[:counterparty_new] == true
          score = is_new ? @weight : 0
          reason = "New counterparty entity"
          [score, reason]
        end
      end

      class GeographicRiskRule < Rule
        HIGH_RISK_REGIONS = %w[IR KP SY CU].freeze

        def initialize
          super("Geographic Risk", 30)
        end

        def apply(transaction, baseline_stats)
          country = transaction[:country]
          score = HIGH_RISK_REGIONS.include?(country) ? @weight : 0
          reason = "High-risk geographic location: #{country}"
          [score, reason]
        end
      end

      class BulkTransactionRule < Rule
        def initialize(threshold = 10)
          super("Bulk Transaction", 18)
          @threshold = threshold
        end

        def apply(transaction, baseline_stats)
          is_bulk = transaction[:is_bulk] == true
          score = is_bulk ? @weight : 0
          reason = "Bulk transaction detected"
          [score, reason]
        end
      end

      class ComplianceFlagRule < Rule
        def initialize
          super("Compliance Flag", 40)
        end

        def apply(transaction, baseline_stats)
          has_flag = transaction[:compliance_flag] == true
          score = has_flag ? @weight : 0
          reason = "Compliance flag set"
          [score, reason]
        end
      end

      def initialize
        @rules = [
          HighAmountRule.new,
          UnusualAmountRule.new,
          NewEntityRule.new,
          GeographicRiskRule.new,
          BulkTransactionRule.new,
          ComplianceFlagRule.new,
        ]
      end

      def applicable_rules(transaction)
        @rules.select { |rule| applicable?(rule, transaction) }
      end

      private

      def applicable?(rule, transaction)
        true # All rules are applicable by default
      end
    end
  end
end
