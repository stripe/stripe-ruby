# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # [Tax codes](https://stripe.com/docs/tax/tax-categories) classify goods and services for tax purposes.
  class TaxCode < APIResource
    extend Stripe::APIOperations::List

    OBJECT_NAME = "tax_code"
    def self.object_name
      "tax_code"
    end

    class Requirements < ::Stripe::StripeObject
      # Describes whether a performance location is required for a successful tax calculation with a tax code.
      attr_reader :performance_location

      def self.inner_class_types
        @inner_class_types = {}
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
    # A detailed description of which types of products the tax code represents.
    attr_reader :description
    # Unique identifier for the object.
    attr_reader :id
    # A short name for the tax code.
    attr_reader :name
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # An object that describes more information about the tax location required for this tax code. Some [tax codes](/tax/tax-for-tickets/integration-guide#types-of-products) require a tax location of type `performance` to calculate tax correctly.
    attr_reader :requirements

    # A list of [all tax codes available](https://stripe.com/docs/tax/tax-categories) to add to Products in order to allow specific tax calculations.
    def self.list(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/tax_codes", params: params, opts: opts)
    end

    def self.inner_class_types
      @inner_class_types = { requirements: Requirements }
    end

    def self.field_remappings
      @field_remappings = {}
    end
  end
end
