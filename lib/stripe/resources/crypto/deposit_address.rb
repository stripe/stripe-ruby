# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Crypto
    # A crypto deposit address is a blockchain address that can be used by a merchant for deposit mode crypto payments.
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
      # Attribute for field address
      attr_reader :address
      # Attribute for field created
      attr_reader :created
      # Attribute for field customer
      attr_reader :customer
      # Unique identifier for the object.
      attr_reader :id
      # Attribute for field livemode
      attr_reader :livemode
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      # Attribute for field network
      attr_reader :network
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # Attribute for field supported_tokens
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
