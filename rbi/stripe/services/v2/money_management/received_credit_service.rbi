# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class ReceivedCreditService < StripeService
        # Retrieves a list of ReceivedCredits.
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::ReceivedCreditListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieve a ReceivedCredit by ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::ReceivedCreditRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::ReceivedCredit)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end