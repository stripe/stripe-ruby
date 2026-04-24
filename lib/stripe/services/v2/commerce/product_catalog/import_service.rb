# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Commerce
      module ProductCatalog
        class ImportService < StripeService
          # Creates a ProductCatalogImport.
          def create(params = {}, opts = {})
            request(
              method: :post,
              path: "/v2/commerce/product_catalog/imports",
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Returns a list of ProductCatalogImport objects.
          def list(params = {}, opts = {})
            request(
              method: :get,
              path: "/v2/commerce/product_catalog/imports",
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Retrieves a ProductCatalogImport by ID.
          def retrieve(id, params = {}, opts = {})
            request(
              method: :get,
              path: format("/v2/commerce/product_catalog/imports/%<id>s", { id: CGI.escape(id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end
        end
      end
    end
  end
end
