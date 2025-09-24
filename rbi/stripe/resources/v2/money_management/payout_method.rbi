# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # Use the PayoutMethods API to list and interact with PayoutMethod objects.
      class PayoutMethod < APIResource
        class UsageStatus < Stripe::StripeObject
          # Payments status - used when sending OutboundPayments (sending funds to recipients).
          sig { returns(String) }
          def payments; end
          # Transfers status - used when making an OutboundTransfer (sending funds to yourself).
          sig { returns(String) }
          def transfers; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class BankAccount < Stripe::StripeObject
          # Whether this PayoutMethodBankAccount object was archived. PayoutMethodBankAccount objects can be archived through
          # the /archive API, and they will not be automatically archived by Stripe. Archived PayoutMethodBankAccount objects
          # cannot be used as payout methods and will not appear in the payout method list.
          sig { returns(T::Boolean) }
          def archived; end
          # The type of bank account (checking or savings).
          sig { returns(String) }
          def bank_account_type; end
          # The name of the bank this bank account is in. This field is populated automatically by Stripe.
          sig { returns(String) }
          def bank_name; end
          # The country code of the bank account.
          sig { returns(String) }
          def country; end
          # List of enabled flows for this bank account (wire or local).
          sig { returns(T::Array[String]) }
          def enabled_delivery_options; end
          # The last 4 digits of the account number.
          sig { returns(String) }
          def last4; end
          # The routing number of the bank account, if present.
          sig { returns(T.nilable(String)) }
          def routing_number; end
          # The list of currencies supported by this bank account.
          sig { returns(T::Array[String]) }
          def supported_currencies; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Card < Stripe::StripeObject
          # Whether the PayoutMethodCard object was archived. PayoutMethodCard objects can be archived through
          # the /archive API, and they will not be automatically archived by Stripe. Archived PayoutMethodCard objects
          # cannot be used as payout methods and will not appear in the payout method list.
          sig { returns(T::Boolean) }
          def archived; end
          # The month the card expires.
          sig { returns(String) }
          def exp_month; end
          # The year the card expires.
          sig { returns(String) }
          def exp_year; end
          # The last 4 digits of the card number.
          sig { returns(String) }
          def last4; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class CryptoWallet < Stripe::StripeObject
          # Destination wallet address.
          sig { returns(String) }
          def address; end
          # Whether the crypto wallet was archived. Crypto wallets can be archived through the /archive API,
          # and they will not be automatically archived by Stripe. Archived crypto wallets cannot be used as
          # payout method and will not appear in the payout method list.
          sig { returns(T::Boolean) }
          def archived; end
          # Optional field, required if network supports memos (only "stellar" currently).
          sig { returns(T.nilable(String)) }
          def memo; end
          # Which rail is being used to make an outbound money movement to this wallet.
          sig { returns(String) }
          def network; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # A set of available payout speeds for this payout method.
        sig { returns(T::Array[String]) }
        def available_payout_speeds; end
        # Created timestamp.
        sig { returns(String) }
        def created; end
        # ID of the PayoutMethod object.
        sig { returns(String) }
        def id; end
        # ID of the underlying active OutboundSetupIntent object, if any.
        sig { returns(T.nilable(String)) }
        def latest_outbound_setup_intent; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # Closed Enum. The type of payout method.
        sig { returns(String) }
        def type; end
        # Indicates whether the payout method has met the necessary requirements for outbound money movement.
        sig { returns(UsageStatus) }
        def usage_status; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # The PayoutMethodBankAccount object details.
        sig { returns(T.nilable(BankAccount)) }
        def bank_account; end
        # The PayoutMethodCard object details.
        sig { returns(T.nilable(Card)) }
        def card; end
        # The PayoutMethodCryptoWallet object details.
        sig { returns(T.nilable(CryptoWallet)) }
        def crypto_wallet; end
      end
    end
  end
end