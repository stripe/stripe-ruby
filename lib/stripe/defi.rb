# frozen_string_literal: true

require_relative "defi/protocol_scanner"
require_relative "defi/aave_scanner"
require_relative "defi/compound_scanner"
require_relative "defi/uniswap_scanner"
require_relative "defi/yield_optimizer"

module Stripe
  module DeFi
    # Convenience methods for DeFi operations

    def self.scan_yields(asset, chains = nil)
      scanners = {
        aave: AaveScanner.new,
        compound: CompoundScanner.new,
        uniswap: UniswapScanner.new,
      }

      results = []
      chains ||= %i[ethereum arbitrum optimism polygon avalanche base]

      scanners.each do |protocol, scanner|
        chains.each do |chain|
          apy = scanner.get_apy(chain, asset)
          next unless apy

          results << {
            protocol: protocol.to_s,
            chain: chain,
            asset: asset,
            apy: apy,
          }
        end
      end

      results.sort_by { |r| r[:apy] }.reverse
    end

    def self.best_yield_for_asset(asset)
      optimizer = YieldOptimizer.new
      optimizer.best_global_yield(asset)
    end

    def self.create_optimizer(monitored_wallets = {})
      YieldOptimizer.new(monitored_wallets)
    end

    def self.get_aave_apy(chain, asset)
      AaveScanner.new.get_apy(chain, asset)
    end

    def self.get_compound_apy(chain, asset)
      CompoundScanner.new.get_apy(chain, asset)
    end

    def self.get_uniswap_apy(pool_pair, chain)
      UniswapScanner.new.get_apy(chain, pool_pair)
    end
  end
end
