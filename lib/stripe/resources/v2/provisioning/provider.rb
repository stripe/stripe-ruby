# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Provisioning
      # The `Provider` resource represents a third-party provider available in the
      # provisioning catalog.
      class Provider < APIResource
        OBJECT_NAME = "v2.provisioning.provider"
        def self.object_name
          "v2.provisioning.provider"
        end

        # Capabilities supported by the provider.
        attr_reader :capabilities
        # Categories the provider belongs to.
        attr_reader :categories
        # Schema describing the configuration accepted by this provider.
        attr_reader :configuration_schema
        # Time at which the provider was created.
        attr_reader :created
        # Deep-link purposes supported by the provider.
        attr_reader :deep_link_purposes
        # Description of the provider.
        attr_reader :description
        # proto3 scalar defaults apply: if unset, this value is `false`.
        attr_reader :development
        # Unique identifier for the provider.
        attr_reader :id
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # URL of additional context about the provider intended for LLM consumption.
        attr_reader :llm_context
        # Human-readable name of the provider.
        attr_reader :name
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # URL of the provider's privacy policy.
        attr_reader :privacy_policy_url
        # URL of the provider's terms of service.
        attr_reader :tos_url
        # URL of the provider's website.
        attr_reader :website_url

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
