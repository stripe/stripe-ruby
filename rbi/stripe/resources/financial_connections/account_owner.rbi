# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module FinancialConnections
    # Describes an owner of an account.
    class AccountOwner < StripeObject
      sig { returns(T.nilable(String)) }
      # The email address of the owner.
      attr_reader :email
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(String) }
      # The full name of the owner.
      attr_reader :name
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(String) }
      # The ownership object that this owner belongs to.
      attr_reader :ownership
      sig { returns(T.nilable(String)) }
      # The raw phone number of the owner.
      attr_reader :phone
      sig { returns(T.nilable(String)) }
      # The raw physical address of the owner.
      attr_reader :raw_address
      sig { returns(T.nilable(Integer)) }
      # The timestamp of the refresh that updated this owner.
      attr_reader :refreshed_at
    end
  end
end