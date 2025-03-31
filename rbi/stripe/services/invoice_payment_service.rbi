# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class InvoicePaymentService < StripeService
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
      sig { returns(T.nilable(::Stripe::InvoicePaymentService::ListParams::Payment)) }
      attr_accessor :payment
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :starting_after
      # The status of the invoice payments to return.
      sig { returns(T.nilable(String)) }
      attr_accessor :status
      sig {
        params(ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), invoice: T.nilable(String), limit: T.nilable(Integer), payment: T.nilable(::Stripe::InvoicePaymentService::ListParams::Payment), starting_after: T.nilable(String), status: T.nilable(String)).void
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
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    # When retrieving an invoice, there is an includable payments property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of payments.
    sig {
      params(params: T.any(::Stripe::InvoicePaymentService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # Retrieves the invoice payment with the given ID.
    sig {
      params(invoice_payment: String, params: T.any(::Stripe::InvoicePaymentService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::InvoicePayment)
     }
    def retrieve(invoice_payment, params = {}, opts = {}); end
  end
end