# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    class FinancialAddressCreditSimulation < APIResource
      OBJECT_NAME = "financial_address_credit_simulation"
      def self.object_name
        "financial_address_credit_simulation"
      end

      # String representing the object's type. Objects of the same type share the same value of the object field.
      attr_reader :object
      # The status of the request, signifying whether a simulated credit was initiated.
      attr_reader :status
    end
  end
end
