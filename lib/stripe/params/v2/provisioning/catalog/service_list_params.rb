# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Provisioning
      module Catalog
        class ServiceListParams < ::Stripe::RequestParams
          # Catalog partition to list services from.
          attr_accessor :catalog
          # When `true`, list development-only services. When unset or `false`, development services are
          # excluded.
          attr_accessor :development
          # Maximum number of services to return.
          attr_accessor :limit
          # Filters services to those offered by the provider with this name.
          attr_accessor :provider_name

          def initialize(catalog: nil, development: nil, limit: nil, provider_name: nil)
            @catalog = catalog
            @development = development
            @limit = limit
            @provider_name = provider_name
          end
        end
      end
    end
  end
end
