# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module FinancialConnections
    # An institution represents a financial institution to which an end user can connect using the Financial Connections authentication flow.
    class Institution < APIResource
      class Features < Stripe::StripeObject
        class Balances < Stripe::StripeObject
          sig { returns(T::Boolean) }
          attr_reader :supported
        end
        class Ownership < Stripe::StripeObject
          sig { returns(T::Boolean) }
          attr_reader :supported
        end
        class PaymentMethod < Stripe::StripeObject
          sig { returns(T::Boolean) }
          attr_reader :supported
        end
        class Transactions < Stripe::StripeObject
          sig { returns(T::Boolean) }
          attr_reader :supported
        end
        sig { returns(Balances) }
        attr_reader :balances
        sig { returns(Ownership) }
        attr_reader :ownership
        sig { returns(PaymentMethod) }
        attr_reader :payment_method
        sig { returns(Transactions) }
        attr_reader :transactions
      end
      sig { returns(Features) }
      # Attribute for field features
      attr_reader :features
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(String) }
      # The name of this institution.
      attr_reader :name
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(T::Array[String]) }
      # A list of routing numbers which are known to correspond to this institution. Due to the many to many relationship between institutions and routing numbers, this list may not be comprehensive and routing numbers may also be shared between institutions.
      attr_reader :routing_numbers
      sig { returns(String) }
      # The status of this institution in the Financial Connections authentication flow.
      attr_reader :status
      sig { returns(T.nilable(String)) }
      # A URL corresponding to this institution. This URL is also displayed in the authentication flow to help end users confirm that they are authenticating with the right institution.
      attr_reader :url
    end
  end
end