# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Tax
    class SettingsService < StripeService
      # Retrieves Tax Settings for a merchant.
      def retrieve(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/tax/settings",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Serializes a Settings update request into a batch job JSONL line.
      def serialize_batch_update(params = {}, opts = {})
        request_id = SecureRandom.uuid
        stripe_version = opts[:stripe_version] || Stripe.api_version

        request_body = {
          id: request_id,
          params: params,
          stripe_version: stripe_version,
        }
        request_body[:context] = opts[:stripe_context] if opts[:stripe_context]
        JSON.generate(request_body)
      end

      # Updates Tax Settings parameters used in tax calculations. All parameters are editable but none can be removed once set.
      def update(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/tax/settings",
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
