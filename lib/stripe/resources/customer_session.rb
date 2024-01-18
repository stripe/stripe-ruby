# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A customer session allows you to grant client access to Stripe's frontend SDKs (like StripeJs)
  # control over a customer.
  class CustomerSession < APIResource
    extend Stripe::APIOperations::Create

    OBJECT_NAME = "customer_session"
  end
end
