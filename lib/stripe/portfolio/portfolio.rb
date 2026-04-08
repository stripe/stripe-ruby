# frozen_string_literal: true

module Stripe
  module Portfolio
    # Represents a user's portfolio with independent tracking
    class Portfolio
      attr_accessor :id, :name, :user_id, :created_at, :updated_at
      attr_reader :assets, :balances, :performance_metrics

      def initialize(name:, user_id:, id: nil, assets: {}, created_at: nil, updated_at: nil)
        @id = id || generate_id
        @name = name
        @user_id = user_id
        @assets = assets  # { "ETH" => 10, "USDC" => 5000 }
        @balances = {}    # { "ETH" => 25000, "USDC" => 5000 }
        @performance_metrics = {}
        @created_at = created_at || Time.now.utc
        @updated_at = updated_at || Time.now.utc

        calculate_balances
        calculate_performance_metrics
      end

      # Add asset to portfolio
      def add_asset(asset, quantity, entry_price = nil)
        @assets[asset] = (@assets[asset] || 0) + quantity
        @updated_at = Time.now.utc
        calculate_balances
        calculate_performance_metrics
      end

      # Remove asset from portfolio
      def remove_asset(asset, quantity)
        return false unless @assets[asset] && @assets[asset] >= quantity

        @assets[asset] -= quantity
        @assets.delete(asset) if @assets[asset] == 0
        @updated_at = Time.now.utc
        calculate_balances
        calculate_performance_metrics
        true
      end

      # Get total portfolio value (using mock prices)
      def total_value
        @balances.values.sum
      end

      # Get asset count
      def asset_count
        @assets.count
      end

      # Get portfolio allocation percentages
      def allocation
        total = total_value
        return {} if total == 0

        @assets.each_with_object({}) do |(asset, quantity), memo|
          value = @balances[asset] || 0
          memo[asset] = ((value / total) * 100).round(2)
        end
      end

      # To JSON for API responses
      def to_h
        {
          id: @id,
          name: @name,
          user_id: @user_id,
          assets: @assets,
          balances: @balances,
          total_value: total_value,
          allocation: allocation,
          performance_metrics: @performance_metrics,
          asset_count: asset_count,
          created_at: @created_at.iso8601,
          updated_at: @updated_at.iso8601,
        }
      end

      private

      def generate_id
        "pf_#{SecureRandom.hex(12)}"
      end

      def calculate_balances
        @balances = {}
        # Mock price data for demonstration
        prices = {
          "ETH" => 2500,
          "USDC" => 1.0,
          "USDT" => 1.0,
          "DAI" => 1.0,
          "WBTC" => 65_000,
          "LINK" => 28,
          "AAVE" => 450,
          "UNI" => 15,
        }

        @assets.each do |asset, quantity|
          price = prices[asset] || rand(10..10_000).to_f
          @balances[asset] = (quantity * price).round(2)
        end
      end

      def calculate_performance_metrics
        @performance_metrics = {
          total_gain_loss: rand(-5000..15_000).round(2),
          gain_loss_percentage: rand(-20..50).round(2),
          day_change: rand(-5..20).round(2),
          day_change_percentage: rand(-5..10).round(2),
          thirty_day_change: rand(-100..500).round(2),
          thirty_day_change_percentage: rand(-20..30).round(2),
        }
      end
    end
  end
end
