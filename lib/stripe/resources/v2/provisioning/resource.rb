# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Provisioning
      # The `Resource` resource represents a provider-managed resource provisioned on behalf of
      # a `Project`.
      class Resource < APIResource
        OBJECT_NAME = "v2.provisioning.resource"
        def self.object_name
          "v2.provisioning.resource"
        end

        class UserMessage < ::Stripe::StripeObject
          # Attribute for field message
          attr_reader :message
          # Attribute for field received_at
          attr_reader :received_at

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Attribute for field catalog
        attr_reader :catalog
        # Attribute for field created
        attr_reader :created
        # Attribute for field environment
        attr_reader :environment
        # Attribute for field error_message
        attr_reader :error_message
        # Attribute for field id
        attr_reader :id
        # Whether this resource uses Stripe live-mode objects. This is independent of the provider
        # catalog and is immutable for the lifetime of the resource.
        attr_reader :livemode
        # Attribute for field name
        attr_reader :name
        # Attribute for field needs_information_schema
        attr_reader :needs_information_schema
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Attribute for field provider
        attr_reader :provider
        # Attribute for field service_ref
        attr_reader :service_ref
        # Attribute for field status
        attr_reader :status
        # Attribute for field user_message
        attr_reader :user_message

        def self.inner_class_types
          @inner_class_types = { user_message: UserMessage }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
