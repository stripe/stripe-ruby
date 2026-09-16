# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Commerce
      module ProductCatalog
        class ImportService < StripeService
          # Creates a ProductCatalogImport.
          sig {
            params(params: T.any(::Stripe::V2::Commerce::ProductCatalog::ImportCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Commerce::ProductCatalogImport)
           }
          def create(params = {}, opts = {}); end

          # Returns a list of ProductCatalogImport objects.
          sig {
            params(params: T.any(::Stripe::V2::Commerce::ProductCatalog::ImportListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
           }
          def list(params = {}, opts = {}); end

          # Retrieves a ProductCatalogImport by ID.
          sig {
            params(id: String, params: T.any(::Stripe::V2::Commerce::ProductCatalog::ImportRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Commerce::ProductCatalogImport)
           }
          def retrieve(id, params = {}, opts = {}); end
        end
      end
    end
  end
end