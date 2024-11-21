# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # [Tax codes](https://stripe.com/docs/tax/tax-categories) classify goods and services for tax purposes.
  class TaxCode < APIResource
    # A detailed description of which types of products the tax code represents.
    sig { returns(String) }
    attr_reader :description

    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id

    # A short name for the tax code.
    sig { returns(String) }
    attr_reader :name

    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object
  end
end