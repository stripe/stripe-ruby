# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # Debit Simulations represent a simulated debit transaction applied to financial addresses for testing purposes.
      class FinancialAddressDebitSimulation < APIResource
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The status of the request, signifying whether a simulated debit was initiated.
        sig { returns(String) }
        def status; end
      end
    end
  end
end