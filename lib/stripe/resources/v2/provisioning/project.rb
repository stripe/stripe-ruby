# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Provisioning
      # The `Project` resource represents a container for provisioned resources and their
      # associated configuration.
      class Project < APIResource
        OBJECT_NAME = "v2.provisioning.project"
        def self.object_name
          "v2.provisioning.project"
        end

        class Profile < ::Stripe::StripeObject
          # Email address associated with the developer profile.
          attr_reader :email
          # Fields of the developer profile that have been verified.
          attr_reader :verified_fields

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Catalog partition the project belongs to.
        attr_reader :catalog
        # Time at which the project was created.
        attr_reader :created
        # Unique identifier for the project.
        attr_reader :id
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # Human-readable name of the project.
        attr_reader :name
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Use the /v2/provisioning/identity endpoint instead for IAM information.
        attr_reader :profile
        # Identifier of the developer profile associated with the project.
        attr_reader :project_profile

        def self.inner_class_types
          @inner_class_types = { profile: Profile }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
