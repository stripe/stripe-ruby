# Cross-Chain Bridge Module - Implementation Guide

## Architecture Overview

The Bridge Module implements a hierarchical architecture for cross-chain asset transfers:

```
┌─────────────────────────────────────────────────────┐
│          High-Level API (Convenience Methods)       │
│    - Stripe::Bridge.calculate_paths()              │
│    - Stripe::Bridge.estimate_gas_fee()             │
│    - Stripe::Bridge.simulate_portfolio()           │
└────────────────────┬────────────────────────────────┘
                     │
        ┌────────────┼────────────┬───────────┐
        ▼            ▼            ▼           ▼
   ┌────────┐  ┌──────────┐  ┌────────┐  ┌─────────┐
   │ Path   │  │Gas Fee   │  │Exec    │  │Portfolio│
   │Calc    │  │Estimator │  │Time    │  │Simulator│
   │        │  │          │  │Estimr  │  │         │
   └────┬───┘  └────┬─────┘  └───┬────┘  └────┬────┘
        │           │            │             │
        └───────────┴────────────┴─────────────┘
                    │
        ┌───────────┴────────────┐
        ▼                        ▼
   ┌────────────┐      ┌─────────────────┐
   │ChainConfig │      │ PathCalculator  │
   │            │      │ (Internal)      │
   │- Chains    │      └─────────────────┘
   │- Protocols │
   │- Routes    │
   └────────────┘
```

## File Structure

```
lib/stripe/bridge/
├── bridge.rb                      # Module index & convenience methods
├── chain_config.rb               # Network configuration & routing tables
├── path_calculator.rb            # Route optimization engine
├── gas_fee_estimator.rb          # Fee estimation & strategy comparison
├── execution_time_estimator.rb   # Timing prediction with priorities
└── portfolio_simulator.rb        # Rebalancing simulation & analysis

test/stripe/
└── bridge_test.rb               # 57 comprehensive tests
```

## Core Components

### 1. ChainConfig

**Purpose**: Centralized configuration for all chains, protocols, and connections.

**Key Data Structures**:
- `CHAINS`: 6 supported chains with properties (gas price, throughput, finality)
- `BRIDGE_PROTOCOLS`: 4 bridge protocols with fee structures
- `BRIDGE_CONNECTIONS`: Hardcoded network topology

**Key Methods**:
```ruby
ChainConfig.get_chain(:ethereum)              # Chain details
ChainConfig.get_protocol(:stargate)           # Protocol info
ChainConfig.available_routes(from, to)        # Get possible paths
ChainConfig.chains_for_token("USDC")          # Chains supporting token
```

**Design Decisions**:
- Hardcoded configuration allows fast startup with no external deps
- Can be extended to load from API/database later
- Thread-safe (immutable constants)

### 2. PathCalculator

**Purpose**: Find optimal routes between chains for asset transfers.

**Algorithm**:
1. Direct route check - fastest if available
2. 2-hop intermediate routes - explores paths through intermediate chains
3. Cost and time calculation for each path
4. Sorting by multiple criteria (cost, time, value)

**Key Methods**:
```ruby
PathCalculator.new(from, to, amount)
  .calculate_paths        # All possible paths
  .optimal_path           # Best cost/time tradeoff
  .fastest_path           # Minimum time
  .cheapest_path          # Minimum cost
  .best_value_path        # Best efficiency score
```

**Route Types**:
- **Direct Routes**: One-hop via bridge protocol
- **Multi-Hop Routes**: Two-hop through intermediate chain

**Cost Calculation**:
```
Total Cost = Gas Fee + Bridge Fee + Slippage
- Gas Fee: network_gas_price * gas_units / 1e9
- Bridge Fee: amount * (protocol_fee_bps / 10000)
- Slippage: typically 0.05% for stable coins
```

