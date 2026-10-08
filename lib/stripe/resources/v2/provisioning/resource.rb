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
          # Message from the provider to display to the user.
          attr_reader :message
          # Time at which Stripe received the message from the provider.
          attr_reader :received_at

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Catalog partition containing the resource's provider service.
        attr_reader :catalog
        # Time at which the resource was created.
        attr_reader :created
        # Provider environment in which the resource runs.
        attr_reader :environment
        # Error reported when provisioning the resource fails.
        attr_reader :error_message
        # Unique identifier for the resource.
        attr_reader :id
        # Whether this resource uses Stripe live-mode objects. This is independent of the provider
        # catalog and is immutable for the lifetime of the resource.
        attr_reader :livemode
        # Human-readable name of the resource.
        attr_reader :name
        # Schema describing additional information the provider requires to finish provisioning.
        attr_reader :needs_information_schema
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Identifier of the provider that manages the resource.
        attr_reader :provider
        # Identifier of the provider service used to provision the resource.
        attr_reader :service_ref
        # Current provisioning status of the resource.
        attr_reader :status
        # Message supplied by the provider when the resource becomes ready.
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
