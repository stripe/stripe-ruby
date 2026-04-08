# frozen_string_literal: true

module Stripe
  module Portfolio
    module Insights
      # Calculates portfolio diversification and risk metrics
      class Analyzer
        SECTOR_MAPPING = {
          "ETH" => "layer1",
          "WBTC" => "layer1",
          "USDC" => "stablecoin",
          "USDT" => "stablecoin",
          "DAI" => "stablecoin",
          "LINK" => "oracle",
          "AAVE" => "defi",
          "UNI" => "defi",
        }.freeze

        RISK_LEVELS = {
          "layer1" => 0.7,
          "stablecoin" => 0.1,
          "oracle" => 0.5,
          "defi" => 0.8,
        }.freeze

        def initialize(portfolio)
          @portfolio = portfolio
        end

        # Calculate Herfindahl-Hirschman Index for diversification (0-10000)
        def diversification_score
          return 100.0 if @portfolio.assets.empty?

          allocation = @portfolio.allocation
          hhi = allocation.values.map { |v| v**2 }.sum

          # Scale HHI to 0-100 (lower is more diversified)
          diversification = 100.0 - (hhi / 100.0)
          [diversification, 0.0].max
        end

        # Calculate sector exposure breakdown
        def sector_exposure
          exposure = {}

          @portfolio.assets.each do |asset, quantity|
            sector = SECTOR_MAPPING[asset] || "other"
            value = @portfolio.balances[asset] || 0

            exposure[sector] ||= { value: 0, percentage: 0, assets: [] }
            exposure[sector][:value] += value
            exposure[sector][:assets] << { asset: asset, quantity: quantity, value: value }
          end

          total_value = @portfolio.total_value
          exposure.each do |_sector, data|
            data[:percentage] = total_value > 0 ? ((data[:value] / total_value) * 100).round(2) : 0
          end

          exposure
        end

        # Calculate risk score (0-100, higher = more risky)
        def risk_score
          exposure = sector_exposure
          weighted_risk = 0.0
          total_allocation = 0.0

          exposure.each do |sector, data|
            risk_level = RISK_LEVELS[sector] || 0.5
            weighted_risk += (data[:percentage] * risk_level)
            total_allocation += data[:percentage]
          end

          return 0.0 if total_allocation == 0

          (weighted_risk / total_allocation * 100).round(2)
        end

        # Generate AI-like summary (demonstrates pattern matching)
        def generate_summary
          diversification = diversification_score
          risk = risk_score
          exposure = sector_exposure
          metrics = @portfolio.performance_metrics

          {
            overview: build_overview(diversification, risk),
            sector_analysis: build_sector_analysis(exposure),
            performance_insight: build_performance_insight(metrics),
            recommendations: build_recommendations(diversification, risk, exposure),
            risk_profile: interpret_risk_profile(risk),
          }
        end

        private

        def build_overview(diversification, risk)
          if diversification > 70
            "Your portfolio is well-diversified with exposure across multiple asset classes."
          elsif diversification > 40
            "Your portfolio has moderate diversification with some concentration in key assets."
          else
            "Your portfolio is concentrated in a few assets. Consider adding more variety."
          end
        end

        def build_sector_analysis(exposure)
          largest_sector = exposure.max_by { |_, v| v[:value] }
          return "No assets in portfolio" unless largest_sector

          sector, data = largest_sector
          "#{sector.capitalize} is your largest exposure at #{data[:percentage]}% of portfolio value."
        end

        def build_performance_insight(metrics)
          gain_loss = metrics[:gain_loss_percentage]
          if gain_loss > 10
            "Strong positive momentum with #{gain_loss}% gains. Consider rebalancing to lock in profits."
          elsif gain_loss < -10
            "Portfolio down #{gain_loss}%. Evaluate your positions for rebalancing opportunities."
          else
            "Portfolio relatively stable with #{gain_loss}% overall change."
          end
        end

        def build_recommendations(diversification, risk, exposure)
          recommendations = []

          if diversification < 40
            recommendations << "Increase diversification by adding assets from underrepresented sectors"
          end

          if risk > 70
            recommendations << "Consider adding stablecoin positions to reduce portfolio volatility"
          elsif risk < 20
            recommendations << "Your portfolio is very conservative; consider higher-risk assets for growth"
          end

          stablecoin_pct = exposure.dig("stablecoin", :percentage) || 0
          recommendations << "High stablecoin allocation may limit upside potential" if stablecoin_pct > 70

          recommendations
        end

        def interpret_risk_profile(risk)
          case risk
          when 0..25
            "Conservative - Low risk exposure suitable for stability-focused investors"
          when 26..50
            "Moderate - Balanced risk profile with growth and stability"
          when 51..75
            "Aggressive - Higher risk tolerance with growth-focused allocation"
          else
            "Very Aggressive - High volatility portfolio for risk-tolerant investors"
          end
        end
      end
    end
  end
end
