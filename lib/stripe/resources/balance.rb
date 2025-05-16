# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # This is an object representing your Stripe balance. You can retrieve it to see
  # the balance currently on your Stripe account.
  #
  # You can also retrieve the balance history, which contains a list of
  # [transactions](https://stripe.com/docs/reporting/balance-transaction-types) that contributed to the balance
  # (charges, payouts, and so forth).
  #
  # The available and pending amounts for each currency are broken down further by
  # payment source types.
  #
  # Related guide: [Understanding Connect account balances](https://stripe.com/docs/connect/account-balances)
  class Balance < SingletonAPIResource
    OBJECT_NAME = "balance"
    def self.object_name
      "balance"
    end

    class Available < Stripe::StripeObject
      class SourceTypes < Stripe::StripeObject
        # Amount coming from [legacy US ACH payments](https://docs.stripe.com/ach-deprecated).
        attr_reader :bank_account
        # Amount coming from most payment methods, including cards as well as [non-legacy bank debits](https://docs.stripe.com/payments/bank-debits).
        attr_reader :card
        # Amount coming from [FPX](https://docs.stripe.com/payments/fpx), a Malaysian payment method.
        attr_reader :fpx
      end
      # Balance amount.
      attr_reader :amount
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      # Attribute for field source_types
      attr_reader :source_types
    end

    class ConnectReserved < Stripe::StripeObject
      class SourceTypes < Stripe::StripeObject
        # Amount coming from [legacy US ACH payments](https://docs.stripe.com/ach-deprecated).
        attr_reader :bank_account
        # Amount coming from most payment methods, including cards as well as [non-legacy bank debits](https://docs.stripe.com/payments/bank-debits).
        attr_reader :card
        # Amount coming from [FPX](https://docs.stripe.com/payments/fpx), a Malaysian payment method.
        attr_reader :fpx
      end
      # Balance amount.
      attr_reader :amount
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      # Attribute for field source_types
      attr_reader :source_types
    end

    class InstantAvailable < Stripe::StripeObject
      class NetAvailable < Stripe::StripeObject
        class SourceTypes < Stripe::StripeObject
          # Amount coming from [legacy US ACH payments](https://docs.stripe.com/ach-deprecated).
          attr_reader :bank_account
          # Amount coming from most payment methods, including cards as well as [non-legacy bank debits](https://docs.stripe.com/payments/bank-debits).
          attr_reader :card
          # Amount coming from [FPX](https://docs.stripe.com/payments/fpx), a Malaysian payment method.
          attr_reader :fpx
        end
        # Net balance amount, subtracting fees from platform-set pricing.
        attr_reader :amount
        # ID of the external account for this net balance (not expandable).
        attr_reader :destination
        # Attribute for field source_types
        attr_reader :source_types
      end

      class SourceTypes < Stripe::StripeObject
        # Amount coming from [legacy US ACH payments](https://docs.stripe.com/ach-deprecated).
        attr_reader :bank_account
        # Amount coming from most payment methods, including cards as well as [non-legacy bank debits](https://docs.stripe.com/payments/bank-debits).
        attr_reader :card
        # Amount coming from [FPX](https://docs.stripe.com/payments/fpx), a Malaysian payment method.
        attr_reader :fpx
      end
      # Balance amount.
      attr_reader :amount
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      # Breakdown of balance by destination.
      attr_reader :net_available
      # Attribute for field source_types
      attr_reader :source_types
    end

    class Issuing < Stripe::StripeObject
      class Available < Stripe::StripeObject
        class SourceTypes < Stripe::StripeObject
          # Amount coming from [legacy US ACH payments](https://docs.stripe.com/ach-deprecated).
          attr_reader :bank_account
          # Amount coming from most payment methods, including cards as well as [non-legacy bank debits](https://docs.stripe.com/payments/bank-debits).
          attr_reader :card
          # Amount coming from [FPX](https://docs.stripe.com/payments/fpx), a Malaysian payment method.
          attr_reader :fpx
        end
        # Balance amount.
        attr_reader :amount
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        attr_reader :currency
        # Attribute for field source_types
        attr_reader :source_types
      end
      # Funds that are available for use.
      attr_reader :available
    end

    class Pending < Stripe::StripeObject
      class SourceTypes < Stripe::StripeObject
        # Amount coming from [legacy US ACH payments](https://docs.stripe.com/ach-deprecated).
        attr_reader :bank_account
        # Amount coming from most payment methods, including cards as well as [non-legacy bank debits](https://docs.stripe.com/payments/bank-debits).
        attr_reader :card
        # Amount coming from [FPX](https://docs.stripe.com/payments/fpx), a Malaysian payment method.
        attr_reader :fpx
      end
      # Balance amount.
      attr_reader :amount
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      # Attribute for field source_types
      attr_reader :source_types
    end

    class RefundAndDisputePrefunding < Stripe::StripeObject
      class Available < Stripe::StripeObject
        class SourceTypes < Stripe::StripeObject
          # Amount coming from [legacy US ACH payments](https://docs.stripe.com/ach-deprecated).
          attr_reader :bank_account
          # Amount coming from most payment methods, including cards as well as [non-legacy bank debits](https://docs.stripe.com/payments/bank-debits).
          attr_reader :card
          # Amount coming from [FPX](https://docs.stripe.com/payments/fpx), a Malaysian payment method.
          attr_reader :fpx
        end
        # Balance amount.
        attr_reader :amount
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        attr_reader :currency
        # Attribute for field source_types
        attr_reader :source_types
      end

      class Pending < Stripe::StripeObject
        class SourceTypes < Stripe::StripeObject
          # Amount coming from [legacy US ACH payments](https://docs.stripe.com/ach-deprecated).
          attr_reader :bank_account
          # Amount coming from most payment methods, including cards as well as [non-legacy bank debits](https://docs.stripe.com/payments/bank-debits).
          attr_reader :card
          # Amount coming from [FPX](https://docs.stripe.com/payments/fpx), a Malaysian payment method.
          attr_reader :fpx
        end
        # Balance amount.
        attr_reader :amount
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        attr_reader :currency
        # Attribute for field source_types
        attr_reader :source_types
      end
      # Funds that are available for use.
      attr_reader :available
      # Funds that are pending
      attr_reader :pending
    end
    # Available funds that you can transfer or pay out automatically by Stripe or explicitly through the [Transfers API](https://stripe.com/docs/api#transfers) or [Payouts API](https://stripe.com/docs/api#payouts). You can find the available balance for each currency and payment type in the `source_types` property.
    attr_reader :available
    # Funds held due to negative balances on connected accounts where [account.controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `application`, which includes Custom accounts. You can find the connect reserve balance for each currency and payment type in the `source_types` property.
    attr_reader :connect_reserved
    # Funds that you can pay out using Instant Payouts.
    attr_reader :instant_available
    # Attribute for field issuing
    attr_reader :issuing
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # Funds that aren't available in the balance yet. You can find the pending balance for each currency and each payment type in the `source_types` property.
    attr_reader :pending
    # Attribute for field refund_and_dispute_prefunding
    attr_reader :refund_and_dispute_prefunding
  end
end
