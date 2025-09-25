# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class InvoiceAttachPaymentParams < Stripe::RequestParams
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand
    # The ID of the PaymentIntent to attach to the invoice.
    attr_accessor :payment_intent

    def initialize(expand: nil, payment_intent: nil)
      @expand = expand
      @payment_intent = payment_intent
    end
  end
end
