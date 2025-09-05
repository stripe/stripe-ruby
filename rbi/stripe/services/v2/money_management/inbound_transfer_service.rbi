# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class InboundTransferService < StripeService
        class ListParams < Stripe::RequestParams
          # Filter for objects created at the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          sig { returns(T.nilable(String)) }
          def created; end
          sig { params(_created: T.nilable(String)).returns(T.nilable(String)) }
          def created=(_created); end
          # Filter for objects created after the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          sig { returns(T.nilable(String)) }
          def created_gt; end
          sig { params(_created_gt: T.nilable(String)).returns(T.nilable(String)) }
          def created_gt=(_created_gt); end
          # Filter for objects created on or after the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          sig { returns(T.nilable(String)) }
          def created_gte; end
          sig { params(_created_gte: T.nilable(String)).returns(T.nilable(String)) }
          def created_gte=(_created_gte); end
          # Filter for objects created before the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          sig { returns(T.nilable(String)) }
          def created_lt; end
          sig { params(_created_lt: T.nilable(String)).returns(T.nilable(String)) }
          def created_lt=(_created_lt); end
          # Filter for objects created on or before the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          sig { returns(T.nilable(String)) }
          def created_lte; end
          sig { params(_created_lte: T.nilable(String)).returns(T.nilable(String)) }
          def created_lte=(_created_lte); end
          # The page limit.
          sig { returns(T.nilable(Integer)) }
          def limit; end
          sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def limit=(_limit); end
          sig {
            params(created: T.nilable(String), created_gt: T.nilable(String), created_gte: T.nilable(String), created_lt: T.nilable(String), created_lte: T.nilable(String), limit: T.nilable(Integer)).void
           }
          def initialize(
            created: nil,
            created_gt: nil,
            created_gte: nil,
            created_lt: nil,
            created_lte: nil,
            limit: nil
          ); end
        end
        class CreateParams < Stripe::RequestParams
          class From < Stripe::RequestParams
            # An optional currency field used to specify which currency is debited from the Payment Method.
            # Since many Payment Methods support only one currency, this field is optional.
            sig { returns(T.nilable(String)) }
            def currency; end
            sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_currency); end
            # ID of the Payment Method using which IBT will be made.
            sig { returns(String) }
            def payment_method; end
            sig { params(_payment_method: String).returns(String) }
            def payment_method=(_payment_method); end
            sig { params(currency: T.nilable(String), payment_method: String).void }
            def initialize(currency: nil, payment_method: nil); end
          end
          class To < Stripe::RequestParams
            # The currency in which funds will land in.
            sig { returns(String) }
            def currency; end
            sig { params(_currency: String).returns(String) }
            def currency=(_currency); end
            # The FinancialAccount that funds will land in.
            sig { returns(String) }
            def financial_account; end
            sig { params(_financial_account: String).returns(String) }
            def financial_account=(_financial_account); end
            sig { params(currency: String, financial_account: String).void }
            def initialize(currency: nil, financial_account: nil); end
          end
          # The amount, in specified currency, by which the FinancialAccount balance will increase due to the InboundTransfer.
          sig { returns(Stripe::V2::Amount) }
          def amount; end
          sig { params(_amount: Stripe::V2::Amount).returns(Stripe::V2::Amount) }
          def amount=(_amount); end
          # An optional, freeform description field intended to store metadata.
          sig { returns(T.nilable(String)) }
          def description; end
          sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
          def description=(_description); end
          # Object containing details about where the funds will originate from.
          sig { returns(::Stripe::V2::MoneyManagement::InboundTransferService::CreateParams::From) }
          def from; end
          sig {
            params(_from: ::Stripe::V2::MoneyManagement::InboundTransferService::CreateParams::From).returns(::Stripe::V2::MoneyManagement::InboundTransferService::CreateParams::From)
           }
          def from=(_from); end
          # Object containing details about where the funds will land.
          sig { returns(::Stripe::V2::MoneyManagement::InboundTransferService::CreateParams::To) }
          def to; end
          sig {
            params(_to: ::Stripe::V2::MoneyManagement::InboundTransferService::CreateParams::To).returns(::Stripe::V2::MoneyManagement::InboundTransferService::CreateParams::To)
           }
          def to=(_to); end
          sig {
            params(amount: Stripe::V2::Amount, description: T.nilable(String), from: ::Stripe::V2::MoneyManagement::InboundTransferService::CreateParams::From, to: ::Stripe::V2::MoneyManagement::InboundTransferService::CreateParams::To).void
           }
          def initialize(amount: nil, description: nil, from: nil, to: nil); end
        end
        class RetrieveParams < Stripe::RequestParams; end
        # InboundTransfers APIs are used to create, retrieve or list InboundTransfers.
        #
        # ** raises BlockedByStripeError
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::InboundTransferService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::MoneyManagement::InboundTransfer)
         }
        def create(params = {}, opts = {}); end

        # Retrieves a list of InboundTransfers.
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::InboundTransferService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieve an InboundTransfer by ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::InboundTransferService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::MoneyManagement::InboundTransfer)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end