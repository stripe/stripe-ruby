# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class InboundTransferMandateService < StripeService
        # Cancel a pending or active InboundTransferMandate.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::InboundTransferMandateCancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::InboundTransferMandate)
         }
        def cancel(id, params = {}, opts = {}); end

        # Create an InboundTransferMandate for a v2 credential. If a pending or active mandate
        # already exists for the same user and credential, return that mandate instead of creating
        # another one. The existing mandate's reference and acceptance evidence are preserved.
        # Retry with the same idempotency key to replay a successful creation.
        # In a Sandbox or test mode, use bacs.reference_prefix to simulate Bacs mandate
        # outcomes. See the parameter description for supported values.
        #
        # ** raises AlreadyExistsError
        # ** raises ServiceUnavailableError
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::InboundTransferMandateCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::InboundTransferMandate)
         }
        def create(params = {}, opts = {}); end

        # Retrieve a list of InboundTransferMandates for the authenticated compartment.
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::InboundTransferMandateListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieve an InboundTransferMandate by ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::InboundTransferMandateRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::InboundTransferMandate)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end