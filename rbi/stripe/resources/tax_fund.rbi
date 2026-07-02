# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # A TaxFund object represents a single tax float sweep event — funds moved between
  # a merchant's payments balance and their tax fund financial account for Stripe Tax obligations.
  class TaxFund < APIResource
    class Context < ::Stripe::StripeObject
      # The Checkout Session associated with this sweep, if any.
      sig { returns(T.nilable(String)) }
      def checkout_session; end
      # The Credit Note associated with this sweep, if any.
      sig { returns(T.nilable(String)) }
      def credit_note; end
      # The Invoice associated with this sweep, if any.
      sig { returns(T.nilable(String)) }
      def invoice; end
      # The PaymentIntent associated with this sweep, if any.
      sig { returns(T.nilable(String)) }
      def payment_intent; end
      # The Refund associated with this sweep, if any.
      sig { returns(T.nilable(String)) }
      def refund; end
      # The Tax Transaction associated with this sweep, if any.
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
        # The balance transaction on the payments balance side of the sweep.
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
        # The tax fund financial account involved in the sweep.
        sig { returns(T.nilable(String)) }
        def financial_account; end
        # The financial account transaction on the tax fund account side of the sweep.
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
      # The type of account funds moved to or from. Either `payments_balance` or `tax_fund_account`.
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
        # The balance transaction on the payments balance side of the sweep.
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
        # The tax fund financial account involved in the sweep.
        sig { returns(T.nilable(String)) }
        def financial_account; end
        # The financial account transaction on the tax fund account side of the sweep.
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
      # The type of account funds moved to or from. Either `payments_balance` or `tax_fund_account`.
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
      # The balance transaction on the payments balance that triggered the sweep.
      sig { returns(T.any(String, ::Stripe::BalanceTransaction)) }
      def balance_transaction; end
      # The type of event that triggered the sweep. Always `balance_transaction`.
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