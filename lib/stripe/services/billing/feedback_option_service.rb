# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Billing
    class FeedbackOptionService < StripeService
      # Creates a new feedback option.
      def create(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/billing/feedback_options",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Deactivates a feedback option. Deactivated feedback options cannot be used in portal configurations.
      def deactivate(id, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/billing/feedback_options/%<id>s/deactivate", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # An API method for listing the feedback options model
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/billing/feedback_options",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves a feedback options object given an ID.
      def retrieve(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/billing/feedback_options/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Updates the description of an existing feedback option.
      def update(id, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/billing/feedback_options/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
