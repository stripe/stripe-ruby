# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    class FinancialAddressGeneratedMicrodeposits < APIResource
      # The amounts of the microdeposits that were generated.
      sig { returns(T::Array[Stripe::V2::Amount]) }
      attr_reader :amounts
      # String representing the object's type. Objects of the same type share the same value of the object field.
      sig { returns(String) }
      attr_reader :object
      # Closed Enum. The status of the request.
      sig { returns(String) }
      attr_reader :status
    end
  end
end