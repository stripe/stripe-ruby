# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # A TaxFund object represents a single tax float sweep event — funds moved between
  # a merchant's payments balance and their tax fund financial account for Stripe Tax obligations.
  class TaxFund < APIResource
    class Context < ::Stripe::StripeObject
      # Attribute for field checkout_session
      sig { returns(T.nilable(String)) }
      def checkout_session; end
      # Attribute for field credit_note
      sig { returns(T.nilable(String)) }
      def credit_note; end
      # Attribute for field invoice
      sig { returns(T.nilable(String)) }
      def invoice; end
      # Attribute for field payment_intent
      sig { returns(T.nilable(String)) }
      def payment_intent; end
      # Attribute for field refund
      sig { returns(T.nilable(String)) }
      def refund; end
      # Attribute for field tax_transaction
      sig { returns(T.nilable(String)) }
      def tax_transaction; end
      def self.inner_class_types
        @inner_class_types = {}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class Destination < ::Stripe::StripeObject
      class PaymentsBalance < ::Stripe::StripeObject
        # Attribute for field balance_transaction
        sig { returns(T.any(String, ::Stripe::BalanceTransaction)) }
        def balance_transaction; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class TaxFundAccount < ::Stripe::StripeObject
        # Attribute for field financial_account
        sig { returns(T.nilable(String)) }
        def financial_account; end
        # Attribute for field transaction
        sig { returns(T.nilable(String)) }
        def transaction; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Details about the payments balance side of the sweep.
      sig { returns(T.nilable(PaymentsBalance)) }
      def payments_balance; end
      # Details about the tax fund financial account side of the sweep.
      sig { returns(T.nilable(TaxFundAccount)) }
      def tax_fund_account; end
      # Attribute for field type
      sig { returns(String) }
      def type; end
      def self.inner_class_types
        @inner_class_types = {payments_balance: PaymentsBalance, tax_fund_account: TaxFundAccount}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class Source < ::Stripe::StripeObject
      class PaymentsBalance < ::Stripe::StripeObject
        # Attribute for field balance_transaction
        sig { returns(T.any(String, ::Stripe::BalanceTransaction)) }
        def balance_transaction; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class TaxFundAccount < ::Stripe::StripeObject
        # Attribute for field financial_account
        sig { returns(T.nilable(String)) }
        def financial_account; end
        # Attribute for field transaction
        sig { returns(T.nilable(String)) }
        def transaction; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Details about the payments balance side of the sweep.
      sig { returns(T.nilable(PaymentsBalance)) }
      def payments_balance; end
      # Details about the tax fund financial account side of the sweep.
      sig { returns(T.nilable(TaxFundAccount)) }
      def tax_fund_account; end
      # Attribute for field type
      sig { returns(String) }
      def type; end
      def self.inner_class_types
        @inner_class_types = {payments_balance: PaymentsBalance, tax_fund_account: TaxFundAccount}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class Trigger < ::Stripe::StripeObject
      # Attribute for field balance_transaction
      sig { returns(T.any(String, ::Stripe::BalanceTransaction)) }
      def balance_transaction; end
      # Attribute for field type
      sig { returns(String) }
      def type; end
      def self.inner_class_types
        @inner_class_types = {}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    # Amount swept, in the smallest currency unit. Always positive.
    sig { returns(Integer) }
    def amount; end
    # Associated billing or tax documents for this sweep.
    sig { returns(T.nilable(Context)) }
    def context; end
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    def created; end
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(String) }
    def currency; end
    # Where funds moved to.
    sig { returns(Destination) }
    def destination; end
    # Unique identifier for the object.
    sig { returns(String) }
    def id; end
    # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
    sig { returns(T::Boolean) }
    def livemode; end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
    # Where funds moved from.
    sig { returns(Source) }
    def source; end
    # What caused the sweep.
    sig { returns(Trigger) }
    def trigger; end
    # Returns a list of tax funds in reverse chronological order.
    sig {
      params(params: T.any(::Stripe::TaxFundListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
     }
    def self.list(params = {}, opts = {}); end
  end
end