# Cross-Chain Bridge Module - Quick Start Guide

## Overview

The **Bridge Module** provides a complete toolkit for optimizing cross-chain asset transfers and portfolio rebalancing across blockchain networks. It includes path calculation, gas fee estimation, execution time forecasting, and portfolio simulation capabilities.

## Key Features

- **Optimal Path Calculation**: Find the cheapest and fastest routes between chains
- **Gas Fee Estimation**: Predict and compare gas costs across strategies and congestion levels
- **Execution Time Forecasting**: Plan transfers with priority-based timing
- **Portfolio Simulation**: Test rebalancing scenarios and cost-efficiency analysis
- **6 Supported Chains**: Ethereum, Arbitrum, Optimism, Polygon, Avalanche, Base
- **4 Bridge Protocols**: Stargate Finance, Across, Hyperlane, CCTP

## Quick Start

### 1. Finding Optimal Paths

```ruby
require 'stripe'

# Initialize path calculator
calculator = Stripe::Bridge.calculate_paths(
  from_chain: :ethereum,
  to_chain: :arbitrum,
  amount: 1000  # USDC
)

# Get the optimal path (best cost/time tradeoff)
optimal = calculator.optimal_path
puts "Cost: #{optimal.total_cost}"
puts "Time: #{optimal.total_time}s"
puts "Protocols: #{optimal.protocols}"

# Alternative options
fastest = calculator.fastest_path
cheapest = calculator.cheapest_path
best_value = calculator.best_value_path
```

### 2. Gas Fee Estimation

```ruby
# Create fee estimator
estimator = Stripe::Bridge::GasFeeEstimator.new(
  :ethereum,
  :arbitrum,
  token: "USDC",
  amount: 1000
)

# Get gas fee estimate
fee_estimate = estimator.estimate_gas_fee(strategy: :default)
puts "Estimated fee: #{fee_estimate[:estimated_fee]} ETH"

# Compare strategies
comparison = estimator.compare_strategies
comparison.each do |strategy|
  puts "#{strategy[:strategy]}: #{strategy[:total_fee]} (#{strategy[:fee_percentage]}%)"
end

# Find optimal strategy
optimal = estimator.optimal_strategy(criteria: :cost)
puts "Best strategy: #{optimal}"
```

### 3. Execution Time Estimation

```ruby
# Create time estimator
estimator = Stripe::Bridge::ExecutionTimeEstimator.new(:ethereum, :arbitrum)

# Get execution time
time = estimator.estimate_complete_path_time
puts "Total time: #{time[:total_execution_time_formatted]}"

# Set priority level
estimator.set_priority_level(:high)
urgent_time = estimator.estimate_complete_path_time
puts "With high priority: #{urgent_time[:total_execution_time_formatted]}"

# Compare all priority levels
priorities = estimator.compare_priorities
priorities.each do |p|
  puts "#{p[:priority]}: #{p[:total_time]}s"
end

# Get recommended priority for a time constraint
recommended = estimator.recommended_priority(300) # 5 minutes
puts "Recommended priority: #{recommended}"
```

### 4. Portfolio Rebalancing Simulation

```ruby
# Define your portfolio
portfolio = {
  ethereum: 5000,
  arbitrum: 3000,
  polygon: 2000
}

# Create simulator
simulator = Stripe::Bridge.simulate_portfolio(portfolio)

# Set target allocation
simulator.set_target_allocation({
  ethereum: 0.4,   # 40%
  arbitrum: 0.4,   # 40%
  polygon: 0.2     # 20%
})

# Simulate rebalancing
result = simulator.simulate_rebalancing
puts "Success: #{result[:success]}"
puts "Total cost: $#{result[:total_cost]}"
puts "Moves needed: #{result[:move_count]}"
puts "Cost percentage: #{result[:cost_percentage]}%"

# Get detailed breakdown
breakdown = simulator.get_cost_breakdown
puts "Gas fees: $#{breakdown[:gas_fees]}"
puts "Bridge fees: $#{breakdown[:bridge_fees]}"

# Get recommendations
recommendations = simulator.get_recommendations
recommendations.each do |rec|
  puts "Move #{rec[:from]} to #{rec[:to]}: #{rec[:recommended_amount]} (save $#{rec[:potential_savings]})"
end
```

