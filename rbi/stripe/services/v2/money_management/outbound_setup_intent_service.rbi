# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class OutboundSetupIntentService < StripeService
        class CancelParams < Stripe::RequestParams

        end
        class CreateParams < Stripe::RequestParams
          class PayoutMethodData < Stripe::RequestParams
            class BankAccount < Stripe::RequestParams
              # The account number or IBAN of the bank account.
              sig { returns(String) }
              attr_accessor :account_number
              # Closed Enum. The type of the bank account (checking or savings).
              sig { returns(T.nilable(String)) }
              attr_accessor :bank_account_type
              # The branch number of the bank account, if present.
              sig { returns(T.nilable(String)) }
              attr_accessor :branch_number
              # The country code of the bank account.
              sig { returns(String) }
              attr_accessor :country
              # The routing number of the bank account, if present.
              sig { returns(T.nilable(String)) }
              attr_accessor :routing_number
              # The swift code of the bank account, if present.
              sig { returns(T.nilable(String)) }
              attr_accessor :swift_code
              sig {
                params(account_number: String, bank_account_type: T.nilable(String), branch_number: T.nilable(String), country: String, routing_number: T.nilable(String), swift_code: T.nilable(String)).void
               }
              def initialize(
                account_number: nil,
                bank_account_type: nil,
                branch_number: nil,
                country: nil,
                routing_number: nil,
                swift_code: nil
              ); end
            end
            class Card < Stripe::RequestParams
              # The expiration month of the card.
              sig { returns(String) }
              attr_accessor :exp_month
              # The expiration year of the card.
              sig { returns(String) }
              attr_accessor :exp_year
              # The card number.
              sig { returns(String) }
              attr_accessor :number
              sig { params(exp_month: String, exp_year: String, number: String).void }
              def initialize(exp_month: nil, exp_year: nil, number: nil); end
            end
            # Closed Enum. The type of payout method to be created.
            sig { returns(String) }
            attr_accessor :type
            # The type specific details of the bank account payout method.
            sig {
              returns(T.nilable(::Stripe::V2::MoneyManagement::OutboundSetupIntentService::CreateParams::PayoutMethodData::BankAccount))
             }
            attr_accessor :bank_account
            # The type specific details of the card payout method.
            sig {
              returns(T.nilable(::Stripe::V2::MoneyManagement::OutboundSetupIntentService::CreateParams::PayoutMethodData::Card))
             }
            attr_accessor :card
            sig {
              params(type: String, bank_account: T.nilable(::Stripe::V2::MoneyManagement::OutboundSetupIntentService::CreateParams::PayoutMethodData::BankAccount), card: T.nilable(::Stripe::V2::MoneyManagement::OutboundSetupIntentService::CreateParams::PayoutMethodData::Card)).void
             }
            def initialize(type: nil, bank_account: nil, card: nil); end
          end
          # If provided, the existing payout method resource to link to this setup intent.
          # Any payout_method_data provided is used to update information on this linked payout method resource.
          sig { returns(T.nilable(String)) }
          attr_accessor :payout_method
          # If no payout_method provided, used to create the underlying credential that is set up for outbound money movement.
          # If a payout_method provided, used to update data on the credential linked to this setup intent.
          sig {
            returns(T.nilable(::Stripe::V2::MoneyManagement::OutboundSetupIntentService::CreateParams::PayoutMethodData))
           }
          attr_accessor :payout_method_data
          # Specify which type of outbound money movement this credential should be set up for (payment | transfer).
          # If not provided, defaults to payment.
          sig { returns(T.nilable(String)) }
          attr_accessor :usage_intent
          sig {
            params(payout_method: T.nilable(String), payout_method_data: T.nilable(::Stripe::V2::MoneyManagement::OutboundSetupIntentService::CreateParams::PayoutMethodData), usage_intent: T.nilable(String)).void
           }
          def initialize(payout_method: nil, payout_method_data: nil, usage_intent: nil); end
        end
        class ListParams < Stripe::RequestParams
          # The page size.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :limit
          sig { params(limit: T.nilable(Integer)).void }
          def initialize(limit: nil); end
        end
        class RetrieveParams < Stripe::RequestParams

        end
        class UpdateParams < Stripe::RequestParams
          class PayoutMethodData < Stripe::RequestParams
            class BankAccount < Stripe::RequestParams
              # The account number or IBAN of the bank account.
              sig { returns(String) }
              attr_accessor :account_number
              # Closed Enum. The type of the bank account (checking or savings).
              sig { returns(T.nilable(String)) }
              attr_accessor :bank_account_type
              # The branch number of the bank account, if present.
              sig { returns(T.nilable(String)) }
              attr_accessor :branch_number
              # The country code of the bank account.
              sig { returns(String) }
              attr_accessor :country
              # The routing number of the bank account, if present.
              sig { returns(T.nilable(String)) }
              attr_accessor :routing_number
              # The swift code of the bank account, if present.
              sig { returns(T.nilable(String)) }
              attr_accessor :swift_code
              sig {
                params(account_number: String, bank_account_type: T.nilable(String), branch_number: T.nilable(String), country: String, routing_number: T.nilable(String), swift_code: T.nilable(String)).void
               }
              def initialize(
                account_number: nil,
                bank_account_type: nil,
                branch_number: nil,
                country: nil,
                routing_number: nil,
                swift_code: nil
              ); end
            end
            class Card < Stripe::RequestParams
              # The expiration month of the card.
              sig { returns(T.nilable(String)) }
              attr_accessor :exp_month
              # The expiration year of the card.
              sig { returns(T.nilable(String)) }
              attr_accessor :exp_year
              # The card number. This can only be passed when creating a new credential on an outbound setup intent in the requires_payout_method state.
              sig { returns(T.nilable(String)) }
              attr_accessor :number
              sig {
                params(exp_month: T.nilable(String), exp_year: T.nilable(String), number: T.nilable(String)).void
               }
              def initialize(exp_month: nil, exp_year: nil, number: nil); end
            end
            # Closed Enum. The type of payout method to be created/updated.
            sig { returns(String) }
            attr_accessor :type
            # The type specific details of the bank account payout method.
            sig {
              returns(T.nilable(::Stripe::V2::MoneyManagement::OutboundSetupIntentService::UpdateParams::PayoutMethodData::BankAccount))
             }
            attr_accessor :bank_account
            # The type specific details of the card payout method.
            sig {
              returns(T.nilable(::Stripe::V2::MoneyManagement::OutboundSetupIntentService::UpdateParams::PayoutMethodData::Card))
             }
            attr_accessor :card
            sig {
              params(type: String, bank_account: T.nilable(::Stripe::V2::MoneyManagement::OutboundSetupIntentService::UpdateParams::PayoutMethodData::BankAccount), card: T.nilable(::Stripe::V2::MoneyManagement::OutboundSetupIntentService::UpdateParams::PayoutMethodData::Card)).void
             }
            def initialize(type: nil, bank_account: nil, card: nil); end
          end
          # If provided, the existing payout method resource to link to this outbound setup intent.
          sig { returns(T.nilable(String)) }
          attr_accessor :payout_method
          # If no payout_method provided, used to create the underlying credential that is set up for outbound money movement.
          # If a payout_method provided, used to update data on the credential linked to this setup intent.
          sig {
            returns(T.nilable(::Stripe::V2::MoneyManagement::OutboundSetupIntentService::UpdateParams::PayoutMethodData))
           }
          attr_accessor :payout_method_data
          sig {
            params(payout_method: T.nilable(String), payout_method_data: T.nilable(::Stripe::V2::MoneyManagement::OutboundSetupIntentService::UpdateParams::PayoutMethodData)).void
           }
          def initialize(payout_method: nil, payout_method_data: nil); end
        end
        # Cancel an OutboundSetupIntent object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::OutboundSetupIntentService::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::MoneyManagement::OutboundSetupIntent)
         }
        def cancel(id, params = {}, opts = {}); end

        # Create an OutboundSetupIntent object.
        #
        # ** raises BlockedByStripeError
        # ** raises InvalidPayoutMethodError
        # ** raises QuotaExceededError
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::OutboundSetupIntentService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::MoneyManagement::OutboundSetupIntent)
         }
        def create(params = {}, opts = {}); end

        # List the OutboundSetupIntent objects.
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::OutboundSetupIntentService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieve an OutboundSetupIntent object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::OutboundSetupIntentService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::MoneyManagement::OutboundSetupIntent)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Update an OutboundSetupIntent object.
        #
        # ** raises QuotaExceededError
        # ** raises BlockedByStripeError
        # ** raises InvalidPayoutMethodError
        sig {
          params(id: String, params: T.any(::Stripe::V2::MoneyManagement::OutboundSetupIntentService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::MoneyManagement::OutboundSetupIntent)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end