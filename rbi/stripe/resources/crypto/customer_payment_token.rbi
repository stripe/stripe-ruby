# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Crypto
    # A read-only representation of a user's PaymentMethod for use in Crypto On Ramp transactions.
    class CustomerPaymentToken < APIResource
      class Card < ::Stripe::StripeObject
        class Wallet < ::Stripe::StripeObject
          # The type of the card wallet, one of `apple_pay` or `google_pay`.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Card brand. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `jcb`, `link`, `mastercard`, `unionpay`, `visa` or `unknown`.
        sig { returns(T.nilable(String)) }
        def brand; end
        # Two-digit number representing the card’s expiration month.
        sig { returns(T.nilable(Integer)) }
        def exp_month; end
        # Four-digit number representing the card’s expiration year.
        sig { returns(T.nilable(Integer)) }
        def exp_year; end
        # Card funding type. Can be `credit`, `debit`, `prepaid`, or `unknown`.
        sig { returns(String) }
        def funding; end
        # The last four digits of the card.
        sig { returns(T.nilable(String)) }
        def last4; end
        # If this Card is part of a card wallet, this contains the details of the card wallet.
        sig { returns(T.nilable(Wallet)) }
        def wallet; end
        def self.inner_class_types
          @inner_class_types = {wallet: Wallet}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class UsBankAccount < ::Stripe::StripeObject
        # Account type: `checkings` or `savings`.
        sig { returns(T.nilable(String)) }
        def account_type; end
        # The name of the bank.
        sig { returns(T.nilable(String)) }
        def bank_name; end
        # Last four digits of the bank account number.
        sig { returns(T.nilable(String)) }
        def last4; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # A `card` PaymentToken, this hash contains details of the card PaymentToken.
      sig { returns(T.nilable(Card)) }
      def card; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # Type of the Payment Token.
      sig { returns(String) }
      def type; end
      # A `us_bank_account` PaymentToken, this hash contains details of the US bank account PaymentToken.
      sig { returns(T.nilable(UsBankAccount)) }
      def us_bank_account; end
    end
  end
end