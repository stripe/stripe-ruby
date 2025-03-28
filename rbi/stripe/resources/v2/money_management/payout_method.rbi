# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # Use the PayoutMethods API to list and interact with PayoutMethod objects.
      class PayoutMethod < APIResource
        class UsageStatus < Stripe::StripeObject
          # Payments status.
          sig { returns(String) }
          attr_reader :payments
          # Transfers status.
          sig { returns(String) }
          attr_reader :transfers
        end
        class BankAccount < Stripe::StripeObject
          # Whether this PayoutMethodBankAccount object was archived. PayoutMethodBankAccount objects can be archived through
          # the /archive API, and they will not be automatically archived by Stripe. Archived PayoutMethodBankAccount objects
          # cannot be used as payout methods and will not appear in the payout method list.
          sig { returns(T::Boolean) }
          attr_reader :archived
          # The name of the bank this bank account is in. This field is populated automatically by Stripe.
          sig { returns(String) }
          attr_reader :bank_name
          # The country code of the bank account.
          sig { returns(String) }
          attr_reader :country
          # List of enabled flows for this bank account (wire or local).
          sig { returns(T::Array[String]) }
          attr_reader :enabled_delivery_options
          # The last 4 digits of the account number.
          sig { returns(String) }
          attr_reader :last4
          # The routing number of the bank account, if present.
          sig { returns(T.nilable(String)) }
          attr_reader :routing_number
          # The list of currencies supported by this bank account.
          sig { returns(T::Array[String]) }
          attr_reader :supported_currencies
        end
        class Card < Stripe::StripeObject
          # Whether the PayoutMethodCard object was archived. PayoutMethodCard objects can be archived through
          # the /archive API, and they will not be automatically archived by Stripe. Archived PayoutMethodCard objects
          # cannot be used as payout methods and will not appear in the payout method list.
          sig { returns(T::Boolean) }
          attr_reader :archived
          # The month the card expires.
          sig { returns(String) }
          attr_reader :exp_month
          # The year the card expires.
          sig { returns(String) }
          attr_reader :exp_year
          # The last 4 digits of the card number.
          sig { returns(String) }
          attr_reader :last4
        end
        # A set of available payout speeds for this payout method.
        sig { returns(T::Array[String]) }
        attr_reader :available_payout_speeds
        # Created timestamp.
        sig { returns(String) }
        attr_reader :created
        # ID of the PayoutMethod object.
        sig { returns(String) }
        attr_reader :id
        # ID of the underlying active OutboundSetupIntent object, if any.
        sig { returns(T.nilable(String)) }
        attr_reader :latest_outbound_setup_intent
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        attr_reader :object
        # Closed Enum. The type of payout method.
        sig { returns(String) }
        attr_reader :type
        # Indicates whether the payout method has met the necessary requirements for outbound money movement.
        sig { returns(UsageStatus) }
        attr_reader :usage_status
        # The PayoutMethodBankAccount object details.
        sig { returns(T.nilable(BankAccount)) }
        attr_reader :bank_account
        # The PayoutMethodCard object details.
        sig { returns(T.nilable(Card)) }
        attr_reader :card
      end
    end
  end
end