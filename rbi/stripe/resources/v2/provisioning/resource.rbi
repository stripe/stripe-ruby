# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Provisioning
      # The `Resource` resource represents a provider-managed resource provisioned on behalf of
      # a `Project`.
      class Resource < APIResource
        class UserMessage < ::Stripe::StripeObject
          # Message from the provider to display to the user.
          sig { returns(String) }
          def message; end
          # Time at which Stripe received the message from the provider.
          sig { returns(String) }
          def received_at; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Catalog partition containing the resource's provider service.
        sig { returns(T.nilable(String)) }
        def catalog; end
        # Time at which the resource was created.
        sig { returns(String) }
        def created; end
        # Provider environment in which the resource runs.
        sig { returns(String) }
        def environment; end
        # Error reported when provisioning the resource fails.
        sig { returns(T.nilable(String)) }
        def error_message; end
        # Unique identifier for the resource.
        sig { returns(String) }
        def id; end
        # Whether this resource uses Stripe live-mode objects. This is independent of the provider
        # catalog and is immutable for the lifetime of the resource.
        sig { returns(T::Boolean) }
        def livemode; end
        # Human-readable name of the resource.
        sig { returns(T.nilable(String)) }
        def name; end
        # Schema describing additional information the provider requires to finish provisioning.
        sig { returns(T.nilable(T::Hash[String, T.untyped])) }
        def needs_information_schema; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # Identifier of the provider that manages the resource.
        sig { returns(String) }
        def provider; end
        # Identifier of the provider service used to provision the resource.
        sig { returns(String) }
        def service_ref; end
        # Current provisioning status of the resource.
        sig { returns(String) }
        def status; end
        # Message supplied by the provider when the resource becomes ready.
        sig { returns(T.nilable(UserMessage)) }
        def user_message; end
      end
    end
  end
end