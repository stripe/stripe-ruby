# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Extend
      # Represents a user-defined object definition that models a custom object.
      # Object definitions enable the object records API to create and manage records of that object.
      class ObjectDefinition < APIResource
        OBJECT_NAME = "v2.extend.object_definition"
        def self.object_name
          "v2.extend.object_definition"
        end

        # The plural API name used in this definition's object record API paths. Immutable across versions.
        attr_reader :api_name_plural
        # The singular API name used in the object tag of this definition's records. Immutable across versions.
        attr_reader :api_name_singular
        # Time at which the object definition was created.
        attr_reader :created
        # Unique identifier for the object definition.
        attr_reader :id
        # The ID of the latest object definition version.
        attr_reader :latest_version
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
