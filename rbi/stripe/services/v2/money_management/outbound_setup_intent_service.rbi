# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class OutboundSetupIntentService < StripeService
        class ListParams < Stripe::RequestParams
          # The page size.
          sig { returns(T.nilable(Integer)) }
          def limit; end
          sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def limit=(_limit); end
          sig { params(limit: T.nilable(Integer)).void }
          def initialize(limit: nil); end
        end
        class CreateParams < Stripe::RequestParams
          class PayoutMethodData < Stripe::RequestParams
            class BankAccount < Stripe::RequestParams
              # The account number or IBAN of the bank account.
              sig { returns(String) }
              def account_number; end
              sig { params(_account_number: String).returns(String) }
              def account_number=(_account_number); end
              # Closed Enum. The type of the bank account (checking or savings).
              sig { returns(T.nilable(String)) }
              def bank_account_type; end
              sig { params(_bank_account_type: T.nilable(String)).returns(T.nilable(String)) }
              def bank_account_type=(_bank_account_type); end
              # The branch number of the bank account, if present.
              sig { returns(T.nilable(String)) }
              def branch_number; end
              sig { params(_branch_number: T.nilable(String)).returns(T.nilable(String)) }
              def branch_number=(_branch_number); end
              # The country code of the bank account.
              sig { returns(String) }
              def country; end
              sig { params(_country: String).returns(String) }
              def country=(_country); end
              # The routing number of the bank account, if present.
              sig { returns(T.nilable(String)) }
              def routing_number; end
              sig { params(_routing_number: T.nilable(String)).returns(T.nilable(String)) }
              def routing_number=(_routing_number); end
              # The swift code of the bank account, if present.
              sig { returns(T.nilable(String)) }
              def swift_code; end
              sig { params(_swift_code: T.nilable(String)).returns(T.nilable(String)) }
              def swift_code=(_swift_code); end
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
              def exp_month; end
              sig { params(_exp_month: String).returns(String) }
              def exp_month=(_exp_month); end
              # The expiration year of the card.
              sig { returns(String) }
              def exp_year; end
              sig { params(_exp_year: String).returns(String) }
              def exp_year=(_exp_year); end
              # The card number.
              sig { returns(String) }
              def number; end
              sig { params(_number: String).returns(String) }
              def number=(_number); end
              sig { params(exp_month: String, exp_year: String, number: String).void }
              def initialize(exp_month: nil, exp_year: nil, number: nil); end
            end
            class CryptoWallet < Stripe::RequestParams
              # Crypto wallet address.
              sig { returns(String) }
              def address; end
              sig { params(_address: String).returns(String) }
              def address=(_address); end
              # Optional field, required if network supports memos (only "stellar" currently).
              sig { returns(T.nilable(String)) }
              def memo; end
              sig { params(_memo: T.nilable(String)).returns(T.nilable(String)) }
              def memo=(_memo); end
              # Which rail we should use to make an Outbound money movement to this wallet.
              sig { returns(String) }
              def network; end
              sig { params(_network: String).returns(String) }
              def network=(_network); end
              sig { params(address: String, memo: T.nilable(String), network: String).void }
              def initialize(address: nil, memo: nil, network: nil); end
            end
            # Closed Enum. The type of payout method to be created.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            # The type specific details of the bank account payout method.
            sig {
              returns(T.nilable(::Stripe::V2::MoneyManagement::OutboundSetupIntentService::CreateParams::PayoutMethodData::BankAccount))
             }
            def bank_account; end
            sig {
              params(_bank_account: T.nilable(::Stripe::V2::MoneyManagement::OutboundSetupIntentService::CreateParams::PayoutMethodData::BankAccount)).returns(T.nilable(::Stripe::V2::MoneyManagement::OutboundSetupIntentService::CreateParams::PayoutMethodData::BankAccount))
             }
            def bank_account=(_bank_account); end
            # The type specific details of the card payout method.
            sig {
              returns(T.nilable(::Stripe::V2::MoneyManagement::OutboundSetupIntentService::CreateParams::PayoutMethodData::Card))
             }
            def card; end
            sig {
              params(_card: T.nilable(::Stripe::V2::MoneyManagement::OutboundSetupIntentService::CreateParams::PayoutMethodData::Card)).returns(T.nilable(::Stripe::V2::MoneyManagement::OutboundSetupIntentService::CreateParams::PayoutMethodData::Card))
             }
            def card=(_card); end
            # The type specific details of the crypto wallet payout method.
            sig {
              returns(T.nilable(::Stripe::V2::MoneyManagement::OutboundSetupIntentService::CreateParams::PayoutMethodData::CryptoWallet))
             }
            def crypto_wallet; end
            sig {
              params(_crypto_wallet: T.nilable(::Stripe::V2::MoneyManagement::OutboundSetupIntentService::CreateParams::PayoutMethodData::CryptoWallet)).returns(T.nilable(::Stripe::V2::MoneyManagement::OutboundSetupIntentService::CreateParams::PayoutMethodData::CryptoWallet))
             }
            def crypto_wallet=(_crypto_wallet); end
            sig {
              params(type: String, bank_account: T.nilable(::Stripe::V2::MoneyManagement::OutboundSetupIntentService::CreateParams::PayoutMethodData::BankAccount), card: T.nilable(::Stripe::V2::MoneyManagement::OutboundSetupIntentService::CreateParams::PayoutMethodData::Card), crypto_wallet: T.nilable(::Stripe::V2::MoneyManagement::OutboundSetupIntentService::CreateParams::PayoutMethodData::CryptoWallet)).void
             }
            def initialize(type: nil, bank_account: nil, card: nil, crypto_wallet: nil); end
          end
          # If provided, the existing payout method resource to link to this setup intent.
          # Any payout_method_data provided is used to update information on this linked payout method resource.
          sig { returns(T.nilable(String)) }
          def payout_method; end
          sig { params(_payout_method: T.nilable(String)).returns(T.nilable(String)) }
          def payout_method=(_payout_method); end
          # If no payout_method provided, used to create the underlying credential that is set up for outbound money movement.
          # If a payout_method provided, used to update data on the credential linked to this setup intent.
          sig {
            returns(T.nilable(::Stripe::V2::MoneyManagement::OutboundSetupIntentService::CreateParams::PayoutMethodData))
           }
          def payout_method_data; end
          sig {
            params(_payout_method_data: T.nilable(::Stripe::V2::MoneyManagement::OutboundSetupIntentService::CreateParams::PayoutMethodData)).returns(T.nilable(::Stripe::V2::MoneyManagement::OutboundSetupIntentService::CreateParams::PayoutMethodData))
           }
          def payout_method_data=(_payout_method_data); end
          # Specify which type of outbound money movement this credential should be set up for (payment | transfer).
          # If not provided, defaults to payment.
          sig { returns(T.nilable(String)) }
          def usage_intent; end
          sig { params(_usage_intent: T.nilable(String)).returns(T.nilable(String)) }
          def usage_intent=(_usage_intent); end
          sig {
            params(payout_method: T.nilable(String), payout_method_data: T.nilable(::Stripe::V2::MoneyManagement::OutboundSetupIntentService::CreateParams::PayoutMethodData), usage_intent: T.nilable(String)).void
           }
          def initialize(payout_method: nil, payout_method_data: nil, usage_intent: nil); end
        end
        class RetrieveParams < Stripe::RequestParams; end
        class UpdateParams < Stripe::RequestParams
          class PayoutMethodData < Stripe::RequestParams
            class BankAccount < Stripe::RequestParams
              # The account number or IBAN of the bank account.
              sig { returns(String) }
              def account_number; end
              sig { params(_account_number: String).returns(String) }
              def account_number=(_account_number); end
              # Closed Enum. The type of the bank account (checking or savings).
              sig { returns(T.nilable(String)) }
              def bank_account_type; end
              sig { params(_bank_account_type: T.nilable(String)).returns(T.nilable(String)) }
              def bank_account_type=(_bank_account_type); end
              # The branch number of the bank account, if present.
              sig { returns(T.nilable(String)) }
              def branch_number; end
              sig { params(_branch_number: T.nilable(String)).returns(T.nilable(String)) }
              def branch_number=(_branch_number); end
              # The country code of the bank account.
              sig { returns(String) }
              def country; end
              sig { params(_country: String).returns(String) }
              def country=(_country); end
              # The routing number of the bank account, if present.
              sig { returns(T.nilable(String)) }
              def routing_number; end
              sig { params(_routing_number: T.nilable(String)).returns(T.nilable(String)) }
              def routing_number=(_routing_number); end
              # The swift code of the bank account, if present.
              sig { returns(T.nilable(String)) }
              def swift_code; end
              sig { params(_swift_code: T.nilable(String)).returns(T.nilable(String)) }
              def swift_code=(_swift_code); end
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
              def exp_month; end
              sig { params(_exp_month: T.nilable(String)).returns(T.nilable(String)) }
              def exp_month=(_exp_month); end
              # The expiration year of the card.
              sig { returns(T.nilable(String)) }
              def exp_year; end
              sig { params(_exp_year: T.nilable(String)).returns(T.nilable(String)) }
              def exp_year=(_exp_year); end
              # The card number. This can only be passed when creating a new credential on an outbound setup intent in the requires_payout_method state.
              sig { returns(T.nilable(String)) }
              def number; end
              sig { params(_number: T.nilable(String)).returns(T.nilable(String)) }
              def number=(_number); end
              sig {
                params(exp_month: T.nilable(String), exp_year: T.nilable(String), number: T.nilable(String)).void
               }
              def initialize(exp_month: nil, exp_year: nil, number: nil); end
            end
            # Closed Enum. The type of payout method to be created/updated.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            # The type specific details of the bank account payout method.
            sig {
              returns(T.nilable(::Stripe::V2::MoneyManagement::OutboundSetupIntentService::UpdateParams::PayoutMethodData::BankAccount))
             }
            def bank_account; end
            sig {
              params(_bank_account: T.nilable(::Stripe::V2::MoneyManagement::OutboundSetupIntentService::UpdateParams::PayoutMethodData::BankAccount)).returns(T.nilable(::Stripe::V2::MoneyManagement::OutboundSetupIntentService::UpdateParams::PayoutMethodData::BankAccount))
             }
            def bank_account=(_bank_account); end
            # The type specific details of the card payout method.
            sig {
              returns(T.nilable(::Stripe::V2::MoneyManagement::OutboundSetupIntentService::UpdateParams::PayoutMethodData::Card))
             }
            def card; end
            sig {
              params(_card: T.nilable(::Stripe::V2::MoneyManagement::OutboundSetupIntentService::UpdateParams::PayoutMethodData::Card)).returns(T.nilable(::Stripe::V2::MoneyManagement::OutboundSetupIntentService::UpdateParams::PayoutMethodData::Card))
             }
            def card=(_card); end
            sig {
              params(type: String, bank_account: T.nilable(::Stripe::V2::MoneyManagement::OutboundSetupIntentService::UpdateParams::PayoutMethodData::BankAccount), card: T.nilable(::Stripe::V2::MoneyManagement::OutboundSetupIntentService::UpdateParams::PayoutMethodData::Card)).void
             }
            def initialize(type: nil, bank_account: nil, card: nil); end
          end
          # If provided, the existing payout method resource to link to this outbound setup intent.
          sig { returns(T.nilable(String)) }
          def payout_method; end
          sig { params(_payout_method: T.nilable(String)).returns(T.nilable(String)) }
          def payout_method=(_payout_method); end
          # If no payout_method provided, used to create the underlying credential that is set up for outbound money movement.
          # If a payout_method provided, used to update data on the credential linked to this setup intent.
          sig {
            returns(T.nilable(::Stripe::V2::MoneyManagement::OutboundSetupIntentService::UpdateParams::PayoutMethodData))
           }
          def payout_method_data; end
          sig {
            params(_payout_method_data: T.nilable(::Stripe::V2::MoneyManagement::OutboundSetupIntentService::UpdateParams::PayoutMethodData)).returns(T.nilable(::Stripe::V2::MoneyManagement::OutboundSetupIntentService::UpdateParams::PayoutMethodData))
           }
          def payout_method_data=(_payout_method_data); end
          sig {
            params(payout_method: T.nilable(String), payout_method_data: T.nilable(::Stripe::V2::MoneyManagement::OutboundSetupIntentService::UpdateParams::PayoutMethodData)).void
           }
          def initialize(payout_method: nil, payout_method_data: nil); end
        end
        class CancelParams < Stripe::RequestParams; end
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