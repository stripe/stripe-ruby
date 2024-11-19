# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A Payment Record is a resource that allows you to represent payments that occur on- or off-Stripe.
  # For example, you can create a Payment Record to model a payment made on a different payment processor,
  # in order to mark an Invoice as paid and a Subscription as active. Payment Records consist of one or
  # more Payment Attempt Records, which represent individual attempts made on a payment network.
  class PaymentRecord < APIResource
    OBJECT_NAME = "payment_record"
    def self.object_name
      "payment_record"
    end

    class AmountCanceled < Stripe::StripeObject
      attr_reader :currency, :value
    end

    class AmountFailed < Stripe::StripeObject
      attr_reader :currency, :value
    end

    class AmountGuaranteed < Stripe::StripeObject
      attr_reader :currency, :value
    end

    class AmountRefunded < Stripe::StripeObject
      attr_reader :currency, :value
    end

    class AmountRequested < Stripe::StripeObject
      attr_reader :currency, :value
    end

    class CustomerDetails < Stripe::StripeObject
      attr_reader :customer, :email, :name, :phone
    end

    class PaymentMethodDetails < Stripe::StripeObject
      class BillingDetails < Stripe::StripeObject
        class Address < Stripe::StripeObject
          attr_reader :city, :country, :line1, :line2, :postal_code, :state
        end
        attr_reader :address, :email, :name, :phone
      end

      class Custom < Stripe::StripeObject
        attr_reader :display_name, :type
      end
      attr_reader :billing_details, :custom, :payment_method, :type
    end

    class ShippingDetails < Stripe::StripeObject
      class Address < Stripe::StripeObject
        attr_reader :city, :country, :line1, :line2, :postal_code, :state
      end
      attr_reader :address, :name, :phone
    end
    # A representation of an amount of money, consisting of an amount and a currency.
    attr_reader :amount_canceled
    # A representation of an amount of money, consisting of an amount and a currency.
    attr_reader :amount_failed
    # A representation of an amount of money, consisting of an amount and a currency.
    attr_reader :amount_guaranteed
    # A representation of an amount of money, consisting of an amount and a currency.
    attr_reader :amount_refunded
    # A representation of an amount of money, consisting of an amount and a currency.
    attr_reader :amount_requested
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # Customer information for this payment.
    attr_reader :customer_details
    # Indicates whether the customer was present in your checkout flow during this payment.
    attr_reader :customer_presence
    # An arbitrary string attached to the object. Often useful for displaying to users.
    attr_reader :description
    # Unique identifier for the object.
    attr_reader :id
    # ID of the latest Payment Attempt Record attached to this Payment Record.
    attr_reader :latest_payment_attempt_record
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # Information about the Payment Method debited for this payment.
    attr_reader :payment_method_details
    # An opaque string for manual reconciliation of this payment, for example a check number or a payment processor ID.
    attr_reader :payment_reference
    # Shipping information for this payment.
    attr_reader :shipping_details

    # Report a new Payment Record. You may report a Payment Record as it is
    #  initialized and later report updates through the other report_* methods, or report Payment
    #  Records in a terminal state directly, through this method.
    def self.report_payment(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: "/v1/payment_records/report_payment",
        params: params,
        opts: opts
      )
    end

    # Report a new payment attempt on the specified Payment Record. A new payment
    #  attempt can only be specified if all other payment attempts are canceled or failed.
    def report_payment_attempt(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_records/%<id>s/report_payment_attempt", { id: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Report a new payment attempt on the specified Payment Record. A new payment
    #  attempt can only be specified if all other payment attempts are canceled or failed.
    def self.report_payment_attempt(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_records/%<id>s/report_payment_attempt", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end

    # Report that the most recent payment attempt on the specified Payment Record
    #  was canceled.
    def report_payment_attempt_canceled(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_records/%<id>s/report_payment_attempt_canceled", { id: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Report that the most recent payment attempt on the specified Payment Record
    #  was canceled.
    def self.report_payment_attempt_canceled(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_records/%<id>s/report_payment_attempt_canceled", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end

    # Report that the most recent payment attempt on the specified Payment Record
    #  failed or errored.
    def report_payment_attempt_failed(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_records/%<id>s/report_payment_attempt_failed", { id: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Report that the most recent payment attempt on the specified Payment Record
    #  failed or errored.
    def self.report_payment_attempt_failed(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_records/%<id>s/report_payment_attempt_failed", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end

    # Report that the most recent payment attempt on the specified Payment Record
    #  was guaranteed.
    def report_payment_attempt_guaranteed(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_records/%<id>s/report_payment_attempt_guaranteed", { id: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Report that the most recent payment attempt on the specified Payment Record
    #  was guaranteed.
    def self.report_payment_attempt_guaranteed(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_records/%<id>s/report_payment_attempt_guaranteed", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end
  end
end
