# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Provisioning
      # The `Project` resource represents a container for provisioned resources and their
      # associated configuration.
      class Project < APIResource
        class Profile < ::Stripe::StripeObject
          # Email address associated with the developer profile.
          sig { returns(T.nilable(String)) }
          def email; end
          # Fields of the developer profile that have been verified.
          sig { returns(T::Array[String]) }
          def verified_fields; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Catalog partition the project belongs to.
        sig { returns(String) }
        def catalog; end
        # Time at which the project was created.
        sig { returns(String) }
        def created; end
        # Unique identifier for the project.
        sig { returns(String) }
        def id; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # Human-readable name of the project.
        sig { returns(String) }
        def name; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # Use the /v2/provisioning/identity endpoint instead for IAM information.
        sig { returns(T.nilable(Profile)) }
        def profile; end
        # Identifier of the developer profile associated with the project.
        sig { returns(T.nilable(String)) }
        def project_profile; end
      end
    end
  end
end