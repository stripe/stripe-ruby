# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Crypto
    class DepositAddressService < StripeService
      # Creates a new crypto deposit address for the authenticated merchant on the specified network.
      # The returned address can be used across multiple PaymentIntents.
      def create(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/crypto/deposit_addresses",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Lists crypto deposit addresses for the authenticated merchant.
      # Supports cursor-based pagination and optional filtering by customer, network, or on-chain address.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/crypto/deposit_addresses",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves the details of an existing crypto deposit address by ID.
      def retrieve(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/crypto/deposit_addresses/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
