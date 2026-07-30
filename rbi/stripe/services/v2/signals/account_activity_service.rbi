# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Signals
      class AccountActivityService < StripeService
        # Creates a new account activity to report account registration, login, or evaluation follow-up activity.
        sig {
          params(params: T.any(::Stripe::V2::Signals::AccountActivityCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Signals::AccountActivity)
         }
        def create(params = {}, opts = {}); end

        # Deletes an AccountActivity by its ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Signals::AccountActivityDeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::DeletedObject)
         }
        def delete(id, params = {}, opts = {}); end

        # Retrieves an AccountActivity by its ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Signals::AccountActivityRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Signals::AccountActivity)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end