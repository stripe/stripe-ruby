# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Provisioning
      module Catalog
        class ProviderListParams < ::Stripe::RequestParams
          # Catalog partition to list providers from.
          attr_accessor :catalog
          # When `true`, list development-only providers. When unset or `false`, development providers are
          # excluded.
          attr_accessor :development
          # Maximum number of providers to return.
          attr_accessor :limit

          def initialize(catalog: nil, development: nil, limit: nil)
            @catalog = catalog
            @development = development
            @limit = limit
          end
        end
      end
    end
  end
end
