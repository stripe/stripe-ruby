# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Some payment methods have no required amount that a customer must send.
  # Customers can be instructed to send any amount, and it can be made up of
  # multiple transactions. As such, sources can have multiple associated
  # transactions.
  class SourceTransaction < StripeObject
    OBJECT_NAME = "source_transaction"
  end
end
