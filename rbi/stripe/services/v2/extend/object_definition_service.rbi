# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Extend
      class ObjectDefinitionService < StripeService
        attr_reader :versions
        # Lists a page of object definitions.
        sig {
          params(params: T.any(::Stripe::V2::Extend::ObjectDefinitionListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieves an object definition.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Extend::ObjectDefinitionRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Extend::ObjectDefinition)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end