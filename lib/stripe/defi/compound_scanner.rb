# frozen_string_literal: true

module Stripe
  module DeFi
    # Compound protocol APY scanner
    # APY data is hardcoded with realistic values per chain
    class CompoundScanner < ProtocolScanner
      # Realistic APY rates for Compound lending
      COMPOUND_APY = {
        ethereum: {
          "USDC" => 3.8,
          "USDT" => 3.5,
          "DAI" => 3.1,
          "ETH" => 0.9,
          "WBTC" => 0.5,
        },
        arbitrum: {
          "USDC" => 3.5,
          "USDT" => 3.2,
          "DAI" => 2.8,
          "ETH" => 0.7,
          "WBTC" => 0.3,
        },
        optimism: {
          "USDC" => 3.2,
          "USDT" => 2.9,
          "DAI" => 2.5,
          "ETH" => 0.6,
          "WBTC" => 0.2,
        },
        polygon: {
          "USDC" => 4.5,
          "USDT" => 4.2,
          "DAI" => 3.8,
          "ETH" => 1.2,
          "WBTC" => 0.8,
        },
        avalanche: {
          "USDC" => 4.1,
          "USDT" => 3.8,
          "DAI" => 3.4,
          "ETH" => 1.0,
          "WBTC" => 0.6,
        },
        base: {
          "USDC" => 3.3,
          "USDT" => 3.0,
          "DAI" => 2.6,
          "ETH" => 0.8,
          "WBTC" => 0.4,
        },
      }.freeze

      def initialize
        super("Compound")
        @supported_chains = Set.new(COMPOUND_APY.keys)
        @supported_assets = Set.new(COMPOUND_APY.values.flat_map(&:keys).uniq)
      end

      def get_apy(chain, asset)
        chain_sym = chain.to_sym
        return nil unless COMPOUND_APY[chain_sym]

        COMPOUND_APY[chain_sym][asset.to_s.upcase]
      end

      # Compound governance token reward multiplier
      def get_comp_reward_apy(chain, asset)
        base_apy = get_apy(chain, asset)
        return 0 unless base_apy

        # COMP rewards add 0.2-0.8% APY
        base_apy * 0.15
      end

      # Get collateral factor for an asset (how much you can borrow against it)
      def get_collateral_factor(asset)
        case asset.to_s.upcase
        when "USDC", "USDT", "DAI" then 0.85
        when "ETH" then 0.8
        when "WBTC" then 0.75
        else 0.0
        end
      end
    end
  end
end
