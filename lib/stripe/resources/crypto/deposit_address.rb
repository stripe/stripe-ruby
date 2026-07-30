# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Crypto
    # A crypto deposit address is a blockchain address that can be used by a merchant for deposit mode crypto payments.
    #
    # Related guide: [Machine payments](https://docs.stripe.com/payments/machine)
    class DepositAddress < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List

      OBJECT_NAME = "crypto.deposit_address"
      def self.object_name
        "crypto.deposit_address"
      end

      class SupportedToken < ::Stripe::StripeObject
        # The on-chain contract address for the supported token currency on this specific network.
        attr_reader :token_contract_address
        # The supported token currency. Supported token currencies include: `usdc`.
        attr_reader :token_currency

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # The on-chain address where funds can be received.
      attr_reader :address
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # If set, this deposit address is scoped to a [Customer](https://docs.stripe.com/api/customers/object) and can only receive funds from that customer. Otherwise, this deposit address can receive funds from any customer.
      attr_reader :customer
      # Unique identifier for the object.
      attr_reader :id
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      attr_reader :livemode
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      # The blockchain network where this address can accept funds.
      attr_reader :network
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The tokens that can be sent to this deposit address on its network.
      attr_reader :supported_tokens

      # Creates a new crypto deposit address for the authenticated merchant on the specified network.
      # The returned address can be used across multiple PaymentIntents.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/crypto/deposit_addresses",
          params: params,
          opts: opts
        )
      end

      # Lists crypto deposit addresses for the authenticated merchant.
      # Supports cursor-based pagination and optional filtering by customer, network, or on-chain address.
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/crypto/deposit_addresses",
          params: params,
          opts: opts
        )
      end

      def self.inner_class_types
        @inner_class_types = { supported_tokens: SupportedToken }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
