# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Crypto
    # A read-only representation of a user's PaymentMethod for use in Crypto On Ramp transactions.
    class CustomerPaymentToken < APIResource
      OBJECT_NAME = "crypto.payment_token"
      def self.object_name
        "crypto.payment_token"
      end

      class Card < ::Stripe::StripeObject
        class Wallet < ::Stripe::StripeObject
          # The type of the card wallet, one of `apple_pay` or `google_pay`.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Card brand. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `jcb`, `link`, `mastercard`, `unionpay`, `visa` or `unknown`.
        attr_reader :brand
        # Two-digit number representing the card’s expiration month.
        attr_reader :exp_month
        # Four-digit number representing the card’s expiration year.
        attr_reader :exp_year
        # Card funding type. Can be `credit`, `debit`, `prepaid`, or `unknown`.
        attr_reader :funding
        # The last four digits of the card.
        attr_reader :last4
        # If this Card is part of a card wallet, this contains the details of the card wallet.
        attr_reader :wallet

        def self.inner_class_types
          @inner_class_types = { wallet: Wallet }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class UsBankAccount < ::Stripe::StripeObject
        # Account type: `checkings` or `savings`.
        attr_reader :account_type
        # The name of the bank.
        attr_reader :bank_name
        # Last four digits of the bank account number.
        attr_reader :last4

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # A `card` PaymentToken, this hash contains details of the card PaymentToken.
      attr_reader :card
      # Unique identifier for the object.
      attr_reader :id
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # Type of the Payment Token.
      attr_reader :type
      # A `us_bank_account` PaymentToken, this hash contains details of the US bank account PaymentToken.
      attr_reader :us_bank_account

      def self.inner_class_types
        @inner_class_types = { card: Card, us_bank_account: UsBankAccount }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
