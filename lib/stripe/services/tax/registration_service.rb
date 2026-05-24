# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Tax
    class RegistrationService < StripeService
      # Creates a new Tax Registration object.
      def create(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/tax/registrations",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Returns a list of Tax Registration objects.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/tax/registrations",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Returns a Tax Registration object.
      def retrieve(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/tax/registrations/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Serializes a Registration create request into a batch job JSONL line.
      def serialize_batch_create(params = {}, opts = {})
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

      # Serializes a Registration update request into a batch job JSONL line.
      def serialize_batch_update(id, params = {}, opts = {})
        request_id = SecureRandom.uuid
        stripe_version = opts[:stripe_version] || Stripe.api_version

        request_body = {
          id: request_id,
          params: params,
          stripe_version: stripe_version,
        }
        request_body[:path_params] = { id: id }
        request_body[:context] = opts[:stripe_context] if opts[:stripe_context]
        JSON.generate(request_body)
      end

      # Updates an existing Tax Registration object.
      #
      # A registration cannot be deleted after it has been created. If you wish to end a registration you may do so by setting expires_at.
      def update(id, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/tax/registrations/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