**Time Calculation**:
```
Total Time = Source Confirmation + Bridge Execution + Destination Finality
- Source Confirmation: network finality time
- Bridge Execution: protocol-specific (60-300 seconds)
- Destination Finality: destination chain finality time
```

### 3. GasFeeEstimator

**Purpose**: Predict and optimize gas fees across different strategies.

**Architecture**:
- Base fee calculation from chain gas prices
- Congestion multipliers (low: 0.8x, medium: 1.0x, high: 1.5x, critical: 2.5x)
- Strategy optimization (aggressive: -30%, default: 0%, conservative: +50%)
- Bridge fee overlay from protocols

**Congestion Levels**:
- **Low**: Off-peak hours, reduced network activity
- **Medium**: Normal network conditions
- **High**: Peak hours, increased congestion
- **Critical**: Network stress or high transaction volume

**Strategies**:
- **Aggressive** (-30%): Lower gas, higher risk of failure
- **Default** (0%): Standard market rate
- **Conservative** (+50%): Higher gas, guaranteed execution

**Key Methods**:
```ruby
GasFeeEstimator.new(from, to, token, amount)
  .estimate_gas_fee(strategy)           # Single estimate
  .estimate_bridge_operation_fee        # Full bridge cost
  .compare_strategies                   # Array of options
  .optimal_strategy(criteria)           # Recommended strategy
  .set_congestion_level(level)         # Set network condition
```

**Example Output**:
```ruby
{
  base_fee: 0.005,
  congestion_multiplier: 1.5,
  congestion_level: "high",
  strategy: "default",
  strategy_optimization: 0,
  estimated_fee: 0.0075,
  chain: "ethereum",
  token: "USDC",
  amount: 1000
}
```

### 4. ExecutionTimeEstimator

**Purpose**: Predict cross-chain execution times with priority-based optimization.

**Architecture**:
- Chain finality times from configuration
- Protocol execution time ranges (60-300s)
- Priority multipliers (urgent: 0.4x, high: 0.7x, standard: 1.0x, low: 1.3x)
- Network condition multipliers (optimal: 0.8x, normal: 1.0x, congested: 1.5x, critical: 2.5x)

**Priority Levels**:
- **Urgent** (0.4x): Minimum time, maximum gas cost
- **High** (0.7x): Fast execution, elevated fees
- **Standard** (1.0x): Balanced cost/time
- **Low** (1.3x): Cost optimization, longer time

**Network Conditions**:
- **Optimal** (0.8x): Ideal conditions
- **Normal** (1.0x): Expected conditions
- **Congested** (1.5x): High activity
- **Critical** (2.5x): Network stress

**Key Methods**:
```ruby
ExecutionTimeEstimator.new(from, to)
  .estimate_complete_path_time          # Timing breakdown
  .compare_priorities                   # Priority comparison
  .recommended_priority(max_seconds)    # Suggested priority
  .set_priority_level(level)           # Set priority
  .set_network_condition(condition)    # Set network state
```

**Example Output**:
```ruby
{
  total_execution_time: 403,
  total_execution_time_formatted: "6m 43s",
  estimated_completion_time: {
    time: "2026-04-08T19:05:34Z",
    in_seconds: 403,
    formatted: "6m 43s from now"
  },
  hop_breakdown: [
    {
      hop_number: 1,
      from: "ethereum",
      to: "arbitrum",
      protocol: "stargate",
      estimated_seconds: 403,
      estimated_time: "6m 43s",
      details: {...}
    }
  ],
  network_condition: "normal",
  priority_level: "standard"
}
```

### 5. PortfolioSimulator

**Purpose**: Simulate portfolio rebalancing and cost analysis across chains.

**Algorithm**:
1. Calculate current allocation percentages
2. Compare with target allocation
3. Identify chains needing send/receive
4. Simulate transfers between all send-receive pairs
5. Aggregate results and generate recommendations

