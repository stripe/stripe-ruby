# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class DebitDisputeService < StripeService
        # Creates a new DebitDispute for a ReceivedDebit.
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::DebitDisputeCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::DebitDispute)
         }
        def create(params = {}, opts = {}); end

        # Retrieves a list of DebitDisputes.
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::DebitDisputeListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieves the details of an existing DebitDispute.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::DebitDisputeRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::DebitDispute)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end