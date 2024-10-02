# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    class DisputeSettlementDetailService < StripeService
      # Returns a list of Issuing DisputeSettlementDetail objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/issuing/dispute_settlement_details",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves an Issuing DisputeSettlementDetail object.
      def retrieve(dispute_settlement_detail, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/issuing/dispute_settlement_details/%<dispute_settlement_detail>s", { dispute_settlement_detail: CGI.escape(dispute_settlement_detail) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
