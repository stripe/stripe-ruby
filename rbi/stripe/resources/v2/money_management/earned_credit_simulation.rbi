# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # EarnedCredit Simulations represent simulated EarnedCredit creation requests for testing purposes.
      class EarnedCreditSimulation < APIResource
        # Has the value true if the object exists in live mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The status of the request, signifying whether simulated EarnedCredit creation was initiated.
        sig { returns(String) }
        def status; end
      end
    end
  end
end