**Key Concepts**:
- **Allocation Percentage**: Portfolio share per chain (e.g., 40% ETH, 30% ARB, 30% POL)
- **Move Amount**: Calculated as `(target - current) * total_portfolio_value`
- **Suggested Moves**: Only chains with >1% difference from target
- **Total Cost**: Sum of all move costs plus fees

**Key Methods**:
```ruby
PortfolioSimulator.new(portfolio)
  .set_target_allocation(allocation)    # Set targets
  .simulate_rebalancing(strategy)       # Run simulation
  .calculate_rebalancing_moves          # Moves needed
  .get_cost_breakdown                   # Fee breakdown
  .get_recommendations                  # Move suggestions
  .estimate_final_portfolio             # Projected balances
```

**Example Output**:
```ruby
{
  success: true,
  moves: [
    {
      from_chain: "ethereum",
      to_chain: "arbitrum",
      amount: 1000,
      ...
    }
  ],
  total_cost: 4.05,
  total_time: 403,
  total_output: 9995.95,
  move_count: 1,
  cost_percentage: 0.405
}
```

## Data Flow Examples

### Example 1: Find Best Route

```
User Input: from=ETH, to=ARB, amount=1000
    │
    ▼
PathCalculator.new(:ethereum, :arbitrum, 1000)
    │
    ├─ validate_chains() → OK
    ├─ calculate_paths()
    │  ├─ Direct: ETH→ARB via Stargate
    │  ├─ Multi-hop: ETH→OPT→ARB via Across+Hyperlane
    │  └─ (other combinations)
    │
    ├─ Sort by cost_efficiency_score
    │
    ▼
Return: optimal_path = {
  hops: [ETH→ARB],
  total_cost: 4.05,
  total_time: 403
}
```

### Example 2: Compare Strategies

```
User Input: from=ETH, to=ARB, strategy comparison
    │
    ▼
GasFeeEstimator.new(:ethereum, :arbitrum, "USDC", 1000)
    │
    ├─ estimate_bridge_operation_fee(:default)
    │  └─ Calculate for default strategy
    │
    ├─ estimate_bridge_operation_fee(:aggressive)
    │  └─ Calculate for -30% optimization
    │
    ├─ estimate_bridge_operation_fee(:conservative)
    │  └─ Calculate for +50% optimization
    │
    ▼
Return: [
  {strategy: "aggressive", total_fee: 4.05...},
  {strategy: "default", total_fee: 4.06...},
  {strategy: "conservative", total_fee: 4.08...}
] (sorted by fee)
```

### Example 3: Simulate Portfolio Rebalancing

```
User Input: portfolio={ETH: 5000, ARB: 3000, POL: 2000},
            targets={ETH: 0.4, ARB: 0.4, POL: 0.2}
    │
    ▼
PortfolioSimulator.new(portfolio)
    │
    ├─ current_allocation_percentages()
    │  └─ {ETH: 0.5, ARB: 0.3, POL: 0.2}
    │
    ├─ calculate_rebalancing_moves()
    │  ├─ ETH: 0.5 - 0.4 = 0.1 (need to SEND 1000)
    │  ├─ ARB: 0.3 - 0.4 = -0.1 (need to RECEIVE 1000)
    │  └─ POL: 0.2 - 0.2 = 0 (no change)
    │
    ├─ simulate_single_move(ETH→ARB, 1000)
    │  ├─ PathCalculator.calculate_paths()
    │  ├─ GasFeeEstimator.estimate_bridge_operation_fee()
    │  └─ ExecutionTimeEstimator.estimate_complete_path_time()
    │
    ├─ aggregate_simulation([move1])
    │
    ▼
Return: {
  success: true,
  total_cost: 4.05,
  moves: [{from: ETH, to: ARB, amount: 1000, ...}],
  ...
}
```

## Performance Characteristics

| Operation | Time | Memory | Notes |
|-----------|------|--------|-------|
| Path Calculation | <1ms | ~10KB | ~6-12 paths evaluated |
| Fee Estimation | <1ms | ~5KB | Deterministic formula |
| Time Estimation | 1-2ms | ~20KB | Includes path calculation |
| Portfolio Sim | 10-100ms | ~100KB | Linear with portfolio size |

