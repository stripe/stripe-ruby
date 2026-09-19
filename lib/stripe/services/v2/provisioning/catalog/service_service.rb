# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Provisioning
      module Catalog
        class ServiceService < StripeService
          # Lists services available in the catalog.
          def list(params = {}, opts = {})
            request(
              method: :get,
              path: "/v2/provisioning/catalog/services",
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
