# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Provisioning
      class ResourceCreateParams < ::Stripe::RequestParams
        # Catalog partition to create the resource in.
        attr_accessor :catalog
        # Provider-specific configuration payload for the resource.
        attr_accessor :configuration
        # Environment the resource should be created in.
        attr_accessor :environment
        # Whether the resource should use Stripe live-mode objects. When omitted, this resolves to true.
        attr_accessor :livemode
        # Human-readable name for the resource.
        attr_accessor :name
        # Identifier of the project to create the resource in.
        attr_accessor :project
        # Identifier of the provider to create the resource with.
        attr_accessor :provider
        # Identifier of the provider service to create the resource from.
        attr_accessor :service_ref

        def initialize(
          catalog: nil,
          configuration: nil,
          environment: nil,
          livemode: nil,
          name: nil,
          project: nil,
          provider: nil,
          service_ref: nil
        )
          @catalog = catalog
          @configuration = configuration
          @environment = environment
          @livemode = livemode
          @name = name
          @project = project
          @provider = provider
          @service_ref = service_ref
        end
      end
    end
  end
end
