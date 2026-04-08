# frozen_string_literal: true

module Stripe
  module DeFi
    # Uniswap liquidity pool APY scanner
    # APY data is hardcoded with realistic values per chain
    class UniswapScanner < ProtocolScanner
      # Realistic APY rates for Uniswap V3 liquidity pools
      # Higher APY due to trading fee rewards but with impermanent loss risk
      UNISWAP_APY = {
        ethereum: {
          "USDC_USDT" => 8.5,  # Stablecoin pair
          "ETH_USDC" => 12.2,  # Major pair
          "WBTC_ETH" => 15.3,  # Volatile pair
          "DAI_USDC" => 7.8,   # Stablecoin pair
          "WBTC_USDC" => 18.5, # Major pair
        },
        arbitrum: {
          "USDC_USDT" => 9.2,
          "ETH_USDC" => 13.1,
          "WBTC_ETH" => 16.2,
          "DAI_USDC" => 8.5,
          "WBTC_USDC" => 19.3,
        },
        optimism: {
          "USDC_USDT" => 8.8,
          "ETH_USDC" => 12.8,
          "WBTC_ETH" => 15.9,
          "DAI_USDC" => 8.1,
          "WBTC_USDC" => 18.9,
        },
        polygon: {
          "USDC_USDT" => 10.5,
          "ETH_USDC" => 14.2,
          "WBTC_ETH" => 17.5,
          "DAI_USDC" => 9.8,
          "WBTC_USDC" => 21.2,
        },
        avalanche: {
          "USDC_USDT" => 9.8,
          "ETH_USDC" => 13.5,
          "WBTC_ETH" => 16.8,
          "DAI_USDC" => 9.1,
          "WBTC_USDC" => 20.1,
        },
        base: {
          "USDC_USDT" => 8.2,
          "ETH_USDC" => 11.9,
          "WBTC_ETH" => 14.8,
          "DAI_USDC" => 7.5,
          "WBTC_USDC" => 17.8,
        },
      }.freeze

      def initialize
        super("Uniswap V3")
        @supported_chains = Set.new(UNISWAP_APY.keys)
        @supported_assets = Set.new(UNISWAP_APY.values.flat_map(&:keys).uniq)
      end

      def get_apy(chain, asset)
        chain_sym = chain.to_sym
        return nil unless UNISWAP_APY[chain_sym]

        UNISWAP_APY[chain_sym][asset.to_s.upcase]
      end

      # Get impermanent loss risk estimate for a pool
      # Higher for volatile pairs, lower for stablecoin pairs
      def get_impermanent_loss_risk(pool_pair)
        case pool_pair.to_s.upcase
        when /USDC_USDT|DAI_USDC/ then 0.02  # 2% (stables, minimal)
        when /ETH_USDC|WBTC_USDC/ then 0.08  # 8% (major pairs)
        when /WBTC_ETH/ then 0.15             # 15% (volatile pair)
        else 0.05                             # 5% (default)
        end
      end

      # Get fee tier for a pool (basis points)
      def get_fee_tier(pool_pair)
        case pool_pair.to_s.upcase
        when /USDC_USDT|DAI_USDC/
          0.01  # 0.01% for stablecoin pairs
        when /ETH_USDC|WBTC_USDC/
          0.05  # 0.05% for major pairs
        when /WBTC_ETH/
          0.3   # 0.3% for volatile pairs
        else
          0.05  # 0.05% default
        end
      end

      # Get TVL (Total Value Locked) range for a pool in millions
      def get_tvl_millions(chain, pool_pair)
        chain_sym = chain.to_sym
        base_tvl = case chain_sym
                   when :ethereum then 150
                   when :arbitrum then 80
                   when :optimism then 45
                   when :polygon then 100
                   when :avalanche then 60
                   when :base then 30
                   else 50
                   end

        pair_multiplier = case pool_pair.to_s.upcase
                          when /USDC_USDT|DAI_USDC/ then 2.0
                          when /ETH_USDC|WBTC_USDC/ then 1.5
                          when /WBTC_ETH/ then 1.0
                          else 0.8
                          end

        (base_tvl * pair_multiplier).round(1)
      end
    end
  end
end
