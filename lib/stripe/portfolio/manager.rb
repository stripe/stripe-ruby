# frozen_string_literal: true

require_relative "portfolio"

module Stripe
  module Portfolio
    # Manages multiple portfolios for a user
    class Manager
      attr_reader :user_id, :portfolios

      def initialize(user_id)
        @user_id = user_id
        @portfolios = {}
        @current_portfolio_id = nil
      end

      # Create a new portfolio
      def create_portfolio(name, assets: {})
        portfolio = Portfolio.new(name: name, user_id: @user_id, assets: assets)
        @portfolios[portfolio.id] = portfolio
        @current_portfolio_id = portfolio.id if @portfolios.count == 1
        portfolio
      end

      # List all portfolios
      def list_portfolios
        @portfolios.values.map(&:to_h)
      end

      # Get portfolio by ID
      def get_portfolio(portfolio_id)
        portfolio = @portfolios[portfolio_id]
        return portfolio.to_h if portfolio

        nil
      end

      # Switch active portfolio
      def switch_portfolio(portfolio_id)
        return false unless @portfolios[portfolio_id]

        @current_portfolio_id = portfolio_id
        true
      end

      # Get current active portfolio
      def current_portfolio
        return nil unless @current_portfolio_id

        @portfolios[@current_portfolio_id]
      end

      # Delete portfolio
      def delete_portfolio(portfolio_id)
        return false unless @portfolios[portfolio_id]

        @portfolios.delete(portfolio_id)
        @current_portfolio_id = nil if @current_portfolio_id == portfolio_id
        true
      end

      # Rename portfolio
      def rename_portfolio(portfolio_id, new_name)
        portfolio = @portfolios[portfolio_id]
        return false unless portfolio

        portfolio.name = new_name
        portfolio.updated_at = Time.now.utc
        true
      end

      # Get aggregate stats across all portfolios
      def aggregate_stats
        total_value = @portfolios.values.sum(&:total_value)
        all_assets = @portfolios.values.flat_map(&:assets).to_h { |k, v| [k, v] }

        {
          total_portfolios: @portfolios.count,
          total_value: total_value,
          total_assets: all_assets.count,
          portfolios: list_portfolios,
          current_portfolio_id: @current_portfolio_id,
        }
      end

      # Export portfolio data
      def export_data
        {
          user_id: @user_id,
          exported_at: Time.now.utc.iso8601,
          portfolios: list_portfolios,
          current_portfolio_id: @current_portfolio_id,
        }
      end
    end
  end
end
