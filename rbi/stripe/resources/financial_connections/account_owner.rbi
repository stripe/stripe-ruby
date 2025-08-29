# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module FinancialConnections
    # Describes an owner of an account.
    class AccountOwner < StripeObject
      # The email address of the owner.
      sig { returns(T.nilable(String)) }
      attr_reader :email
      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id
      # The full name of the owner.
      sig { returns(String) }
      attr_reader :name
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object
      # The ownership object that this owner belongs to.
      sig { returns(String) }
      attr_reader :ownership
      # The raw phone number of the owner.
      sig { returns(T.nilable(String)) }
      attr_reader :phone
      # The raw physical address of the owner.
      sig { returns(T.nilable(String)) }
      attr_reader :raw_address
      # The timestamp of the refresh that updated this owner.
      sig { returns(T.nilable(Integer)) }
      attr_reader :refreshed_at
    end
  end
end