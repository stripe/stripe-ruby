# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Provisioning
      class ResourceUpdateParams < ::Stripe::RequestParams
        # Catalog partition of the resource.
        attr_accessor :catalog
        # New provider-specific configuration payload for the resource.
        attr_accessor :configuration
        # Provider's service id to switch the resource to. If omitted, the resource's existing service
        # is retained and this is treated as a config-only update.
        attr_accessor :service_ref

        def initialize(catalog: nil, configuration: nil, service_ref: nil)
          @catalog = catalog
          @configuration = configuration
          @service_ref = service_ref
        end
      end
    end
  end
end
