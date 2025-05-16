# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Invoice Payments represent payments made against invoices. Invoice Payments can
  # be accessed in two ways:
  # 1. By expanding the `payments` field on the [Invoice](https://stripe.com/docs/api#invoice) resource.
  # 2. By using the Invoice Payment retrieve and list endpoints.
  #
  # Invoice Payments include the mapping between payment objects, such as Payment Intent, and Invoices.
  # This resource and its endpoints allows you to easily track if a payment is associated with a specific invoice and
  # monitor the allocation details of the payments.
  class InvoicePayment < APIResource
    class Payment < Stripe::StripeObject
      # ID of the successful charge for this payment when `type` is `charge`.Note: charge is only surfaced if the charge object is not associated with a payment intent. If the charge object does have a payment intent, the Invoice Payment surfaces the payment intent instead.
      sig { returns(T.any(String, Stripe::Charge)) }
      attr_reader :charge
      # ID of the PaymentIntent associated with this payment when `type` is `payment_intent`. Note: This property is only populated for invoices finalized on or after March 15th, 2019.
      sig { returns(T.any(String, Stripe::PaymentIntent)) }
      attr_reader :payment_intent
      # Type of payment object associated with this invoice payment.
      sig { returns(String) }
      attr_reader :type
    end
    class StatusTransitions < Stripe::StripeObject
      # The time that the payment was canceled.
      sig { returns(T.nilable(Integer)) }
      attr_reader :canceled_at
      # The time that the payment succeeded.
      sig { returns(T.nilable(Integer)) }
      attr_reader :paid_at
    end
    # Amount that was actually paid for this invoice, in cents (or local equivalent). This field is null until the payment is `paid`. This amount can be less than the `amount_requested` if the PaymentIntent’s `amount_received` is not sufficient to pay all of the invoices that it is attached to.
    sig { returns(T.nilable(Integer)) }
    attr_reader :amount_paid
    # Amount intended to be paid toward this invoice, in cents (or local equivalent)
    sig { returns(Integer) }
    attr_reader :amount_requested
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(String) }
    attr_reader :currency
    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id
    # The invoice that was paid.
    sig { returns(T.any(String, Stripe::Invoice)) }
    attr_reader :invoice
    # Stripe automatically creates a default InvoicePayment when the invoice is finalized, and keeps it synchronized with the invoice’s `amount_remaining`. The PaymentIntent associated with the default payment can’t be edited or canceled directly.
    sig { returns(T::Boolean) }
    attr_reader :is_default
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object
    # Attribute for field payment
    sig { returns(Payment) }
    attr_reader :payment
    # The status of the payment, one of `open`, `paid`, or `canceled`.
    sig { returns(String) }
    attr_reader :status
    # Attribute for field status_transitions
    sig { returns(StatusTransitions) }
    attr_reader :status_transitions
    class ListParams < Stripe::RequestParams
      class Payment < Stripe::RequestParams
        # Only return invoice payments associated by this payment intent ID.
        sig { returns(T.nilable(String)) }
        attr_accessor :payment_intent
        # Only return invoice payments associated by this payment type.
        sig { returns(String) }
        attr_accessor :type
        sig { params(payment_intent: T.nilable(String), type: String).void }
        def initialize(payment_intent: nil, type: nil); end
      end
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # The identifier of the invoice whose payments to return.
      sig { returns(T.nilable(String)) }
      attr_accessor :invoice
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :limit
      # The payment details of the invoice payments to return.
      sig { returns(T.nilable(::Stripe::InvoicePayment::ListParams::Payment)) }
      attr_accessor :payment
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :starting_after
      # The status of the invoice payments to return.
      sig { returns(T.nilable(String)) }
      attr_accessor :status
      sig {
        params(ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), invoice: T.nilable(String), limit: T.nilable(Integer), payment: T.nilable(::Stripe::InvoicePayment::ListParams::Payment), starting_after: T.nilable(String), status: T.nilable(String)).void
       }
      def initialize(
        ending_before: nil,
        expand: nil,
        invoice: nil,
        limit: nil,
        payment: nil,
        starting_after: nil,
        status: nil
      ); end
    end
    # When retrieving an invoice, there is an includable payments property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of payments.
    sig {
      params(params: T.any(::Stripe::InvoicePayment::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def self.list(params = {}, opts = {}); end
  end
end