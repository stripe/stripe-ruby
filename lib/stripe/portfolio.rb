# frozen_string_literal: true

require_relative "portfolio/portfolio"
require_relative "portfolio/manager"
require_relative "portfolio/insights/analyzer"

module Stripe
  module Portfolio
    # Convenience methods for portfolio operations

    def self.create_manager(user_id)
      Manager.new(user_id)
    end

    def self.create_portfolio(user_id, name, assets: {})
      manager = Manager.new(user_id)
      manager.create_portfolio(name, assets: assets)
    end

    def self.analyze_portfolio(portfolio)
      Insights::Analyzer.new(portfolio)
    end
  end
end
