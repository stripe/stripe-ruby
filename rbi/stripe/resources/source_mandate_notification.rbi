# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Source mandate notifications should be created when a notification related to
  # a source mandate must be sent to the payer. They will trigger a webhook or
  # deliver an email to the customer.
  class SourceMandateNotification < APIResource
    class AcssDebit < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :statement_descriptor
    end
    class BacsDebit < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :last4
    end
    class SepaDebit < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :creditor_identifier
      sig { returns(String) }
      attr_reader :last4
      sig { returns(String) }
      attr_reader :mandate_reference
    end
    sig { returns(AcssDebit) }
    # Attribute for field acss_debit
    attr_reader :acss_debit
    sig { returns(T.nilable(Integer)) }
    # A positive integer in the smallest currency unit (that is, 100 cents for $1.00, or 1 for ¥1, Japanese Yen being a zero-decimal currency) representing the amount associated with the mandate notification. The amount is expressed in the currency of the underlying source. Required if the notification type is `debit_initiated`.
    attr_reader :amount
    sig { returns(BacsDebit) }
    # Attribute for field bacs_debit
    attr_reader :bacs_debit
    sig { returns(Integer) }
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(String) }
    # The reason of the mandate notification. Valid reasons are `mandate_confirmed` or `debit_initiated`.
    attr_reader :reason
    sig { returns(SepaDebit) }
    # Attribute for field sepa_debit
    attr_reader :sepa_debit
    sig { returns(Stripe::Source) }
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
    attr_reader :source
    sig { returns(String) }
    # The status of the mandate notification. Valid statuses are `pending` or `submitted`.
    attr_reader :status
    sig { returns(String) }
    # The type of source this mandate notification is attached to. Should be the source type identifier code for the payment method, such as `three_d_secure`.
    attr_reader :type
  end
end