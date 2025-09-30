# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Issuing
    class DisputeSettlementDetailService < StripeService
      # Returns a list of Issuing DisputeSettlementDetail objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
      sig {
        params(params: T.any(::Stripe::Issuing::DisputeSettlementDetailListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Retrieves an Issuing DisputeSettlementDetail object.
      sig {
        params(dispute_settlement_detail: String, params: T.any(::Stripe::Issuing::DisputeSettlementDetailRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::DisputeSettlementDetail)
       }
      def retrieve(dispute_settlement_detail, params = {}, opts = {}); end
    end
  end
end