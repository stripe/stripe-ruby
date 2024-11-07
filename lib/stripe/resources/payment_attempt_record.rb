# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A Payment Attempt Record represents an individual attempt at making a payment, on or off Stripe.
  # Each payment attempt tries to collect a fixed amount of money from a fixed customer and payment
  # method. Payment Attempt Records are attached to Payment Records. Only one attempt per Payment Record
  # can have guaranteed funds.
  class PaymentAttemptRecord < APIResource
    extend Stripe::APIOperations::List

    OBJECT_NAME = "payment_attempt_record"
    def self.object_name
      "payment_attempt_record"
    end

    # List all the Payment Attempt Records attached to the specified Payment Record.
    def self.list(filters = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: "/v1/payment_attempt_records",
        params: filters,
        opts: opts
      )
    end
  end
end
