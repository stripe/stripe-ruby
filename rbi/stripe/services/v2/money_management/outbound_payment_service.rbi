# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class OutboundPaymentService < StripeService
        # Cancels an OutboundPayment. Only processing OutboundPayments can be canceled.
        #
        # ** raises AlreadyCanceledError
        # ** raises NotCancelableError
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::OutboundPaymentCancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::OutboundPayment)
         }
        def cancel(id, params = {}, opts = {}); end

        # Creates an OutboundPayment.
        #
        # ** raises InsufficientFundsError
        # ** raises QuotaExceededError
        # ** raises RecipientNotNotifiableError
        # ** raises FeatureNotEnabledError
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::OutboundPaymentCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::OutboundPayment)
         }
        def create(params = {}, opts = {}); end

        # Returns a list of OutboundPayments that match the provided filters.
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::OutboundPaymentListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieves the details of an existing OutboundPayment by passing the unique OutboundPayment ID from either the OutboundPayment create or list response.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::OutboundPaymentRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::OutboundPayment)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end