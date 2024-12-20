# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module FinancialConnections
    # Describes a snapshot of the owners of an account at a particular point in time.
    class AccountOwnership < StripeObject
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created
      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object
      # A paginated list of owners for this account.
      sig { returns(Stripe::ListObject) }
      attr_reader :owners
    end
  end
end