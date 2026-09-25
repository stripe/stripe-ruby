# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      # EarnedCredit Simulations represent simulated EarnedCredit creation requests for testing purposes.
      class EarnedCreditSimulation < APIResource
        OBJECT_NAME = "v2.money_management.earned_credit_simulation"
        def self.object_name
          "v2.money_management.earned_credit_simulation"
        end

        # Has the value true if the object exists in live mode.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The status of the request, signifying whether simulated EarnedCredit creation was initiated.
        attr_reader :status

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
