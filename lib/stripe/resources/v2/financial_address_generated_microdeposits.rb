# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    class FinancialAddressGeneratedMicrodeposits < APIResource
      OBJECT_NAME = "financial_address_generated_microdeposits"
      def self.object_name
        "financial_address_generated_microdeposits"
      end

      # The amounts of the microdeposits that were generated.
      attr_reader :amounts
      # String representing the object's type. Objects of the same type share the same value of the object field.
      attr_reader :object
      # Closed Enum. The status of the request.
      attr_reader :status
    end
  end
end
