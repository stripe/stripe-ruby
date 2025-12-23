# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # [Tax codes](https://stripe.com/docs/tax/tax-categories) classify goods and services for tax purposes.
  class TaxCode < APIResource
    class Requirements < ::Stripe::StripeObject
      # Describes whether a performance location is required for a successful tax calculation with a tax code.
      sig { returns(T.nilable(String)) }
      def performance_location; end
      def self.inner_class_types
        @inner_class_types = {}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    # A detailed description of which types of products the tax code represents.
    sig { returns(String) }
    def description; end
    # Unique identifier for the object.
    sig { returns(String) }
    def id; end
    # A short name for the tax code.
    sig { returns(String) }
    def name; end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
    # An object that describes more information about the tax location required for this tax code. Some [tax codes](/tax/tax-for-tickets/integration-guide#types-of-products) require a tax location of type `performance` to calculate tax correctly.
    sig { returns(T.nilable(Requirements)) }
    def requirements; end
    # A list of [all tax codes available](https://stripe.com/docs/tax/tax-categories) to add to Products in order to allow specific tax calculations.
    sig {
      params(params: T.any(::Stripe::TaxCodeListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
     }
    def self.list(params = {}, opts = {}); end
  end
end