# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # [Tax codes](https://stripe.com/docs/tax/tax-categories) classify goods and services for tax purposes.
  class TaxCode < APIResource
    extend Stripe::APIOperations::List

    OBJECT_NAME = "tax_code"
  end
end
