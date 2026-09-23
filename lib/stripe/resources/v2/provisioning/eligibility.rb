# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Provisioning
      # Whether a project is eligible to provision resources with a provider, and any
      # outstanding KYC requirements that must be satisfied first.
      class Eligibility < SingletonAPIResource
        OBJECT_NAME = "v2.provisioning.eligibility"
        def self.object_name
          "v2.provisioning.eligibility"
        end

        # Whether the project is eligible to provision resources with the provider.
        attr_reader :is_eligible
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Outstanding requirements that must be satisfied before the project is eligible, if any.
        attr_reader :requirements

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
