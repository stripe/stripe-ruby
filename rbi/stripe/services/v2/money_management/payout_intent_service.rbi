# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class PayoutIntentService < StripeService
        # Cancels a PayoutIntent. Only pending PayoutIntents or processing PayoutIntents with cancelable OutboundPayment/Transfer can be canceled.
        #
        # ** raises NotCancelableError
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::PayoutIntentCancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::PayoutIntent)
         }
        def cancel(id, params = {}, opts = {}); end

        # Creates a PayoutIntent.
        #
        # ** raises FeatureNotEnabledError
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::PayoutIntentCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::PayoutIntent)
         }
        def create(params = {}, opts = {}); end

        # Returns a list of PayoutIntents.
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::PayoutIntentListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieves the details of an existing PayoutIntent by passing the unique PayoutIntent ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::PayoutIntentRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::PayoutIntent)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Updates a PayoutIntent. Only pending or requires_action PayoutIntents that are editable can be updated.
        #
        # ** raises FeatureNotEnabledError
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::PayoutIntentUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::PayoutIntent)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end