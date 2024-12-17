# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class EphemeralKeyService < StripeService
    class DeleteParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

    class CreateParams < Stripe::RequestParams
      # The ID of the Customer you'd like to modify using the resulting ephemeral key.
      attr_accessor :customer
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # The ID of the Issuing Card you'd like to access using the resulting ephemeral key.
      attr_accessor :issuing_card
      # A single-use token, created by Stripe.js, used for creating ephemeral keys for Issuing Cards without exchanging sensitive information.
      attr_accessor :nonce
      # The ID of the Identity VerificationSession you'd like to access using the resulting ephemeral key
      attr_accessor :verification_session

      def initialize(
        customer: nil,
        expand: nil,
        issuing_card: nil,
        nonce: nil,
        verification_session: nil
      )
        @customer = customer
        @expand = expand
        @issuing_card = issuing_card
        @nonce = nonce
        @verification_session = verification_session
      end
    end

    # Creates a short-lived API key for a given resource.
    def create(params = {}, opts = {})
      request(
        method: :post,
        path: "/v1/ephemeral_keys",
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Invalidates a short-lived API key for a given resource.
    def delete(key, params = {}, opts = {})
      request(
        method: :delete,
        path: format("/v1/ephemeral_keys/%<key>s", { key: CGI.escape(key) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
