# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class InboundTransferService < StripeService
        # InboundTransfers APIs are used to create, retrieve or list InboundTransfers.
        #
        # ** raises BlockedByStripeError
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::InboundTransferCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::MoneyManagement::InboundTransfer)
         }
        def create(params = {}, opts = {}); end

        # Retrieves a list of InboundTransfers.
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::InboundTransferListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieve an InboundTransfer by ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::InboundTransferRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::MoneyManagement::InboundTransfer)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end