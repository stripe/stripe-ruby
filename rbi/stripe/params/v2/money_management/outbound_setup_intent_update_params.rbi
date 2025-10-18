# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class OutboundSetupIntentUpdateParams < ::Stripe::RequestParams
        class PayoutMethodData < ::Stripe::RequestParams
          class BankAccount < ::Stripe::RequestParams
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
          class Card < ::Stripe::RequestParams
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
            returns(T.nilable(V2::MoneyManagement::OutboundSetupIntentUpdateParams::PayoutMethodData::BankAccount))
           }
          def bank_account; end
          sig {
            params(_bank_account: T.nilable(V2::MoneyManagement::OutboundSetupIntentUpdateParams::PayoutMethodData::BankAccount)).returns(T.nilable(V2::MoneyManagement::OutboundSetupIntentUpdateParams::PayoutMethodData::BankAccount))
           }
          def bank_account=(_bank_account); end
          # The type specific details of the card payout method.
          sig {
            returns(T.nilable(V2::MoneyManagement::OutboundSetupIntentUpdateParams::PayoutMethodData::Card))
           }
          def card; end
          sig {
            params(_card: T.nilable(V2::MoneyManagement::OutboundSetupIntentUpdateParams::PayoutMethodData::Card)).returns(T.nilable(V2::MoneyManagement::OutboundSetupIntentUpdateParams::PayoutMethodData::Card))
           }
          def card=(_card); end
          sig {
            params(type: String, bank_account: T.nilable(V2::MoneyManagement::OutboundSetupIntentUpdateParams::PayoutMethodData::BankAccount), card: T.nilable(V2::MoneyManagement::OutboundSetupIntentUpdateParams::PayoutMethodData::Card)).void
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
          returns(T.nilable(V2::MoneyManagement::OutboundSetupIntentUpdateParams::PayoutMethodData))
         }
        def payout_method_data; end
        sig {
          params(_payout_method_data: T.nilable(V2::MoneyManagement::OutboundSetupIntentUpdateParams::PayoutMethodData)).returns(T.nilable(V2::MoneyManagement::OutboundSetupIntentUpdateParams::PayoutMethodData))
         }
        def payout_method_data=(_payout_method_data); end
        sig {
          params(payout_method: T.nilable(String), payout_method_data: T.nilable(V2::MoneyManagement::OutboundSetupIntentUpdateParams::PayoutMethodData)).void
         }
        def initialize(payout_method: nil, payout_method_data: nil); end
      end
    end
  end
end