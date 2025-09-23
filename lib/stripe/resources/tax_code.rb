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

    class ListParams < Stripe::RequestParams
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after

      def initialize(ending_before: nil, expand: nil, limit: nil, starting_after: nil)
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @starting_after = starting_after
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

    # A list of [all tax codes available](https://stripe.com/docs/tax/tax-categories) to add to Products in order to allow specific tax calculations.
    def self.list(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/tax_codes", params: params, opts: opts)
    end
  end
end
