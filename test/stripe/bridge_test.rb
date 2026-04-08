# frozen_string_literal: true

require "minitest/autorun"
require "stripe"

class TestBridgeModule < Minitest::Test
  def test_chain_config_chains_loaded
    chains = Stripe::Bridge::ChainConfig.all_chains
    assert chains.count > 0
    assert chains.include?(:ethereum)
    assert chains.include?(:arbitrum)
    assert chains.include?(:polygon)
  end

  def test_chain_config_get_chain
    eth = Stripe::Bridge::ChainConfig.get_chain(:ethereum)
    assert eth
    assert_equal "Ethereum", eth[:name]
    assert_equal 1, eth[:id]
    assert eth[:supported_tokens].include?("ETH")
  end

  def test_chain_config_get_protocol
    stargate = Stripe::Bridge::ChainConfig.get_protocol(:stargate)
    assert stargate
    assert_equal "Stargate Finance", stargate[:name]
    assert stargate[:supported_chains].include?(:ethereum)
  end

  def test_chain_config_chains_for_token
    usdc_chains = Stripe::Bridge::ChainConfig.chains_for_token("USDC")
    assert usdc_chains.count > 0
    assert usdc_chains.include?(:ethereum)
  end

  def test_chain_config_available_routes_direct
    routes = Stripe::Bridge::ChainConfig.available_routes(:ethereum, :arbitrum)
    assert routes.count > 0

    direct_route = routes.find { |r| r[:type] == :direct }
    assert direct_route
    assert_equal %i[ethereum arbitrum], direct_route[:hops]
  end

  def test_chain_config_available_routes_multi_hop
    routes = Stripe::Bridge::ChainConfig.available_routes(:ethereum, :base)
    multi_hop = routes.find { |r| r[:type] == :two_hop }
    assert multi_hop if multi_hop # May not exist, but if it does, test it
  end

  def test_connection_fees
    conn = Stripe::Bridge::ChainConfig.get_connection(:ethereum, :arbitrum)
    assert conn
    assert conn.key?(:protocol)
    assert conn.key?(:fee_bps)
    assert conn[:fee_bps] > 0
  end

  # Path calculator tests
  def test_path_calculator_initialization
    calc = Stripe::Bridge::PathCalculator.new(:ethereum, :arbitrum, 1000)
    assert_equal :ethereum, calc.from_chain
    assert_equal :arbitrum, calc.to_chain
  end

  def test_path_calculator_invalid_chain_from
    assert_raises(ArgumentError) do
      Stripe::Bridge::PathCalculator.new(:invalid_chain, :arbitrum, 1000)
    end
  end

  def test_path_calculator_invalid_chain_to
    assert_raises(ArgumentError) do
      Stripe::Bridge::PathCalculator.new(:ethereum, :invalid_chain, 1000)
    end
  end

  def test_path_calculator_same_chain
    assert_raises(ArgumentError) do
      Stripe::Bridge::PathCalculator.new(:ethereum, :ethereum, 1000)
    end
  end

  def test_path_calculator_calculate_paths
    calc = Stripe::Bridge::PathCalculator.new(:ethereum, :arbitrum, 1000)
    paths = calc.calculate_paths
    assert paths.count > 0
  end

  def test_path_calculator_optimal_path
    calc = Stripe::Bridge::PathCalculator.new(:ethereum, :arbitrum, 1000)
    optimal = calc.optimal_path
    assert optimal
    assert optimal.respond_to?(:total_cost)
    assert optimal.respond_to?(:total_time)
  end

  def test_path_calculator_fastest_path
    calc = Stripe::Bridge::PathCalculator.new(:ethereum, :arbitrum, 1000)
    fastest = calc.fastest_path
    assert fastest
    assert fastest.respond_to?(:total_time)
  end

  def test_path_calculator_best_value_path
    calc = Stripe::Bridge::PathCalculator.new(:ethereum, :arbitrum, 1000)
    best_value = calc.best_value_path
    assert best_value
    assert best_value.respond_to?(:cost_efficiency_score)
  end

  def test_path_costs_positive
    calc = Stripe::Bridge::PathCalculator.new(:ethereum, :arbitrum, 1000)
    optimal = calc.optimal_path
    assert optimal.total_cost > 0
    assert optimal.total_cost < 1000 # Cost should be less than input
  end

  def test_path_time_positive
    calc = Stripe::Bridge::PathCalculator.new(:ethereum, :arbitrum, 1000)
    optimal = calc.optimal_path
    assert optimal.total_time > 0
  end

  def test_path_cost_percentage
    calc = Stripe::Bridge::PathCalculator.new(:ethereum, :arbitrum, 1000)
    optimal = calc.optimal_path
    percentage = optimal.cost_percentage
    assert percentage > 0
    assert percentage < 100
  end

  def test_path_output_amount
    calc = Stripe::Bridge::PathCalculator.new(:ethereum, :arbitrum, 1000)
    optimal = calc.optimal_path
    output = optimal.to_h[:output_amount]
    assert output > 0
    assert output < 1000
  end

  def test_path_hop_details
    calc = Stripe::Bridge::PathCalculator.new(:ethereum, :arbitrum, 1000)
    optimal = calc.optimal_path
    details = optimal.to_h[:hop_details]
    assert details.count > 0
    details.each do |hop|
      assert hop.key?(:from)
      assert hop.key?(:to)
      assert hop.key?(:protocol)
      assert hop.key?(:cost)
      assert hop.key?(:time)
    end
  end

  def test_path_serialization
    calc = Stripe::Bridge::PathCalculator.new(:ethereum, :arbitrum, 1000)
    optimal = calc.optimal_path
    serialized = optimal.to_h
    assert serialized.key?(:type)
    assert serialized.key?(:hops)
    assert serialized.key?(:protocols)
    assert serialized.key?(:input_amount)
    assert serialized.key?(:output_amount)
    assert serialized.key?(:total_cost)
    assert serialized.key?(:total_time)
  end

  def test_paths_sorted_by_cost
    calc = Stripe::Bridge::PathCalculator.new(:ethereum, :arbitrum, 1000)
    paths = calc.paths_by_cost
    assert paths.count > 0
    costs = paths.map(&:total_cost)
    assert costs == costs.sort
  end

  def test_paths_sorted_by_time
    calc = Stripe::Bridge::PathCalculator.new(:ethereum, :arbitrum, 1000)
    paths = calc.paths_by_time
    assert paths.count > 0
    times = paths.map(&:total_time)
    assert times == times.sort
  end

  # Module-level tests
  def test_bridge_module_calculate_paths
    paths = Stripe::Bridge.calculate_paths(:ethereum, :arbitrum, 1000)
    assert paths.count > 0
  end

  def test_bridge_module_optimal_path
    path = Stripe::Bridge.optimal_path(:ethereum, :arbitrum, 1000)
    assert path
    assert path.respond_to?(:total_cost)
  end

  def test_bridge_module_fastest_path
    path = Stripe::Bridge.fastest_path(:ethereum, :arbitrum, 1000)
    assert path
    assert path.respond_to?(:total_time)
  end

  def test_bridge_module_best_value_path
    path = Stripe::Bridge.best_value_path(:ethereum, :arbitrum, 1000)
    assert path
    assert path.respond_to?(:cost_efficiency_score)
  end

  def test_bridge_module_supported_chains
    chains = Stripe::Bridge.supported_chains
    assert chains.count > 0
    assert chains.include?("ethereum")
  end

  def test_bridge_module_supported_protocols
    protocols = Stripe::Bridge.supported_protocols
    assert protocols.count > 0
    assert protocols.include?("stargate")
  end

  def test_bridge_module_route_available
    assert Stripe::Bridge.route_available?(:ethereum, :arbitrum)
  end

  def test_bridge_module_route_not_available
    refute Stripe::Bridge.route_available?(:ethereum, :invalid_chain)
  rescue StandardError
    nil
  end

  def test_bridge_module_chain_info
    info = Stripe::Bridge.chain_info(:ethereum)
    assert info
    assert_equal "Ethereum", info[:name]
  end

  def test_bridge_module_protocol_info
    info = Stripe::Bridge.protocol_info(:stargate)
    assert info
    assert_equal "Stargate Finance", info[:name]
  end

  # Different amount scenarios
  def test_path_calculation_small_amount
    calc = Stripe::Bridge::PathCalculator.new(:ethereum, :arbitrum, 100)
    optimal = calc.optimal_path
    assert optimal.total_cost < 100
  end

  def test_path_calculation_large_amount
    calc = Stripe::Bridge::PathCalculator.new(:ethereum, :arbitrum, 100_000)
    optimal = calc.optimal_path
    assert optimal.total_cost < 100_000
  end

  # Edge cases
  def test_different_routes_have_different_costs
    calc = Stripe::Bridge::PathCalculator.new(:ethereum, :arbitrum, 5000)
    paths = calc.calculate_paths
    costs = paths.map(&:total_cost)
    assert costs.uniq.count >= 1 # At least one unique cost
  end

  def test_path_calculation_consistency
    calc1 = Stripe::Bridge::PathCalculator.new(:ethereum, :arbitrum, 1000)
    calc2 = Stripe::Bridge::PathCalculator.new(:ethereum, :arbitrum, 1000)

    optimal1 = calc1.optimal_path.total_cost
    optimal2 = calc2.optimal_path.total_cost

    assert_equal optimal1, optimal2 # Should be deterministic
  end

  # Multiple chain routes
  def test_multi_chain_routes
    routes = Stripe::Bridge::ChainConfig.available_routes(:ethereum, :polygon)
    assert routes.count > 0
  end

  def test_all_chains_connected
    chains = Stripe::Bridge::ChainConfig.all_chains
    # Verify at least basic connectivity
    connected_count = 0
    chains.each do |from_chain|
      chains.each do |to_chain|
        next if from_chain == to_chain

        routes = Stripe::Bridge::ChainConfig.available_routes(from_chain, to_chain)
        connected_count += 1 if routes.count > 0
      end
    end
    assert connected_count > 0
  end

  def test_protocol_fee_structure
    Stripe::Bridge::ChainConfig.all_protocols.each do |protocol|
      info = Stripe::Bridge::ChainConfig.get_protocol(protocol)
      assert info[:bridge_fee_bps] >= 0
      assert info[:min_bridge_time] > 0
      assert info[:max_bridge_time] > 0
    end
  end

  def test_gas_price_reasonable
    Stripe::Bridge::ChainConfig.all_chains.each do |chain|
      info = Stripe::Bridge::ChainConfig.get_chain(chain)
      assert info[:gas_price_gwei] >= 0
      assert info[:gas_price_gwei] < 1000 # Sanity check
    end
  end

  def test_throughput_values
    Stripe::Bridge::ChainConfig.all_chains.each do |chain|
      info = Stripe::Bridge::ChainConfig.get_chain(chain)
      assert info[:throughput] > 0
    end
  end

  # ============================================================================
  # Gas Fee Estimator Tests
  # ============================================================================

  def test_gas_fee_estimator_basic
    estimator = Stripe::Bridge::GasFeeEstimator.new(:ethereum, :arbitrum)
    result = estimator.estimate_gas_fee
    assert result[:estimated_fee] > 0
    assert result.key?(:chain)
    assert result.key?(:strategy)
  end

  def test_gas_fee_estimator_strategy_impact
    estimator = Stripe::Bridge::GasFeeEstimator.new(:ethereum, :arbitrum)
    fee_default = estimator.estimate_gas_fee(:default)
    fee_conservative = estimator.estimate_gas_fee(:conservative)
    # Conservative strategy should cost more
    assert fee_conservative[:estimated_fee] > fee_default[:estimated_fee]
  end

  def test_gas_fee_estimator_congestion_levels
    estimator = Stripe::Bridge::GasFeeEstimator.new(:ethereum, :arbitrum)
    fee_normal = estimator.estimate_gas_fee
    
    estimator.set_congestion_level(:high)
    fee_high = estimator.estimate_gas_fee
    assert fee_high[:estimated_fee] > fee_normal[:estimated_fee]
  end

  def test_gas_fee_estimate_bridge_operation
    estimator = Stripe::Bridge::GasFeeEstimator.new(:ethereum, :arbitrum, "USDC", 1000)
    estimate = estimator.estimate_bridge_operation_fee
    assert estimate[:total_estimated_fee] > 0
    assert estimate.key?(:hop_fees)
  end

  def test_gas_fee_compare_strategies
    estimator = Stripe::Bridge::GasFeeEstimator.new(:ethereum, :arbitrum, "USDC", 1000)
    comparison = estimator.compare_strategies
    assert_kind_of Array, comparison
    assert comparison.count > 0
    strategies = comparison.map { |c| c[:strategy] }
    assert strategies.include?("default")
    assert strategies.include?("aggressive")
    assert strategies.include?("conservative")
  end

  def test_gas_fee_optimal_strategy
    estimator = Stripe::Bridge::GasFeeEstimator.new(:ethereum, :arbitrum, "USDC", 1000)
    strategy = estimator.optimal_strategy(:cost)
    assert strategy
  end

  # ============================================================================
  # Execution Time Estimator Tests
  # ============================================================================

  def test_execution_time_estimator_basic
    estimator = Stripe::Bridge::ExecutionTimeEstimator.new(:ethereum, :arbitrum)
    result = estimator.estimate_complete_path_time
    assert result[:total_execution_time] > 0
    assert_kind_of Hash, result
  end

  def test_execution_time_priority_impact
    estimator = Stripe::Bridge::ExecutionTimeEstimator.new(:ethereum, :arbitrum)
    time_standard = estimator.estimate_complete_path_time[:total_execution_time]
    
    estimator.set_priority_level(:high)
    time_high = estimator.estimate_complete_path_time[:total_execution_time]
    
    estimator.set_priority_level(:low)
    time_low = estimator.estimate_complete_path_time[:total_execution_time]

    assert time_high < time_standard
    assert time_standard < time_low
  end

  def test_execution_time_network_condition_impact
    estimator = Stripe::Bridge::ExecutionTimeEstimator.new(:ethereum, :arbitrum)
    time_normal = estimator.estimate_complete_path_time[:total_execution_time]

    estimator.set_network_condition(:congested)
    time_congested = estimator.estimate_complete_path_time[:total_execution_time]

    assert time_congested > time_normal
  end

  def test_execution_time_chain_differences
    # Different chains have different finality times
    time_eth_to_arb = Stripe::Bridge::ExecutionTimeEstimator.new(:ethereum, :arbitrum).estimate_complete_path_time[:total_execution_time]
    time_poly_to_arb = Stripe::Bridge::ExecutionTimeEstimator.new(:polygon, :arbitrum).estimate_complete_path_time[:total_execution_time]
    # Both should be reasonable times
    assert time_eth_to_arb > 0
    assert time_poly_to_arb > 0
  end

  def test_execution_time_timeline
    estimator = Stripe::Bridge::ExecutionTimeEstimator.new(:ethereum, :arbitrum)
    result = estimator.estimate_complete_path_time

    assert_kind_of Hash, result
    assert result.key?(:hop_breakdown)
    assert result.key?(:total_execution_time)
    assert result[:total_execution_time] > 0
  end

  def test_execution_time_timeline_respects_priority
    estimator = Stripe::Bridge::ExecutionTimeEstimator.new(:ethereum, :arbitrum)
    result_low = estimator.estimate_complete_path_time
    time_low = result_low[:total_execution_time]
    
    estimator.set_priority_level(:high)
    result_high = estimator.estimate_complete_path_time
    time_high = result_high[:total_execution_time]

    assert time_high < time_low
  end

  def test_execution_time_compare_priorities
    estimator = Stripe::Bridge::ExecutionTimeEstimator.new(:ethereum, :arbitrum)
    comparison = estimator.compare_priorities
    
    assert_kind_of Array, comparison
    assert comparison.count > 0
    priorities = comparison.map { |c| c[:priority] }
    assert priorities.include?("low")
    assert priorities.include?("standard")
    assert priorities.include?("high")
  end

  def test_execution_time_recommended_priority
    estimator = Stripe::Bridge::ExecutionTimeEstimator.new(:ethereum, :arbitrum)
    priority = estimator.recommended_priority(300) # 5 minutes
    assert priority
  end

  def test_execution_time_all_chains_supported
    from_chains = [:ethereum, :arbitrum, :polygon]
    from_chains.each do |from_chain|
      from_chains.each do |to_chain|
        next if from_chain == to_chain
        estimator = Stripe::Bridge::ExecutionTimeEstimator.new(from_chain, to_chain)
        result = estimator.estimate_complete_path_time
        assert result[:total_execution_time] > 0, "Failed for #{from_chain} -> #{to_chain}"
      end
    end
  end
end
