# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Sigma
    # Contains information about the tables in a reporting Schema.
    class Schema < APIResource
      class Table < Stripe::StripeObject
        class Column < Stripe::StripeObject
          # Attribute for field comment
          sig { returns(String) }
          attr_reader :comment
          # Attribute for field foreign_key
          sig { returns(T.nilable(String)) }
          attr_reader :foreign_key
          # Attribute for field name
          sig { returns(String) }
          attr_reader :name
          # Attribute for field primary_key
          sig { returns(T::Boolean) }
          attr_reader :primary_key
          # Attribute for field type
          sig { returns(String) }
          attr_reader :type
        end
        # Attribute for field columns
        sig { returns(T::Array[Column]) }
        attr_reader :columns
        # Attribute for field comment
        sig { returns(String) }
        attr_reader :comment
        # Attribute for field name
        sig { returns(String) }
        attr_reader :name
        # Attribute for field section
        sig { returns(String) }
        attr_reader :section
      end
      # Attribute for field name
      sig { returns(String) }
      attr_reader :name
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object
      # Attribute for field tables
      sig { returns(T::Array[Table]) }
      attr_reader :tables
      class ListParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Attribute for param field product
        sig { returns(T.nilable(String)) }
        attr_accessor :product
        sig { params(expand: T.nilable(T::Array[String]), product: T.nilable(String)).void }
        def initialize(expand: nil, product: nil); end
      end
      # Lists the schemas available to the authorized merchant in Stripe's data products
      sig {
        params(params: T.any(::Stripe::Sigma::Schema::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end
    end
  end
end