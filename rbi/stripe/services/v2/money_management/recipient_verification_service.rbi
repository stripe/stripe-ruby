# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class RecipientVerificationService < StripeService
        class CreateParams < Stripe::RequestParams
          # ID of the payout method.
          sig { returns(String) }
          def payout_method; end
          sig { params(_payout_method: String).returns(String) }
          def payout_method=(_payout_method); end
          # ID of the recipient account. Required if the recipient distinct from the sender. Leave empty if the recipient and sender are the same entity (i.e. for me-to-me payouts).
          sig { returns(T.nilable(String)) }
          def recipient; end
          sig { params(_recipient: T.nilable(String)).returns(T.nilable(String)) }
          def recipient=(_recipient); end
          sig { params(payout_method: String, recipient: T.nilable(String)).void }
          def initialize(payout_method: nil, recipient: nil); end
        end
        class RetrieveParams < Stripe::RequestParams; end
        class AcknowledgeParams < Stripe::RequestParams; end
        # Acknowledges an existing RecipientVerification. Only RecipientVerification awaiting acknowledgement can be acknowledged.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::RecipientVerificationService::AcknowledgeParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::MoneyManagement::RecipientVerification)
         }
        def acknowledge(id, params = {}, opts = {}); end

        # Creates a RecipientVerification to verify the recipient you intend to send funds to.
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::RecipientVerificationService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::MoneyManagement::RecipientVerification)
         }
        def create(params = {}, opts = {}); end

        # Retrieves the details of an existing RecipientVerification by passing the unique RecipientVerification ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::RecipientVerificationService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::MoneyManagement::RecipientVerification)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end