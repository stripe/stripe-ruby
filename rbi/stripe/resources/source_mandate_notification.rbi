# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Source mandate notifications should be created when a notification related to
  # a source mandate must be sent to the payer. They will trigger a webhook or
  # deliver an email to the customer.
  class SourceMandateNotification < APIResource
    class AcssDebit < Stripe::StripeObject
      # The statement descriptor associate with the debit.
      sig { returns(String) }
      attr_reader :statement_descriptor
    end
    class BacsDebit < Stripe::StripeObject
      # Last 4 digits of the account number associated with the debit.
      sig { returns(String) }
      attr_reader :last4
    end
    class SepaDebit < Stripe::StripeObject
      # SEPA creditor ID.
      sig { returns(String) }
      attr_reader :creditor_identifier
      # Last 4 digits of the account number associated with the debit.
      sig { returns(String) }
      attr_reader :last4
      # Mandate reference associated with the debit.
      sig { returns(String) }
      attr_reader :mandate_reference
    end
    # Attribute for field acss_debit
    sig { returns(AcssDebit) }
    attr_reader :acss_debit

    # A positive integer in the smallest currency unit (that is, 100 cents for $1.00, or 1 for ¥1, Japanese Yen being a zero-decimal currency) representing the amount associated with the mandate notification. The amount is expressed in the currency of the underlying source. Required if the notification type is `debit_initiated`.
    sig { returns(T.nilable(Integer)) }
    attr_reader :amount

    # Attribute for field bacs_debit
    sig { returns(BacsDebit) }
    attr_reader :bacs_debit

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created

    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode

    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object

    # The reason of the mandate notification. Valid reasons are `mandate_confirmed` or `debit_initiated`.
    sig { returns(String) }
    attr_reader :reason

    # Attribute for field sepa_debit
    sig { returns(SepaDebit) }
    attr_reader :sepa_debit

    # `Source` objects allow you to accept a variety of payment methods. They
    # represent a customer's payment instrument, and can be used with the Stripe API
    # just like a `Card` object: once chargeable, they can be charged, or can be
    # attached to customers.
    #
    # Stripe doesn't recommend using the deprecated [Sources API](https://stripe.com/docs/api/sources).
    # We recommend that you adopt the [PaymentMethods API](https://stripe.com/docs/api/payment_methods).
    # This newer API provides access to our latest features and payment method types.
    #
    # Related guides: [Sources API](https://stripe.com/docs/sources) and [Sources & Customers](https://stripe.com/docs/sources/customers).
    sig { returns(Stripe::Source) }
    attr_reader :source

    # The status of the mandate notification. Valid statuses are `pending` or `submitted`.
    sig { returns(String) }
    attr_reader :status

    # The type of source this mandate notification is attached to. Should be the source type identifier code for the payment method, such as `three_d_secure`.
    sig { returns(String) }
    attr_reader :type
  end
end