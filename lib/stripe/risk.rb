# frozen_string_literal: true

require "stripe/risk/risk_scorer"
require "stripe/risk/risk_rules"

module Stripe
  module Risk
    def self.score_transaction(transaction, baseline_stats = {})
      scorer.calculate_score(transaction)
    end

    def self.record_transaction(transaction)
      scorer.record_transaction(transaction)
    end

    def self.score_for_level(score)
      scorer.level_for_score(score)
    end

    def self.scorer
      @scorer ||= RiskScorer.new
    end

    def self.reset_scorer
      @scorer = RiskScorer.new
    end
  end
end
