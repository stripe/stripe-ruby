# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # This is an object representing your Stripe balance. You can retrieve it to see
  # the balance currently on your Stripe account.
  #
  # The top-level `available` and `pending` comprise your "payments balance."
  #
  # Related guide: [Balances and settlement time](https://stripe.com/docs/payments/balances), [Understanding Connect account balances](https://stripe.com/docs/connect/account-balances)
  class Balance < SingletonAPIResource
    class Available < Stripe::StripeObject
      class SourceTypes < Stripe::StripeObject
        # Amount coming from [legacy US ACH payments](https://docs.stripe.com/ach-deprecated).
        sig { returns(Integer) }
        def bank_account; end
        # Amount coming from most payment methods, including cards as well as [non-legacy bank debits](https://docs.stripe.com/payments/bank-debits).
        sig { returns(Integer) }
        def card; end
        # Amount coming from [FPX](https://docs.stripe.com/payments/fpx), a Malaysian payment method.
        sig { returns(Integer) }
        def fpx; end
      end
      # Balance amount.
      sig { returns(Integer) }
      def amount; end
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      def currency; end
      # Attribute for field source_types
      sig { returns(SourceTypes) }
      def source_types; end
    end
    class ConnectReserved < Stripe::StripeObject
      class SourceTypes < Stripe::StripeObject
        # Amount coming from [legacy US ACH payments](https://docs.stripe.com/ach-deprecated).
        sig { returns(Integer) }
        def bank_account; end
        # Amount coming from most payment methods, including cards as well as [non-legacy bank debits](https://docs.stripe.com/payments/bank-debits).
        sig { returns(Integer) }
        def card; end
        # Amount coming from [FPX](https://docs.stripe.com/payments/fpx), a Malaysian payment method.
        sig { returns(Integer) }
        def fpx; end
      end
      # Balance amount.
      sig { returns(Integer) }
      def amount; end
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      def currency; end
      # Attribute for field source_types
      sig { returns(SourceTypes) }
      def source_types; end
    end
    class InstantAvailable < Stripe::StripeObject
      class NetAvailable < Stripe::StripeObject
        class SourceTypes < Stripe::StripeObject
          # Amount coming from [legacy US ACH payments](https://docs.stripe.com/ach-deprecated).
          sig { returns(Integer) }
          def bank_account; end
          # Amount coming from most payment methods, including cards as well as [non-legacy bank debits](https://docs.stripe.com/payments/bank-debits).
          sig { returns(Integer) }
          def card; end
          # Amount coming from [FPX](https://docs.stripe.com/payments/fpx), a Malaysian payment method.
          sig { returns(Integer) }
          def fpx; end
        end
        # Net balance amount, subtracting fees from platform-set pricing.
        sig { returns(Integer) }
        def amount; end
        # ID of the external account for this net balance (not expandable).
        sig { returns(String) }
        def destination; end
        # Attribute for field source_types
        sig { returns(SourceTypes) }
        def source_types; end
      end
      class SourceTypes < Stripe::StripeObject
        # Amount coming from [legacy US ACH payments](https://docs.stripe.com/ach-deprecated).
        sig { returns(Integer) }
        def bank_account; end
        # Amount coming from most payment methods, including cards as well as [non-legacy bank debits](https://docs.stripe.com/payments/bank-debits).
        sig { returns(Integer) }
        def card; end
        # Amount coming from [FPX](https://docs.stripe.com/payments/fpx), a Malaysian payment method.
        sig { returns(Integer) }
        def fpx; end
      end
      # Balance amount.
      sig { returns(Integer) }
      def amount; end
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      def currency; end
      # Breakdown of balance by destination.
      sig { returns(T::Array[NetAvailable]) }
      def net_available; end
      # Attribute for field source_types
      sig { returns(SourceTypes) }
      def source_types; end
    end
    class Issuing < Stripe::StripeObject
      class Available < Stripe::StripeObject
        class SourceTypes < Stripe::StripeObject
          # Amount coming from [legacy US ACH payments](https://docs.stripe.com/ach-deprecated).
          sig { returns(Integer) }
          def bank_account; end
          # Amount coming from most payment methods, including cards as well as [non-legacy bank debits](https://docs.stripe.com/payments/bank-debits).
          sig { returns(Integer) }
          def card; end
          # Amount coming from [FPX](https://docs.stripe.com/payments/fpx), a Malaysian payment method.
          sig { returns(Integer) }
          def fpx; end
        end
        # Balance amount.
        sig { returns(Integer) }
        def amount; end
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(String) }
        def currency; end
        # Attribute for field source_types
        sig { returns(SourceTypes) }
        def source_types; end
      end
      # Funds that are available for use.
      sig { returns(T::Array[Available]) }
      def available; end
    end
    class Pending < Stripe::StripeObject
      class SourceTypes < Stripe::StripeObject
        # Amount coming from [legacy US ACH payments](https://docs.stripe.com/ach-deprecated).
        sig { returns(Integer) }
        def bank_account; end
        # Amount coming from most payment methods, including cards as well as [non-legacy bank debits](https://docs.stripe.com/payments/bank-debits).
        sig { returns(Integer) }
        def card; end
        # Amount coming from [FPX](https://docs.stripe.com/payments/fpx), a Malaysian payment method.
        sig { returns(Integer) }
        def fpx; end
      end
      # Balance amount.
      sig { returns(Integer) }
      def amount; end
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      def currency; end
      # Attribute for field source_types
      sig { returns(SourceTypes) }
      def source_types; end
    end
    class RefundAndDisputePrefunding < Stripe::StripeObject
      class Available < Stripe::StripeObject
        class SourceTypes < Stripe::StripeObject
          # Amount coming from [legacy US ACH payments](https://docs.stripe.com/ach-deprecated).
          sig { returns(Integer) }
          def bank_account; end
          # Amount coming from most payment methods, including cards as well as [non-legacy bank debits](https://docs.stripe.com/payments/bank-debits).
          sig { returns(Integer) }
          def card; end
          # Amount coming from [FPX](https://docs.stripe.com/payments/fpx), a Malaysian payment method.
          sig { returns(Integer) }
          def fpx; end
        end
        # Balance amount.
        sig { returns(Integer) }
        def amount; end
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(String) }
        def currency; end
        # Attribute for field source_types
        sig { returns(SourceTypes) }
        def source_types; end
      end
      class Pending < Stripe::StripeObject
        class SourceTypes < Stripe::StripeObject
          # Amount coming from [legacy US ACH payments](https://docs.stripe.com/ach-deprecated).
          sig { returns(Integer) }
          def bank_account; end
          # Amount coming from most payment methods, including cards as well as [non-legacy bank debits](https://docs.stripe.com/payments/bank-debits).
          sig { returns(Integer) }
          def card; end
          # Amount coming from [FPX](https://docs.stripe.com/payments/fpx), a Malaysian payment method.
          sig { returns(Integer) }
          def fpx; end
        end
        # Balance amount.
        sig { returns(Integer) }
        def amount; end
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(String) }
        def currency; end
        # Attribute for field source_types
        sig { returns(SourceTypes) }
        def source_types; end
      end
      # Funds that are available for use.
      sig { returns(T::Array[Available]) }
      def available; end
      # Funds that are pending
      sig { returns(T::Array[Pending]) }
      def pending; end
    end
    # Available funds that you can transfer or pay out automatically by Stripe or explicitly through the [Transfers API](https://stripe.com/docs/api#transfers) or [Payouts API](https://stripe.com/docs/api#payouts). You can find the available balance for each currency and payment type in the `source_types` property.
    sig { returns(T::Array[Available]) }
    def available; end
    # Funds held due to negative balances on connected accounts where [account.controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts. You can find the connect reserve balance for each currency and payment type in the `source_types` property.
    sig { returns(T::Array[ConnectReserved]) }
    def connect_reserved; end
    # Funds that you can pay out using Instant Payouts.
    sig { returns(T::Array[InstantAvailable]) }
    def instant_available; end
    # Attribute for field issuing
    sig { returns(Issuing) }
    def issuing; end
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    def livemode; end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
    # Funds that aren't available in the balance yet. You can find the pending balance for each currency and each payment type in the `source_types` property.
    sig { returns(T::Array[Pending]) }
    def pending; end
    # Attribute for field refund_and_dispute_prefunding
    sig { returns(RefundAndDisputePrefunding) }
    def refund_and_dispute_prefunding; end
  end
end