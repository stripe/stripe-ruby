# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Balance transfers represent funds moving between balance types on your Stripe account.
  # They currently support moving funds between your Stripe balance and your [Issuing](https://stripe.com/docs/issuing) balance and between your [Allocated Funds](https://stripe.com/docs/connect/funds-segregation) balance and your Stripe balance.
  class BalanceTransfer < APIResource
    class DestinationBalance < ::Stripe::StripeObject
      class Issuing < ::Stripe::StripeObject
        # Identifier for the balance_transaction that increased the destination balance.
        sig { returns(T.nilable(T.any(String, ::Stripe::BalanceTransaction))) }
        def balance_transaction; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class Payments < ::Stripe::StripeObject
        # Identifier for the balance_transaction that increased the destination balance.
        sig { returns(T.nilable(T.any(String, ::Stripe::BalanceTransaction))) }
        def balance_transaction; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Attribute for field issuing
      sig { returns(T.nilable(Issuing)) }
      def issuing; end
      # Attribute for field payments
      sig { returns(T.nilable(Payments)) }
      def payments; end
      # Destination balance type to adjust for the Balance Transfer. One of `payments`, `issuing`, or `allocated_funds`.
      sig { returns(String) }
      def type; end
      def self.inner_class_types
        @inner_class_types = {issuing: Issuing, payments: Payments}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class SourceBalance < ::Stripe::StripeObject
      class Issuing < ::Stripe::StripeObject
        # Identifier for the balance_transaction that decreased the source balance.
        sig { returns(T.nilable(T.any(String, ::Stripe::BalanceTransaction))) }
        def balance_transaction; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class Payments < ::Stripe::StripeObject
        # Identifier for the balance_transaction that decreased the source balance.
        sig { returns(T.any(String, ::Stripe::BalanceTransaction)) }
        def balance_transaction; end
        # The payments balance type that this BalanceTransfer pulled funds from. One of `card`, `fpx`, or `bank_account`.
        sig { returns(T.nilable(String)) }
        def source_type; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Attribute for field issuing
      sig { returns(T.nilable(Issuing)) }
      def issuing; end
      # Attribute for field payments
      sig { returns(T.nilable(Payments)) }
      def payments; end
      # Source balance type to adjust for the Balance Transfer. One of `payments`, `issuing`, or `allocated_funds`.
      sig { returns(String) }
      def type; end
      def self.inner_class_types
        @inner_class_types = {issuing: Issuing, payments: Payments}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    # A positive integer representing how much was transferred in the smallest currency unit.
    sig { returns(Integer) }
    def amount; end
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    def created; end
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(String) }
    def currency; end
    # The balance that funds were transferred to.
    sig { returns(T.nilable(DestinationBalance)) }
    def destination_balance; end
    # A [hosted transaction receipt](https://stripe.com/docs/treasury/moving-money/regulatory-receipts) URL that is provided when money movement is considered regulated under Stripe's money transmission licenses.
    sig { returns(T.nilable(String)) }
    def hosted_regulatory_receipt_url; end
    # Unique identifier for the object.
    sig { returns(String) }
    def id; end
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    def livemode; end
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T::Hash[String, String]) }
    def metadata; end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
    # The balance that funds were transferred from. One of `card`, `fpx`, or `bank_account`.
    sig { returns(T.nilable(SourceBalance)) }
    def source_balance; end
    # Creates a balance transfer. For Issuing use cases, funds will be debited immediately from the source balance and credited to the destination balance immediately (if your account is based in the US) or next-business-day (if your account is based in the EU). For Segregated Separate Charges and Transfers use cases, funds will be debited immediately from the source balance and credited immediately to the destination balance.
    sig {
      params(params: T.any(::Stripe::BalanceTransferCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::BalanceTransfer)
     }
    def self.create(params = {}, opts = {}); end
  end
end