# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module FinancialConnections
    # Describes a snapshot of the owners of an account at a particular point in time.
    class AccountOwnership < StripeObject
      sig { returns(Integer) }
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(Stripe::ListObject) }
      # A paginated list of owners for this account.
      attr_reader :owners
    end
  end
end