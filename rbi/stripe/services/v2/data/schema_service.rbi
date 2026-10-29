# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Data
      class SchemaService < StripeService
        # Returns a list of schemas describing the tables available to query.
        sig {
          params(params: T.any(::Stripe::V2::Data::SchemaListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieves the schema for a particular table.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Data::SchemaRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Data::Schema)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end