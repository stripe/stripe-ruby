# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Crypto
    class OnrampTransactionLimitsRetrieveParams < ::Stripe::RequestParams
      # The IP address of the customer requesting transaction limits. We support IPv4 and IPv6 addresses.
      attr_accessor :customer_ip_address
      # The destination blockchain network to use for limit calculations.
      attr_accessor :destination_network
      # The destination tag for the wallet address, if applicable for the network.
      attr_accessor :destination_tag
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # The wallet address to use for destination-specific limit calculations.
      attr_accessor :wallet_address

      def initialize(
        customer_ip_address: nil,
        destination_network: nil,
        destination_tag: nil,
        expand: nil,
        wallet_address: nil
      )
        @customer_ip_address = customer_ip_address
        @destination_network = destination_network
        @destination_tag = destination_tag
        @expand = expand
        @wallet_address = wallet_address
      end
    end
  end
end
