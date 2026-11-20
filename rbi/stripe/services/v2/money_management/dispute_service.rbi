# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class DisputeService < StripeService
        # Creates a Dispute for the specified money movement.
        #
        # ** raises AlreadyExistsError
        # ** raises CannotProceedError
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::DisputeCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::Dispute)
         }
        def create(params = {}, opts = {}); end

        # Retrieves a list of Disputes.
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::DisputeListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieves a Dispute.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::DisputeRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::Dispute)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end