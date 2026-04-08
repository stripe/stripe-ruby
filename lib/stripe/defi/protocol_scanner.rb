# frozen_string_literal: true

module Stripe
  module DeFi
    # Base class for DeFi protocol scanners
    class ProtocolScanner
      attr_reader :protocol_name, :supported_chains, :supported_assets

      def initialize(protocol_name)
        @protocol_name = protocol_name
        @supported_chains = Set.new
        @supported_assets = Set.new
        validate_protocol!
      end

      # Get APY for an asset on a specific chain
      # Must be implemented by subclasses
      def get_apy(chain, asset)
        raise NotImplementedError, "Subclasses must implement get_apy"
      end

      # Get all available pools/markets for a chain
      def get_available_yields(chain)
        raise ArgumentError, "Unsupported chain: #{chain}" unless @supported_chains.include?(chain)

        @supported_assets.map do |asset|
          apy = get_apy(chain, asset)
          next unless apy

          {
            asset: asset,
            chain: chain,
            protocol: @protocol_name,
            apy: apy,
          }
        end.compact.sort_by { |y| y[:apy] }.reverse
      end

      # Get best yield for a specific asset across all chains
      def best_yield_for_asset(asset)
        unless @supported_assets.include?(asset)
          return { asset: asset, chain: nil, apy: 0, error: "Unsupported asset: #{asset}" }
        end

        best = nil
        best_chain = nil

        @supported_chains.each do |chain|
          apy = get_apy(chain, asset)
          next unless apy && (best.nil? || apy > best)

          best = apy
          best_chain = chain
        end

        if best
          { asset: asset, chain: best_chain, apy: best, protocol: @protocol_name }
        else
          { asset: asset, chain: nil, apy: 0, error: "No yields found for #{asset}" }
        end
      end

      # Get best yield for each supported asset
      def best_yields_per_asset
        @supported_assets.map do |asset|
          best_yield_for_asset(asset)
        end
      end

      protected

      def validate_protocol!
        raise ArgumentError, "Protocol name cannot be empty" if @protocol_name.to_s.strip.empty?
      end
    end
  end
end
