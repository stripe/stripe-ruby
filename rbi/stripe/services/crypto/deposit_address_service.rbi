# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Crypto
    class DepositAddressService < StripeService
      # Creates a new crypto deposit address for the authenticated merchant on the specified network.
      # The returned address can be used across multiple PaymentIntents.
      sig {
        params(params: T.any(::Stripe::Crypto::DepositAddressCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Crypto::DepositAddress)
       }
      def create(params = {}, opts = {}); end

      # Lists crypto deposit addresses for the authenticated merchant.
      # Supports cursor-based pagination and optional filtering by customer, network, or on-chain address.
      sig {
        params(params: T.any(::Stripe::Crypto::DepositAddressListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Retrieves the details of an existing crypto deposit address by ID.
      sig {
        params(id: String, params: T.any(::Stripe::Crypto::DepositAddressRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Crypto::DepositAddress)
       }
      def retrieve(id, params = {}, opts = {}); end
    end
  end
end