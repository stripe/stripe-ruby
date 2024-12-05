# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # [Tax codes](https://stripe.com/docs/tax/tax-categories) classify goods and services for tax purposes.
  class TaxCode < APIResource
    sig { returns(String) }
    # A detailed description of which types of products the tax code represents.
    attr_reader :description
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(String) }
    # A short name for the tax code.
    attr_reader :name
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
  end
end