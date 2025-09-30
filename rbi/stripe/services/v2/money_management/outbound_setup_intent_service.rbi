# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class OutboundSetupIntentService < StripeService
        # Cancel an OutboundSetupIntent object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::OutboundSetupIntentCancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::MoneyManagement::OutboundSetupIntent)
         }
        def cancel(id, params = {}, opts = {}); end

        # Create an OutboundSetupIntent object.
        #
        # ** raises BlockedByStripeError
        # ** raises InvalidPayoutMethodError
        # ** raises QuotaExceededError
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::OutboundSetupIntentCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::MoneyManagement::OutboundSetupIntent)
         }
        def create(params = {}, opts = {}); end

        # List the OutboundSetupIntent objects.
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::OutboundSetupIntentListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieve an OutboundSetupIntent object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::OutboundSetupIntentRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::MoneyManagement::OutboundSetupIntent)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Update an OutboundSetupIntent object.
        #
        # ** raises QuotaExceededError
        # ** raises BlockedByStripeError
        # ** raises InvalidPayoutMethodError
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::OutboundSetupIntentUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::MoneyManagement::OutboundSetupIntent)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end