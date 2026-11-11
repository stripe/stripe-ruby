# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class SpendingMandateService < StripeService
        # Cancels an active SpendingMandate.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::SpendingMandateCancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::SpendingMandate)
         }
        def cancel(id, params = {}, opts = {}); end

        # Returns a list of SpendingMandates.
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::SpendingMandateListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieves the details of an existing SpendingMandate.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::SpendingMandateRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::SpendingMandate)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end