# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Extend
      # Represents a user-defined object definition that models a custom object.
      # Object definitions enable the object records API to create and manage records of that object.
      class ObjectDefinition < APIResource
        # The plural API name used in this definition's object record API paths. Immutable across versions.
        sig { returns(String) }
        def api_name_plural; end
        # The singular API name used in the object tag of this definition's records. Immutable across versions.
        sig { returns(String) }
        def api_name_singular; end
        # Time at which the object definition was created.
        sig { returns(String) }
        def created; end
        # Unique identifier for the object definition.
        sig { returns(String) }
        def id; end
        # The ID of the latest object definition version.
        sig { returns(String) }
        def latest_version; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
      end
    end
  end
end