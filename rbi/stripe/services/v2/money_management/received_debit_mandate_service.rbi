# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class ReceivedDebitMandateService < StripeService
        # Cancels an active ReceivedDebitMandate.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::ReceivedDebitMandateCancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::ReceivedDebitMandate)
         }
        def cancel(id, params = {}, opts = {}); end

        # Returns a list of ReceivedDebitMandates.
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::ReceivedDebitMandateListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieves the details of an existing ReceivedDebitMandate.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::ReceivedDebitMandateRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::ReceivedDebitMandate)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end