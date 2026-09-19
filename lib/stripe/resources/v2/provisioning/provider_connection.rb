# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Provisioning
      # A ProviderConnection represents a link between a project and a provider account that
      # resources can be created against; unlinking it prevents further resource creation.
      class ProviderConnection < APIResource
        OBJECT_NAME = "v2.provisioning.provider_connection"
        def self.object_name
          "v2.provisioning.provider_connection"
        end

        class ProviderAccountDetails < ::Stripe::StripeObject
          class ActiveService < ::Stripe::StripeObject
            # Display name of the service.
            attr_reader :display_name
            # Identifier of the resource at the provider that backs this service, if any.
            attr_reader :provider_resource_id
            # Identifier of the service at the provider.
            attr_reader :service_id
            # Current status of the service.
            attr_reader :status

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Services active for the connected account.
          attr_reader :active_services
          # True when the provider explicitly supplied active_services, including an empty array.
          attr_reader :active_services_provided
          # Display name of the connected account.
          attr_reader :display_name
          # Identifier of the connected account at the provider.
          attr_reader :id
          # Action taken when the account was linked.
          attr_reader :link_action
          # Primary email address of the connected account.
          attr_reader :primary_email

          def self.inner_class_types
            @inner_class_types = { active_services: ActiveService }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Time at which the provider connection was created.
        attr_reader :created
        # Unique identifier for the provider connection.
        attr_reader :id
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Identifier of the provider this connection is linked to.
        attr_reader :provider
        # Identifier of the connected account at the provider, if one has been established.
        attr_reader :provider_account
        # Details about the connected provider account.
        attr_reader :provider_account_details
        # Current status of the provider connection.
        attr_reader :status

        def self.inner_class_types
          @inner_class_types = { provider_account_details: ProviderAccountDetails }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
