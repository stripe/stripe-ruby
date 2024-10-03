# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Billing
    class MeterService < StripeService
      attr_reader :event_summaries

      def initialize(requestor)
        super(requestor)
        @event_summaries = Stripe::Billing::MeterEventSummaryService.new(@requestor)
      end

      # Creates a billing meter
      def create(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/billing/meters",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Deactivates a billing meter
      def deactivate(id, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/billing/meters/%<id>s/deactivate", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieve a list of billing meters.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/billing/meters",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Reactivates a billing meter
      def reactivate(id, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/billing/meters/%<id>s/reactivate", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves a billing meter given an ID
      def retrieve(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/billing/meters/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Updates a billing meter
      def update(id, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/billing/meters/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
