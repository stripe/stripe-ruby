# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    class FinancialAddressGeneratedMicrodeposits < APIResource
      # The amounts of the microdeposits that were generated.
      sig { returns(T::Array[::Stripe::V2::Amount]) }
      def amounts; end
      # String representing the object's type. Objects of the same type share the same value of the object field.
      sig { returns(String) }
      def object; end
      # Closed Enum. The status of the request.
      sig { returns(String) }
      def status; end
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      def livemode; end
    end
  end
end