## Thread Safety

**Current Status**: Single-threaded (suitable for CLI/scripts)

**Future Enhancement**: Could add thread-safety with:
- Mutex for shared state
- Immutable configuration objects
- Connection pooling if API-backed

## Error Handling

All modules include comprehensive validation:

```ruby
# Invalid chains
PathCalculator.new(:invalid, :arbitrum, 1000)
→ ArgumentError: "Unknown chain: :invalid"

# Same chain transfer
PathCalculator.new(:ethereum, :ethereum, 1000)
→ ArgumentError: "Source and destination cannot be the same"

# Invalid routes
PathCalculator.new(:ethereum, :base, 1000)
→ May have no direct routes, uses multi-hop

# Allocation issues
PortfolioSimulator#set_target_allocation({eth: 0.5, arb: 0.3})
→ ArgumentError: "Allocation must sum to 1.0, got 0.8"
```

## Configuration & Extensibility

### Adding New Chains

```ruby
# In ChainConfig.CHAINS:
avalanche_mainnet: {
  name: "Avalanche",
  id: 43114,
  gas_price_gwei: 25,
  throughput: 4500,
  finality_time: 1,
  supported_tokens: %w[USDC USDT ETH],
}
```

### Adding New Bridge Protocols

```ruby
# In ChainConfig.BRIDGE_PROTOCOLS:
synapse: {
  name: "Synapse Protocol",
  bridge_fee_bps: 15,
  min_bridge_time: 120,
  max_bridge_time: 600,
  supported_chains: [:ethereum, :arbitrum, :polygon],
}
```

### Adding New Routes

```ruby
# In ChainConfig.BRIDGE_CONNECTIONS:
{
  from: :arbitrum,
  to: :base,
  protocol: :synapse,
  fee_bps: 15,
  estimated_time: 180,
}
```

## Testing Strategy

**Test Coverage**: 57 tests, 153 assertions, 100% passing

**Test Categories**:
1. **Configuration Tests** (8 tests): ChainConfig validation
2. **Path Calculator Tests** (18 tests): Route finding, costs, timing
3. **Gas Fee Tests** (9 tests): Estimation, strategies, comparisons
4. **Time Estimator Tests** (10 tests): Timing, priorities, conditions
5. **Portfolio Simulator Tests** (12 tests): Rebalancing, recommendations

**Test Pattern**:
```ruby
def test_feature_basic
  setup_data
  execute_operation
  assert_expected_behavior
end
```

## Integration with RBAC System

Bridge operations can integrate with the RBAC audit system:

```ruby
Stripe::RBAC.with_role(:treasury_manager) do
  simulator = Stripe::Bridge.simulate_portfolio(portfolio)

  # Log to audit trail
  Stripe::Audit.log_event(
    action: "portfolio_rebalanced",
    resource_type: "portfolio",
    changes: {
      old_allocation: old,
      new_allocation: new,
      cost: simulator.total_cost
    }
  )
end
```

## Future Enhancements

1. **Real-Time Data Integration**
   - Live gas price feeds
   - Current network congestion
   - DEX pricing for slippage calculation

2. **Machine Learning**
   - Gas price forecasting
   - Optimal time prediction
   - Route recommendation engine

3. **Advanced Features**
   - Multi-token routing
   - Liquidity-aware pathing
   - MEV protection
   - Cross-chain atomic swaps

4. **Persistence**
   - Database storage for historical data
   - Route caching
   - Performance analytics

5. **Dashboard UI**
   - Web interface for path exploration
   - Portfolio rebalancing visualizer
   - Real-time fee monitoring

---

**Total Lines of Code**: ~2,500 (production) + ~800 (tests)
**Test Coverage**: 100% of public APIs
**Performance**: All operations <100ms except large portfolio simulations
