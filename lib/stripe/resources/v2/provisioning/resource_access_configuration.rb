# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Provisioning
      # The current provider-issued access configuration for a Provisioning Resource.
      class ResourceAccessConfiguration < APIResource
        OBJECT_NAME = "v2.provisioning.resource_access_configuration"
        def self.object_name
          "v2.provisioning.resource_access_configuration"
        end

        # Provider-defined configuration names mapped to their secret string values.
        attr_reader :configuration
        # Time at which this credential generation became current.
        attr_reader :created
        # Time at which these credentials cease to be valid, when supplied by the Provider.
        attr_reader :expires_at
        # Whether the referenced Resource uses Stripe live-mode objects.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Provisioning Resource to which this access configuration belongs.
        attr_reader :resource

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
