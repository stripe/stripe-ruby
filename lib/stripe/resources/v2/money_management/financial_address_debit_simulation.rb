# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      # Debit Simulations represent a simulated debit transaction applied to financial addresses for testing purposes.
      class FinancialAddressDebitSimulation < APIResource
        OBJECT_NAME = "v2.money_management.financial_address_debit_simulation"
        def self.object_name
          "v2.money_management.financial_address_debit_simulation"
        end

        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The status of the request, signifying whether a simulated debit was initiated.
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
