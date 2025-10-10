# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class OutboundTransferService < StripeService
        # Cancels an OutboundTransfer. Only processing OutboundTransfers can be canceled.
        #
        # ** raises AlreadyCanceledError
        # ** raises NotCancelableError
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::OutboundTransferCancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::OutboundTransfer)
         }
        def cancel(id, params = {}, opts = {}); end

        # Creates an OutboundTransfer.
        #
        # ** raises InsufficientFundsError
        # ** raises FeatureNotEnabledError
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::OutboundTransferCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::OutboundTransfer)
         }
        def create(params = {}, opts = {}); end

        # Returns a list of OutboundTransfers that match the provided filters.
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::OutboundTransferListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieves the details of an existing OutboundTransfer by passing the unique OutboundTransfer ID from either the OutboundPayment create or list response.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::OutboundTransferRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::OutboundTransfer)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end