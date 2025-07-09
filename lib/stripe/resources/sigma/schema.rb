# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Sigma
    # Contains information about the tables in a reporting Schema.
    class Schema < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "sigma.schema"
      def self.object_name
        "sigma.schema"
      end

      class Table < Stripe::StripeObject
        class Column < Stripe::StripeObject
          # Attribute for field comment
          attr_reader :comment
          # Attribute for field foreign_key
          attr_reader :foreign_key
          # Attribute for field name
          attr_reader :name
          # Attribute for field primary_key
          attr_reader :primary_key
          # Attribute for field type
          attr_reader :type
        end
        # Attribute for field columns
        attr_reader :columns
        # Attribute for field comment
        attr_reader :comment
        # Attribute for field name
        attr_reader :name
        # Attribute for field section
        attr_reader :section
      end

      class ListParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Attribute for param field product
        attr_accessor :product

        def initialize(expand: nil, product: nil)
          @expand = expand
          @product = product
        end
      end
      # Attribute for field name
      attr_reader :name
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # Attribute for field tables
      attr_reader :tables

      # Lists the schemas available to the authorized merchant in Stripe's data products
      def self.list(params = {}, opts = {})
        request_stripe_object(method: :get, path: "/v1/sigma/schemas", params: params, opts: opts)
      end
    end
  end
end
