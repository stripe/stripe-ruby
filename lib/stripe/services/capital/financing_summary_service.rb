# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Capital
    class FinancingSummaryService < StripeService
      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
        end
      end

      # Retrieve the financing state for the account that was authenticated in the request.
      def retrieve(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/capital/financing_summary",
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
