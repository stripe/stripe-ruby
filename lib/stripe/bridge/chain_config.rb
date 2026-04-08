# frozen_string_literal: true

module Stripe
  module Bridge
    # Configuration for supported blockchain networks
    class ChainConfig
      # Chain definitions with network properties
      CHAINS = {
        ethereum: {
          name: "Ethereum",
          id: 1,
          native_token: "ETH",
          avg_block_time: 12, # seconds
          finality_time: 15 * 60,       # 15 minutes
          gas_price_gwei: 50,           # typical current price
          throughput: 15,               # tx/sec
          supported_tokens: %w[USDC USDT DAI ETH WBTC],
          rpc_endpoint: "https://eth-mainnet.alchemyapi.io/v2/",
        },
        arbitrum: {
          name: "Arbitrum One",
          id: 42_161,
          native_token: "ETH",
          avg_block_time: 0.25,
          finality_time: 1 * 60,        # 1 minute
          gas_price_gwei: 0.5,
          throughput: 7000,             # high throughput
          supported_tokens: %w[USDC USDT DAI ETH WBTC],
          rpc_endpoint: "https://arb-mainnet.g.alchemy.com/v2/",
        },
        optimism: {
          name: "Optimism",
          id: 10,
          native_token: "ETH",
          avg_block_time: 2,
          finality_time: 1 * 60,
          gas_price_gwei: 0.1,
          throughput: 4000,
          supported_tokens: %w[USDC USDT DAI ETH WBTC],
          rpc_endpoint: "https://opt-mainnet.g.alchemy.com/v2/",
        },
        polygon: {
          name: "Polygon",
          id: 137,
          native_token: "MATIC",
          avg_block_time: 2,
          finality_time: 128 * 2,       # ~256 seconds
          gas_price_gwei: 30,
          throughput: 7000,
          supported_tokens: %w[USDC USDT DAI MATIC WBTC],
          rpc_endpoint: "https://polygon-mainnet.g.alchemy.com/v2/",
        },
        avalanche: {
          name: "Avalanche",
          id: 43_114,
          native_token: "AVAX",
          avg_block_time: 1,
          finality_time: 2,             # ~2 seconds
          gas_price_gwei: 25,
          throughput: 4500,
          supported_tokens: %w[USDC USDT DAI AVAX WBTC],
          rpc_endpoint: "https://avax-mainnet.g.alchemy.com/v2/",
        },
        base: {
          name: "Base",
          id: 8453,
          native_token: "ETH",
          avg_block_time: 2,
          finality_time: 1 * 60,
          gas_price_gwei: 0.01,
          throughput: 1000,
          supported_tokens: %w[USDC USDT ETH WBTC],
          rpc_endpoint: "https://base-mainnet.g.alchemy.com/v2/",
        },
      }.freeze

      # Supported bridge protocols
      BRIDGE_PROTOCOLS = {
        stargate: {
          name: "Stargate Finance",
          type: "liquidity_pool",
          supported_chains: %i[ethereum arbitrum optimism polygon avalanche],
          bridge_fee_bps: 40,           # 0.4%
          min_bridge_time: 30,          # 30 seconds
          max_bridge_time: 300,         # 5 minutes
          liquidity_depth: "high",
        },
        across: {
          name: "Across Protocol",
          type: "optimistic_rollup",
          supported_chains: %i[ethereum arbitrum optimism polygon],
          bridge_fee_bps: 50,           # 0.5%
          min_bridge_time: 120,         # 2 minutes
          max_bridge_time: 600,         # 10 minutes
          liquidity_depth: "medium",
        },
        hyperlane: {
          name: "Hyperlane",
          type: "interchain_messaging",
          supported_chains: %i[ethereum arbitrum optimism polygon avalanche base],
          bridge_fee_bps: 10,           # 0.1%
          min_bridge_time: 60,          # 1 minute
          max_bridge_time: 300,         # 5 minutes
          liquidity_depth: "variable",
        },
        cctp: {
          name: "Circle CCTP",
          type: "native_bridge",
          supported_chains: %i[ethereum arbitrum optimism polygon base],
          bridge_fee_bps: 0,            # No fee
          min_bridge_time: 30,          # 30 seconds
          max_bridge_time: 120,         # 2 minutes
          liquidity_depth: "high",
        },
      }.freeze

      # Connection fees between chains (in basis points)
      BRIDGE_CONNECTIONS = {
        "ethereum-arbitrum" => { protocol: :stargate, fee_bps: 30 },
        "ethereum-optimism" => { protocol: :stargate, fee_bps: 30 },
        "ethereum-polygon" => { protocol: :stargate, fee_bps: 35 },
        "ethereum-avalanche" => { protocol: :stargate, fee_bps: 40 },
        "arbitrum-optimism" => { protocol: :across, fee_bps: 45 },
        "arbitrum-polygon" => { protocol: :hyperlane, fee_bps: 25 },
        "optimism-polygon" => { protocol: :hyperlane, fee_bps: 25 },
        "polygon-avalanche" => { protocol: :hyperlane, fee_bps: 30 },
        "ethereum-base" => { protocol: :cctp, fee_bps: 10 },
        "arbitrum-base" => { protocol: :hyperlane, fee_bps: 20 },
      }.freeze

      def self.get_chain(chain_key)
        CHAINS[chain_key.to_sym]
      end

      def self.get_protocol(protocol_key)
        BRIDGE_PROTOCOLS[protocol_key.to_sym]
      end

      def self.get_connection(from_chain, to_chain)
        key = normalize_connection_key(from_chain, to_chain)
        BRIDGE_CONNECTIONS[key]
      end

      def self.all_chains
        CHAINS.keys
      end

      def self.all_protocols
        BRIDGE_PROTOCOLS.keys
      end

      def self.chains_for_token(token)
        CHAINS.select { |_k, v| v[:supported_tokens].include?(token) }.keys
      end

      def self.protocols_for_route(from_chain, to_chain)
        connection = get_connection(from_chain, to_chain)
        return [] unless connection

        protocol = connection[:protocol]
        proto_info = get_protocol(protocol)
        proto_info ? [protocol] : []
      end

      def self.available_routes(from_chain, to_chain)
        from_sym = from_chain.to_sym
        to_sym = to_chain.to_sym

        # Direct route
        direct = get_connection(from_sym, to_sym)
        routes = []
        routes << { type: :direct, hops: [from_sym, to_sym], protocols: [direct[:protocol]] } if direct

        # Two-hop routes (via intermediate chain)
        CHAINS.each_key do |intermediate|
          next if intermediate == from_sym || intermediate == to_sym

          hop1 = get_connection(from_sym, intermediate)
          hop2 = get_connection(intermediate, to_sym)

          next unless hop1 && hop2

          routes << {
            type: :two_hop,
            hops: [from_sym, intermediate, to_sym],
            protocols: [hop1[:protocol], hop2[:protocol]],
          }
        end

        routes
      end

      private

      def self.normalize_connection_key(from_chain, to_chain)
        from_key = from_chain.to_s.downcase
        to_key = to_chain.to_s.downcase

        # Try direct order first
        return "#{from_key}-#{to_key}" if BRIDGE_CONNECTIONS["#{from_key}-#{to_key}"]

        # Try reverse order
        "#{to_key}-#{from_key}" if BRIDGE_CONNECTIONS["#{to_key}-#{from_key}"]
      end
    end
  end
end
