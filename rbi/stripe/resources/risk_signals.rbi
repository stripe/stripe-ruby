# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class RiskSignals < APIResource
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
    # Represents the status of risk signal session metadata collection. When false, the account has payouts and payments disabled.
    sig { returns(T::Boolean) }
    def session_metadata; end
  end
end