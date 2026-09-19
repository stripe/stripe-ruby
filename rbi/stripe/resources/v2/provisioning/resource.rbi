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
          # Attribute for field message
          sig { returns(String) }
          def message; end
          # Attribute for field received_at
          sig { returns(String) }
          def received_at; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Attribute for field catalog
        sig { returns(T.nilable(String)) }
        def catalog; end
        # Attribute for field created
        sig { returns(String) }
        def created; end
        # Attribute for field environment
        sig { returns(String) }
        def environment; end
        # Attribute for field error_message
        sig { returns(T.nilable(String)) }
        def error_message; end
        # Attribute for field id
        sig { returns(String) }
        def id; end
        # Whether this resource uses Stripe live-mode objects. This is independent of the provider
        # catalog and is immutable for the lifetime of the resource.
        sig { returns(T::Boolean) }
        def livemode; end
        # Attribute for field name
        sig { returns(T.nilable(String)) }
        def name; end
        # Attribute for field needs_information_schema
        sig { returns(T.nilable(T::Hash[String, T.untyped])) }
        def needs_information_schema; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # Attribute for field provider
        sig { returns(String) }
        def provider; end
        # Attribute for field service_ref
        sig { returns(String) }
        def service_ref; end
        # Attribute for field status
        sig { returns(String) }
        def status; end
        # Attribute for field user_message
        sig { returns(T.nilable(UserMessage)) }
        def user_message; end
      end
    end
  end
end