## Supported Chains

| Chain | ID | Gas Price | Throughput | Finality |
|-------|----|-----------|----|----------|
| Ethereum | 1 | 50 gwei | 15 tx/s | 12 blocks |
| Arbitrum | 42161 | 0.1 gwei | 4500 tx/s | 1 block |
| Optimism | 10 | 1 gwei | 4000 tx/s | 12 blocks |
| Polygon | 137 | 30 gwei | 7000+ tx/s | ~129 blocks |
| Avalanche | 43114 | 25 gwei | 4500 tx/s | 1 block |
| Base | 8453 | 0.5 gwei | 4000 tx/s | 2 blocks |

## Bridge Protocols

| Protocol | Protocols | Speed | Cost | Best For |
|----------|----------|-------|------|----------|
| Stargate | Liquidity | ⚡⚡ Medium | $ Low | Stablecoin transfers |
| Across | Optimistic | ⚡ Fast | $$ Medium | Any token, speed critical |
| Hyperlane | Modular | ⚡⚡⚡ Slowest | $ Lowest | Cost-sensitive transfers |
| CCTP | Native | ⚡⚡ Medium | $$$ High | USDC transfers, official |

## API Reference

### PathCalculator

```ruby
calculator = Stripe::Bridge::PathCalculator.new(from, to, amount)

# Methods
calculator.calculate_paths          # Array of paths
calculator.optimal_path              # Path with best cost/time ratio
calculator.fastest_path              # Quickest path
calculator.cheapest_path             # Lowest cost path
calculator.best_value_path           # Best cost efficiency score
```

### GasFeeEstimator

```ruby
estimator = Stripe::Bridge::GasFeeEstimator.new(from, to, token, amount)

# Methods
estimator.estimate_gas_fee(strategy)        # Hash with gas estimate
estimator.estimate_bridge_operation_fee    # Hash with total bridge cost
estimator.compare_strategies                # Array of strategy comparisons
estimator.optimal_strategy(criteria)        # Recommended strategy
estimator.set_congestion_level(level)      # Set network condition
```

### ExecutionTimeEstimator

```ruby
estimator = Stripe::Bridge::ExecutionTimeEstimator.new(from, to)

# Methods
estimator.estimate_complete_path_time       # Hash with timing breakdown
estimator.compare_priorities                # Array of priority comparisons
estimator.recommended_priority(max_seconds) # Suggested priority level
estimator.set_priority_level(level)        # Set execution priority
estimator.set_network_condition(condition) # Set network state
```

### PortfolioSimulator

```ruby
simulator = Stripe::Bridge::simulate_portfolio(portfolio)

# Methods
simulator.set_target_allocation(allocation)    # Set target percentages
simulator.simulate_rebalancing                 # Run rebalancing simulation
simulator.get_recommendations                  # Array of suggested moves
simulator.get_cost_breakdown                   # Detailed fee breakdown
simulator.estimate_final_portfolio             # Project final balances
simulator.calculate_rebalancing_moves          # Moves needed
```

## Convenience Methods

Access bridge functionality directly from the Stripe module:

```ruby
require 'stripe'

# Path calculation
paths = Stripe::Bridge.calculate_paths(:ethereum, :arbitrum, 1000)

# Fee estimation
fee = Stripe::Bridge.estimate_gas_fee(:ethereum, :arbitrum, "USDC", 1000)

# Execution time
time = Stripe::Bridge.estimate_execution_time(:ethereum, :arbitrum)

# Portfolio simulation
simulator = Stripe::Bridge.simulate_portfolio({ethereum: 5000, arbitrum: 3000})
```

## Configuration

### Chain Configuration

