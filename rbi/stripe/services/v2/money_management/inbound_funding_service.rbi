# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class InboundFundingService < StripeService
        # Lists InboundFundings.
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::InboundFundingListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieves an InboundFunding by ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::InboundFundingRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::InboundFunding)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end