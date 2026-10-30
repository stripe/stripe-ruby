# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class FundingIntentService < StripeService
        # Cancels a FundingIntent that can still be canceled.
        #
        # ** raises CannotProceedError
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::FundingIntentCancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::FundingIntent)
         }
        def cancel(id, params = {}, opts = {}); end

        # Confirms a FundingIntent that is ready for processing.
        #
        # ** raises CannotProceedError
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::FundingIntentConfirmParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::FundingIntent)
         }
        def confirm(id, params = {}, opts = {}); end

        # Creates a FundingIntent that adds funds to a FinancialAccount.
        #
        # ** raises CannotProceedError
        # ** raises FeatureNotEnabledError
        # ** raises CapabilityNotEnabledError
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::FundingIntentCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::FundingIntent)
         }
        def create(params = {}, opts = {}); end

        # Lists FundingIntents.
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::FundingIntentListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieves a FundingIntent by ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::FundingIntentRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::FundingIntent)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Updates the mutable details of a FundingIntent.
        #
        # ** raises CannotProceedError
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::FundingIntentUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::FundingIntent)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end