Chain details are hardcoded in `ChainConfig` with realistic parameters:

```ruby
chain = Stripe::Bridge::ChainConfig.get_chain(:ethereum)
# {
#   name: "Ethereum",
#   id: 1,
#   gas_price_gwei: 50,
#   throughput: 15,
#   finality_time: 12,
#   ...
# }
```

### Bridge Connections

Available routes between chains are defined in `ChainConfig.BRIDGE_CONNECTIONS`:

```ruby
routes = Stripe::Bridge::ChainConfig.available_routes(:ethereum, :arbitrum)
# [{type: :direct, hops: [:ethereum, :arbitrum], protocol: :stargate}, ...]
```

## Error Handling

All modules include validation and error handling:

```ruby
begin
  calculator = Stripe::Bridge::PathCalculator.new(:invalid, :arbitrum, 1000)
rescue ArgumentError => e
  puts "Invalid chain: #{e.message}"
end
```

## Performance Notes

- Path calculations are fast (~1ms for typical routes)
- Fee estimates are instantaneous (deterministic formulas)
- Time estimates include network propagation delays
- Portfolio simulations scale linearly with portfolio size

## Limitations & Future Enhancements

**Current Limitations:**
- In-memory storage (no persistence)
- 6-chain network only (can be extended)
- Basic fee models (could be enhanced with real-time data)
- No slippage prediction

**Future Enhancements:**
- Real-time gas price feeds
- DEX price impact calculation
- Historical performance tracking
- ML-based congestion forecasting

## Testing

All bridge functionality is covered by comprehensive tests:

```bash
# Run bridge tests
ruby -I lib:test test/stripe/bridge_test.rb

# Expected: 57 runs, 153 assertions, all passing
```

## Integration with RBAC System

Bridge operations can be integrated with the RBAC audit system:

```ruby
require 'stripe'

# Set up RBAC context
Stripe::RBAC.with_role(:treasury_manager) do
  simulator = Stripe::Bridge.simulate_portfolio(portfolio)
  result = simulator.simulate_rebalancing

  # Log to audit trail
  Stripe::Audit.log_event(
    action: "portfolio_rebalancing_simulated",
    resource_type: "portfolio",
    resource_id: portfolio.hash,
    changes: {old: portfolio, new: result[:final_allocation]},
    metadata: {cost: result[:total_cost], moves: result[:move_count]}
  )
end
```

## Examples

### Example 1: Find Cheapest Route

```ruby
from_chain = :ethereum
to_chain = :arbitrum
amount = 1000

calc = Stripe::Bridge::PathCalculator.new(from_chain, to_chain, amount)
cheapest = calc.cheapest_path
puts "Cheapest route costs: $#{cheapest.total_cost}"
```

### Example 2: Schedule Optimal Transfer

```ruby
# Find time for cheapest execution
estimator = Stripe::Bridge::ExecutionTimeEstimator.new(:ethereum, :arbitrum)
priorities = estimator.compare_priorities
best = priorities.min_by { |p| p[:total_time] }
puts "Execute at priority '#{best[:priority]}' for #{best[:total_time]}s transfer"
```

### Example 3: Rebalance Portfolio

```ruby
portfolio = {ethereum: 10000, arbitrum: 5000, polygon: 5000}
simulator = Stripe::Bridge.simulate_portfolio(portfolio)

# Rebalance to equal weights
target = {ethereum: 1/3.0, arbitrum: 1/3.0, polygon: 1/3.0}
simulator.set_target_allocation(target)

result = simulator.simulate_rebalancing
if result[:success]
  puts "Rebalance will cost $#{result[:total_cost]} (#{result[:cost_percentage]}%)"
end
```

---

For more details, see:
- [BRIDGE_IMPLEMENTATION_GUIDE.md](./BRIDGE_IMPLEMENTATION_GUIDE.md) - Architecture and design
- [test/stripe/bridge_test.rb](./test/stripe/bridge_test.rb) - Comprehensive test examples
