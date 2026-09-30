# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Provisioning
      class ResourceLinkParams < ::Stripe::RequestParams
        # Catalog partition of the existing resource.
        attr_accessor :catalog
        # Environment the existing resource runs in.
        attr_accessor :environment
        # Whether the resource should use Stripe live-mode objects. When omitted, this resolves to false
        # for a sandbox target and true otherwise. Sandbox targets cannot link live-mode resources.
        attr_accessor :livemode
        # Identifier of the project to link the resource to.
        attr_accessor :project
        # Identifier of the provider that hosts the existing resource.
        attr_accessor :provider
        # Identifier of the provider service the existing resource belongs to.
        attr_accessor :service_ref

        def initialize(
          catalog: nil,
          environment: nil,
          livemode: nil,
          project: nil,
          provider: nil,
          service_ref: nil
        )
          @catalog = catalog
          @environment = environment
          @livemode = livemode
          @project = project
          @provider = provider
          @service_ref = service_ref
        end
      end
    end
  end
end
