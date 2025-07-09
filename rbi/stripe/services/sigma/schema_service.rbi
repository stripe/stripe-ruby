# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Sigma
    class SchemaService < StripeService
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
        params(params: T.any(::Stripe::Sigma::SchemaService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end
    end
  end
end