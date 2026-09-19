# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Provisioning
      # A ProviderConnection represents a link between a project and a provider account that
      # resources can be created against; unlinking it prevents further resource creation.
      class ProviderConnection < APIResource
        class ProviderAccountDetails < ::Stripe::StripeObject
          class ActiveService < ::Stripe::StripeObject
            # Display name of the service.
            sig { returns(T.nilable(String)) }
            def display_name; end
            # Identifier of the resource at the provider that backs this service, if any.
            sig { returns(T.nilable(String)) }
            def provider_resource_id; end
            # Identifier of the service at the provider.
            sig { returns(String) }
            def service_id; end
            # Current status of the service.
            sig { returns(String) }
            def status; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Services active for the connected account.
          sig { returns(T::Array[ActiveService]) }
          def active_services; end
          # True when the provider explicitly supplied active_services, including an empty array.
          sig { returns(T::Boolean) }
          def active_services_provided; end
          # Display name of the connected account.
          sig { returns(T.nilable(String)) }
          def display_name; end
          # Identifier of the connected account at the provider.
          sig { returns(String) }
          def id; end
          # Action taken when the account was linked.
          sig { returns(T.nilable(String)) }
          def link_action; end
          # Primary email address of the connected account.
          sig { returns(T.nilable(String)) }
          def primary_email; end
          def self.inner_class_types
            @inner_class_types = {active_services: ActiveService}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Time at which the provider connection was created.
        sig { returns(T.nilable(String)) }
        def created; end
        # Unique identifier for the provider connection.
        sig { returns(String) }
        def id; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # Identifier of the provider this connection is linked to.
        sig { returns(String) }
        def provider; end
        # Identifier of the connected account at the provider, if one has been established.
        sig { returns(T.nilable(String)) }
        def provider_account; end
        # Details about the connected provider account.
        sig { returns(T.nilable(ProviderAccountDetails)) }
        def provider_account_details; end
        # Current status of the provider connection.
        sig { returns(String) }
        def status; end
      end
    end
  end
end