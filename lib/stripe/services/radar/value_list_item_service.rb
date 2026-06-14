# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Radar
    class ValueListItemService < StripeService
      # Creates a new ValueListItem object, which is added to the specified parent value list.
      def create(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/radar/value_list_items",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Deletes a ValueListItem object, removing it from its parent value list.
      def delete(item, params = {}, opts = {})
        request(
          method: :delete,
          path: format("/v1/radar/value_list_items/%<item>s", { item: CGI.escape(item) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Returns a list of ValueListItem objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/radar/value_list_items",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves a ValueListItem object.
      def retrieve(item, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/radar/value_list_items/%<item>s", { item: CGI.escape(item) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Serializes a ValueListItem create request into a batch job JSONL line.
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
    end
  end
end
