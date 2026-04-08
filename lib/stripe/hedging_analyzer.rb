# frozen_string_literal: true

module Stripe
  # FX Hedging Analysis Tool
  # Calculates optimal FX hedging positions and provides what-if analysis
  # for cash allocation adjustments across global bank accounts
  class HedgingAnalyzer
    attr_reader :overview, :exposure_data, :hedging_positions

    def initialize(executive_overview)
      @overview = executive_overview
      @exposure_data = {}
      @hedging_positions = {}
      @what_if_scenarios = []

      # Exchange rate cache (simplified - in production would fetch live rates)
      @exchange_rates = {
        "USD" => 1.0,
        "EUR" => 1.10,
        "GBP" => 1.27,
        "JPY" => 0.0093,
        "CAD" => 0.76,
        "AUD" => 0.68,
        "CHF" => 1.12,
      }
    end

    # Calculate current FX exposure risk
    def analyze_fx_exposure
      @overview.refresh_balances if @overview.instance_variable_get(:@current_totals).empty?
      exposure = @overview.currency_exposure

      analysis = {
        timestamp: Time.now.utc.iso8601,
        summary: {},
        by_currency: {},
        risk_metrics: {},
      }

      # Convert all to USD equivalent for risk assessment
      total_usd = 0
      exposure.each do |currency, data|
        rate = @exchange_rates[currency] || 1.0
        usd_value = data[:amount] * rate
        total_usd += usd_value

        analysis[:by_currency][currency] = {
          amount: data[:amount],
          usd_equivalent: usd_value,
          concentration: data[:percentage],
          accounts: data[:accounts],
        }
      end

      # Calculate volatility risk (simplified)
      analysis[:summary] = {
        total_usd_exposure: total_usd,
        currency_count: exposure.count,
        major_currencies: exposure.count { |_, d| d[:percentage] > 10 },
        concentration_risk: calculate_concentration_risk(exposure.map { |_, d| d[:percentage] }),
      }

      # Calculate hedge ratios
      analysis[:risk_metrics] = {
        max_single_currency_exposure: exposure.values.map { |d| d[:percentage] }.max,
        fx_volatility_estimate: estimate_fx_volatility(exposure),
        recommended_hedge_level: calculate_recommended_hedge(exposure),
      }

      @exposure_data = analysis
      analysis
    end

    # Calculate optimal hedging positions
    def calculate_optimal_hedges(target_concentration: 30)
      analyze_fx_exposure if @exposure_data.empty?

      hedges = {}
      exposure = @overview.currency_exposure

      exposure.each do |currency, data|
        next unless data[:percentage] > target_concentration

        # Calculate hedge position needed
        current_pct = data[:percentage]
        hedge_pct = current_pct - target_concentration

        rate = @exchange_rates[currency] || 1.0
        current_usd = data[:amount] * rate
        hedge_amount = (current_usd * hedge_pct) / 100

        hedges[currency] = {
          current_exposure_pct: current_pct,
          target_exposure_pct: target_concentration,
          hedge_percentage: hedge_pct,
          hedge_amount_usd: hedge_amount,
          hedge_type: recommend_hedge_type(currency),
          forward_rate: rate * 0.98, # Simplified forward rate (2% discount)
          estimated_cost: hedge_amount * 0.001, # 0.1% hedging cost
        }
      end

      @hedging_positions = hedges
      hedges
    end

    # Generate what-if scenario for allocation changes
    def simulate_allocation_change(changes)
      # changes: { currency: new_amount, ... }
      current_exposure = @overview.currency_exposure.dup

      simulation = {
        timestamp: Time.now.utc.iso8601,
        scenario_changes: changes,
        current_state: {},
        projected_state: {},
        impact_analysis: {},
      }

      # Current state
      total_usd = 0
      current_exposure.each do |currency, data|
        rate = @exchange_rates[currency] || 1.0
        usd_value = data[:amount] * rate
        total_usd += usd_value

        simulation[:current_state][currency] = {
          amount: data[:amount],
          percentage: data[:percentage],
          usd_value: usd_value,
        }
      end

      # Projected state after changes
      projected_state = current_exposure.dup
      changes.each do |currency, new_amount|
        projected_state[currency] ||= current_exposure[currency]&.dup || {}
        projected_state[currency][:amount] = new_amount
      end

      # Recalculate percentages
      total_projected_usd = 0
      projected_state.each do |currency, data|
        rate = @exchange_rates[currency] || 1.0
        usd_value = data[:amount] * rate
        total_projected_usd += usd_value
      end

      projected_state.each do |currency, data|
        rate = @exchange_rates[currency] || 1.0
        usd_value = data[:amount] * rate
        projected_pct = total_projected_usd > 0 ? (usd_value / total_projected_usd) * 100 : 0

        simulation[:projected_state][currency] = {
          amount: data[:amount],
          percentage: projected_pct.round(2),
          usd_value: usd_value.round(2),
        }
      end

      # Impact analysis
      simulation[:impact_analysis] = {
        total_usd_change: (total_projected_usd - total_usd).round(2),
        concentration_improvement: analyze_concentration_change(
          simulation[:current_state],
          simulation[:projected_state]
        ),
        risk_reduction: calculate_risk_reduction(
          simulation[:current_state],
          simulation[:projected_state]
        ),
      }

      @what_if_scenarios << simulation
      simulation
    end

    # Get all what-if scenarios for comparison
    def get_scenarios
      @what_if_scenarios
    end

    # Generate hedging recommendation report
    def generate_hedging_recommendation
      analyze_fx_exposure if @exposure_data.empty?
      calculate_optimal_hedges if @hedging_positions.empty?

      {
        generated_at: Time.now.utc.iso8601,
        executive_summary: generate_executive_summary,
        current_exposure: @exposure_data,
        recommended_hedges: @hedging_positions,
        scenarios: @what_if_scenarios,
        implementation_roadmap: generate_implementation_plan,
      }
    end

    private

    def calculate_concentration_risk(percentages)
      return "low" if percentages.max < 25
      return "high" if percentages.max > 50

      "medium"
    end

    def estimate_fx_volatility(exposure)
      # Simplified volatility estimate based on diversification
      if exposure.count <= 1
        "high"
      elsif exposure.count >= 5
        "low"
      else
        "medium"
      end
    end

    def calculate_recommended_hedge(exposure)
      max_concentration = exposure.values.map { |d| d[:percentage] }.max

      if max_concentration > 60
        0.8 # Hedge 80% of excess
      elsif max_concentration > 40
        0.6 # Hedge 60% of excess
      elsif max_concentration > 30
        0.4 # Hedge 40% of excess
      else
        0.0 # No immediate hedge needed
      end
    end

    def recommend_hedge_type(currency)
      case currency
      when "EUR", "GBP"
        "Forward Contract"
      when "JPY"
        "Options Strategy"
      when "AUD", "CAD"
        "Collar Strategy"
      else
        "Forward Contract"
      end
    end

    def analyze_concentration_change(current, projected)
      current_max = current.values.map { |v| v[:percentage] }.max
      projected_max = projected.values.map { |v| v[:percentage] }.max

      improvement = ((current_max - projected_max) / current_max * 100).round(2)
      {
        current_max_concentration: current_max.round(2),
        projected_max_concentration: projected_max.round(2),
        improvement_percentage: improvement,
      }
    end

    def calculate_risk_reduction(current, projected)
      # Calculate Herfindahl index for concentration (simplified)
      current_hhi = current.values.sum { |v| (v[:usd_value] / current.values.sum { |d| d[:usd_value] })**2 }
      projected_hhi = projected.values.sum { |v| (v[:usd_value] / projected.values.sum { |d| d[:usd_value] })**2 }

      reduction = ((current_hhi - projected_hhi) / current_hhi * 100).round(2)
      {
        current_risk_index: current_hhi.round(4),
        projected_risk_index: projected_hhi.round(4),
        risk_reduction_pct: reduction,
      }
    end

    def generate_executive_summary
      {
        total_exposure_usd: @exposure_data[:summary][:total_usd_exposure].round(2),
        primary_risk: @exposure_data[:summary][:concentration_risk],
        recommended_action: @hedging_positions.empty? ? "Monitor" : "Implement hedges",
        estimated_hedge_cost: @hedging_positions.values.sum { |h| h[:estimated_cost] }.round(2),
        implementation_timeline: "1-2 weeks",
      }
    end

    def generate_implementation_plan
      plan = []

      @hedging_positions.each_with_index do |(currency, hedge), idx|
        plan << {
          step: idx + 1,
          currency: currency,
          action: "Execute #{hedge[:hedge_type]} for #{currency}",
          amount_usd: hedge[:hedge_amount_usd].round(2),
          estimated_cost: hedge[:estimated_cost].round(2),
          timeline: "Week #{idx + 1}",
          success_criteria: "Reduce #{currency} exposure to #{hedge[:target_exposure_pct]}%",
        }
      end

      plan
    end
  end
end
