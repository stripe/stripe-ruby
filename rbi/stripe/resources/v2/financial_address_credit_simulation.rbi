# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    class FinancialAddressCreditSimulation < APIResource
      # String representing the object's type. Objects of the same type share the same value of the object field.
      sig { returns(String) }
      def object; end
      # The status of the request, signifying whether a simulated credit was initiated.
      sig { returns(String) }
      def status; end
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      def livemode; end
    end
  end
end