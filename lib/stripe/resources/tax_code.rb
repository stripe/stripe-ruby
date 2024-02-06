# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # [Tax codes](https://stripe.com/docs/tax/tax-categories) classify goods and services for tax purposes.
  class TaxCode < APIResource
    extend Stripe::APIOperations::List

    OBJECT_NAME = "tax_code"

    # A list of [all tax codes available](https://stripe.com/docs/tax/tax-categories) to add to Products in order to allow specific tax calculations.
    def self.list(filters = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/tax_codes", params: filters, opts: opts)
    end
  end
end
