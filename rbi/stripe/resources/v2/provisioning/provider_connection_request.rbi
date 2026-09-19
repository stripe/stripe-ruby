# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Provisioning
      # A ProviderConnectionRequest represents an in-progress account-linking workflow. Once the
      # workflow completes, `provider_connection` is populated with the resulting ProviderConnection.
      class ProviderConnectionRequest < APIResource
        class Error < ::Stripe::StripeObject
          # Machine-readable error code.
          sig { returns(String) }
          def code; end
          # Human-readable error message.
          sig { returns(String) }
          def message; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Time at which the provider connection request was created.
        sig { returns(T.nilable(String)) }
        def created; end
        # Error from the account-linking workflow, set when request_status is ERROR.
        sig { returns(T.nilable(Error)) }
        def error; end
        # Unique identifier for the provider connection request.
        sig { returns(String) }
        def id; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # Schema describing the information the provider still needs, set when request_status is
        # NEEDS_INFORMATION.
        sig { returns(T.nilable(T::Hash[String, T.untyped])) }
        def needs_information_schema; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # Identifier of the provider this connection request is linked to.
        sig { returns(String) }
        def provider; end
        # A ProviderConnection represents a link between a project and a provider account that
        # resources can be created against; unlinking it prevents further resource creation.
        sig { returns(T.nilable(::Stripe::V2::Provisioning::ProviderConnection)) }
        def provider_connection; end
        # URL the caller should redirect to in order to continue the account-linking workflow.
        sig { returns(T.nilable(String)) }
        def redirect_url; end
        # Status of the underlying account-linking workflow. Unset once the workflow completes; see
        # provider_connection for the resulting connection's status.
        sig { returns(String) }
        def request_status; end
        # Scopes requested for the account-linking workflow.
        sig { returns(T::Array[String]) }
        def scopes; end
      end
    end
  end
end