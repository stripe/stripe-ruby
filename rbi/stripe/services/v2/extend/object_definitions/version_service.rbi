# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Extend
      module ObjectDefinitions
        class VersionService < StripeService
          # Lists a page of object definition versions in descending semantic version order.
          sig {
            params(object_definition_id: String, params: T.any(::Stripe::V2::Extend::ObjectDefinitions::VersionListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
           }
          def list(object_definition_id, params = {}, opts = {}); end

          # Retrieves an object definition version.
          sig {
            params(object_definition_id: String, id: String, params: T.any(::Stripe::V2::Extend::ObjectDefinitions::VersionRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Extend::ObjectDefinitionVersion)
           }
          def retrieve(object_definition_id, id, params = {}, opts = {}); end
        end
      end
    end
  end
end