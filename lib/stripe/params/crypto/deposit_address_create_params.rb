# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Crypto
    class DepositAddressCreateParams < ::Stripe::RequestParams
      # If set, this deposit address is scoped to a [Customer](https://docs.stripe.com/api/customers/object) and can only receive funds from that customer. Otherwise, this deposit address can receive funds from any customer.
      attr_accessor :customer
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_accessor :metadata
      # The blockchain network to generate a deposit address for.
      attr_accessor :network

      def initialize(customer: nil, expand: nil, metadata: nil, network: nil)
        @customer = customer
        @expand = expand
        @metadata = metadata
        @network = network
      end
    end
  end
end
