# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class RecipientVerificationService < StripeService
        # Acknowledges an existing RecipientVerification. Only RecipientVerification awaiting acknowledgement can be acknowledged.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::RecipientVerificationAcknowledgeParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::RecipientVerification)
         }
        def acknowledge(id, params = {}, opts = {}); end

        # Creates a RecipientVerification to verify the recipient you intend to send funds to.
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::RecipientVerificationCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::RecipientVerification)
         }
        def create(params = {}, opts = {}); end

        # Retrieves the details of an existing RecipientVerification by passing the unique RecipientVerification ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::RecipientVerificationRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::RecipientVerification)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end