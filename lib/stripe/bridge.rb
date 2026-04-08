# frozen_string_literal: true

require "stripe/bridge/chain_config"
require "stripe/bridge/path_calculator"
require "stripe/bridge/gas_fee_estimator"
require "stripe/bridge/execution_time_estimator"
require "stripe/bridge/portfolio_simulator"

module Stripe
  module Bridge
    # Calculate optimal bridge path between two chains
    def self.calculate_paths(from_chain, to_chain, amount = 1000)
      calculator = PathCalculator.new(from_chain, to_chain, amount)
      calculator.calculate_paths
    end

    # Get optimal (cheapest) bridge path
    def self.optimal_path(from_chain, to_chain, amount = 1000)
      calculator = PathCalculator.new(from_chain, to_chain, amount)
      calculator.optimal_path
    end

    # Alias for optimal_path for convenience
    def self.find_optimal_path(from_chain, to_chain, amount = 1000)
      optimal_path(from_chain, to_chain, amount)
    end

    # Get fastest bridge path
    def self.fastest_path(from_chain, to_chain, amount = 1000)
      calculator = PathCalculator.new(from_chain, to_chain, amount)
      calculator.fastest_path
    end

    # Get best value bridge path
    def self.best_value_path(from_chain, to_chain, amount = 1000)
      calculator = PathCalculator.new(from_chain, to_chain, amount)
      calculator.best_value_path
    end

    # Estimate gas fees for bridge operation
    def self.estimate_fees(from_chain, to_chain, token = "USDC", amount = 1000, strategy = :default)
      estimator = GasFeeEstimator.new(from_chain, to_chain, token, amount)
      estimator.estimate_bridge_operation_fee(strategy)
    end

    # Get optimal strategy for gas fees
    def self.optimal_strategy(from_chain, to_chain, token = "USDC", amount = 1000, criteria = :cost)
      estimator = GasFeeEstimator.new(from_chain, to_chain, token, amount)
      estimator.optimal_strategy(criteria)
    end

    # Compare different gas strategies
    def self.compare_strategies(from_chain, to_chain, token = "USDC", amount = 1000)
      estimator = GasFeeEstimator.new(from_chain, to_chain, token, amount)
      estimator.compare_strategies
    end

    # Get best execution time
    def self.best_execution_time(from_chain, to_chain, token = "USDC", amount = 1000)
      estimator = GasFeeEstimator.new(from_chain, to_chain, token, amount)
      estimator.best_execution_time
    end

    # Estimate execution time
    def self.estimate_execution_time(from_chain, to_chain)
      estimator = ExecutionTimeEstimator.new(from_chain, to_chain)
      estimator.estimate_complete_path_time
    end

    # Compare execution priorities
    def self.compare_priorities(from_chain, to_chain)
      estimator = ExecutionTimeEstimator.new(from_chain, to_chain)
      estimator.compare_priorities
    end

    # Create portfolio simulator
    def self.simulate_portfolio(portfolio = {})
      PortfolioSimulator.new(portfolio)
    end

    # Get all supported chains
    def self.supported_chains
      ChainConfig.all_chains.map(&:to_s)
    end

    # Get all supported bridge protocols
    def self.supported_protocols
      ChainConfig.all_protocols.map(&:to_s)
    end

    # Check if route is available between chains
    def self.route_available?(from_chain, to_chain)
      !ChainConfig.available_routes(from_chain.to_sym, to_chain.to_sym).empty?
    end

    # Get available routes between chains
    def self.available_routes(from_chain, to_chain)
      ChainConfig.available_routes(from_chain.to_sym, to_chain.to_sym)
    end

    # Get chain configuration
    def self.chain_info(chain)
      ChainConfig.get_chain(chain.to_sym)
    end

    # Get protocol information
    def self.protocol_info(protocol)
      ChainConfig.get_protocol(protocol.to_sym)
    end
  end
end
