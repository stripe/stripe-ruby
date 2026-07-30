# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Crypto
    # A crypto deposit address is a blockchain address that can be used by a merchant for deposit mode crypto payments.
    #
    # Related guide: [Machine payments](https://docs.stripe.com/payments/machine)
    class DepositAddress < APIResource
      class SupportedToken < ::Stripe::StripeObject
        # The on-chain contract address for the supported token currency on this specific network.
        sig { returns(String) }
        def token_contract_address; end
        # The supported token currency. Supported token currencies include: `usdc`.
        sig { returns(String) }
        def token_currency; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # The on-chain address where funds can be received.
      sig { returns(String) }
      def address; end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def created; end
      # If set, this deposit address is scoped to a [Customer](https://docs.stripe.com/api/customers/object) and can only receive funds from that customer. Otherwise, this deposit address can receive funds from any customer.
      sig { returns(T.nilable(String)) }
      def customer; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      sig { returns(T::Boolean) }
      def livemode; end
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T::Hash[String, String]) }
      def metadata; end
      # The blockchain network where this address can accept funds.
      sig { returns(String) }
      def network; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # The tokens that can be sent to this deposit address on its network.
      sig { returns(T::Array[SupportedToken]) }
      def supported_tokens; end
      # Creates a new crypto deposit address for the authenticated merchant on the specified network.
      # The returned address can be used across multiple PaymentIntents.
      sig {
        params(params: T.any(::Stripe::Crypto::DepositAddressCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Crypto::DepositAddress)
       }
      def self.create(params = {}, opts = {}); end

      # Lists crypto deposit addresses for the authenticated merchant.
      # Supports cursor-based pagination and optional filtering by customer, network, or on-chain address.
      sig {
        params(params: T.any(::Stripe::Crypto::DepositAddressListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end
    end
  end
end