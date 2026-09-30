# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class EarnedCreditService < StripeService
        # Returns a list of EarnedCredits.
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::EarnedCreditListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieves an EarnedCredit.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::EarnedCreditRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::EarnedCredit)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end