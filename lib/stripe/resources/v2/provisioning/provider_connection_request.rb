# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Provisioning
      # A ProviderConnectionRequest represents an in-progress account-linking workflow. Once the
      # workflow completes, `provider_connection` is populated with the resulting ProviderConnection.
      class ProviderConnectionRequest < APIResource
        OBJECT_NAME = "v2.provisioning.provider_connection_request"
        def self.object_name
          "v2.provisioning.provider_connection_request"
        end

        class Error < ::Stripe::StripeObject
          # Machine-readable error code.
          attr_reader :code
          # Human-readable error message.
          attr_reader :message

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Time at which the provider connection request was created.
        attr_reader :created
        # Error from the account-linking workflow, set when request_status is ERROR.
        attr_reader :error
        # Unique identifier for the provider connection request.
        attr_reader :id
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # Schema describing the information the provider still needs, set when request_status is
        # NEEDS_INFORMATION.
        attr_reader :needs_information_schema
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Identifier of the provider this connection request is linked to.
        attr_reader :provider
        # A ProviderConnection represents a link between a project and a provider account that
        # resources can be created against; unlinking it prevents further resource creation.
        attr_reader :provider_connection
        # URL the caller should redirect to in order to continue the account-linking workflow.
        attr_reader :redirect_url
        # Status of the underlying account-linking workflow. Unset once the workflow completes; see
        # provider_connection for the resulting connection's status.
        attr_reader :request_status
        # Scopes requested for the account-linking workflow.
        attr_reader :scopes

        def self.inner_class_types
          @inner_class_types = { error: Error }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
