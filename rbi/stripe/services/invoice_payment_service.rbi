# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class InvoicePaymentService < StripeService
    # When retrieving an invoice, there is an includable payments property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of payments.
    sig {
      params(params: T.any(::Stripe::InvoicePaymentListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # Retrieves the invoice payment with the given ID.
    sig {
      params(id: String, params: T.any(::Stripe::InvoicePaymentRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::InvoicePayment)
     }
    def retrieve(id, params = {}, opts = {}); end
  end
end