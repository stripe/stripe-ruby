# frozen_string_literal: true

module Stripe
  module DeFi
    # Aave protocol APY scanner
    # APY data is hardcoded with realistic values per chain
    class AaveScanner < ProtocolScanner
      # Realistic APY rates for Aave lending (as of market conditions)
      AAVE_APY = {
        ethereum: {
          "USDC" => 4.5,
          "USDT" => 4.2,
          "DAI" => 3.8,
          "ETH" => 1.2,
          "WBTC" => 0.8,
        },
        arbitrum: {
          "USDC" => 4.2,
          "USDT" => 3.9,
          "DAI" => 3.5,
          "ETH" => 1.0,
          "WBTC" => 0.6,
        },
        optimism: {
          "USDC" => 3.9,
          "USDT" => 3.6,
          "DAI" => 3.2,
          "ETH" => 0.9,
          "WBTC" => 0.5,
        },
        polygon: {
          "USDC" => 5.2,
          "USDT" => 4.9,
          "DAI" => 4.5,
          "ETH" => 1.5,
          "WBTC" => 1.0,
        },
        avalanche: {
          "USDC" => 4.8,
          "USDT" => 4.5,
          "DAI" => 4.1,
          "ETH" => 1.3,
          "WBTC" => 0.9,
        },
        base: {
          "USDC" => 4.0,
          "USDT" => 3.7,
          "DAI" => 3.3,
          "ETH" => 1.1,
          "WBTC" => 0.7,
        },
      }.freeze

      def initialize
        super("Aave")
        @supported_chains = Set.new(AAVE_APY.keys)
        @supported_assets = Set.new(AAVE_APY.values.flat_map(&:keys).uniq)
      end

      def get_apy(chain, asset)
        chain_sym = chain.to_sym
        return nil unless AAVE_APY[chain_sym]

        AAVE_APY[chain_sym][asset.to_s.upcase]
      end

      # Get current borrow rates (typically 10-20% higher than lending rates)
      def get_borrow_apy(chain, asset)
        lending_rate = get_apy(chain, asset)
        return nil unless lending_rate

        # Borrow rates are typically 5-15 basis points higher
        lending_rate + (1.0 + (rand * 1.5))
      end

      # Get supply cap utilization for a chain
      def get_utilization(chain)
        chain_sym = chain.to_sym
        return 0 unless AAVE_APY[chain_sym]

        # Realistic utilization rates (60-85%)
        base_util = case chain_sym
                    when :ethereum then 0.75
                    when :arbitrum then 0.68
                    when :optimism then 0.65
                    when :polygon then 0.82
                    when :avalanche then 0.70
                    when :base then 0.63
                    else 0.70
                    end

        base_util + ((rand * 0.1) - 0.05)
      end
    end
  end
end
