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
          attr_accessor :created
          # Filter for objects created after the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          sig { returns(T.nilable(String)) }
          attr_accessor :created_gt
          # Filter for objects created on or after the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          sig { returns(T.nilable(String)) }
          attr_accessor :created_gte
          # Filter for objects created before the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          sig { returns(T.nilable(String)) }
          attr_accessor :created_lt
          # Filter for objects created on or before the specified timestamp.
          # Must be an RFC 3339 date & time value, for example: 2022-09-18T13:22:00Z.
          sig { returns(T.nilable(String)) }
          attr_accessor :created_lte
          # The page limit.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :limit
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
            attr_accessor :currency
            # ID of the Payment Method using which IBT will be made.
            sig { returns(String) }
            attr_accessor :payment_method
            sig { params(currency: T.nilable(String), payment_method: String).void }
            def initialize(currency: nil, payment_method: nil); end
          end
          class To < Stripe::RequestParams
            # The currency in which funds will land in.
            sig { returns(String) }
            attr_accessor :currency
            # The FinancialAccount that funds will land in.
            sig { returns(String) }
            attr_accessor :financial_account
            sig { params(currency: String, financial_account: String).void }
            def initialize(currency: nil, financial_account: nil); end
          end
          # The amount, in specified currency, by which the FinancialAccount balance will increase due to the InboundTransfer.
          sig { returns(Stripe::V2::Amount) }
          attr_accessor :amount
          # An optional, freeform description field intended to store metadata.
          sig { returns(T.nilable(String)) }
          attr_accessor :description
          # Object containing details about where the funds will originate from.
          sig { returns(::Stripe::V2::MoneyManagement::InboundTransferService::CreateParams::From) }
          attr_accessor :from
          # Object containing details about where the funds will land.
          sig { returns(::Stripe::V2::MoneyManagement::InboundTransferService::CreateParams::To) }
          attr_accessor :to
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