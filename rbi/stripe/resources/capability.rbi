# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # This is an object representing a capability for a Stripe account.
  #
  # Related guide: [Account capabilities](https://stripe.com/docs/connect/account-capabilities)
  class Capability < APIResource
    class FutureRequirements < Stripe::StripeObject
      class Alternative < Stripe::StripeObject
        sig { returns(T::Array[String]) }
        attr_reader :alternative_fields_due
        sig { returns(T::Array[String]) }
        attr_reader :original_fields_due
      end
      class Error < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :code
        sig { returns(String) }
        attr_reader :reason
        sig { returns(String) }
        attr_reader :requirement
      end
      sig { returns(T.nilable(T::Array[Alternative])) }
      attr_reader :alternatives
      sig { returns(T.nilable(Integer)) }
      attr_reader :current_deadline
      sig { returns(T::Array[String]) }
      attr_reader :currently_due
      sig { returns(T.nilable(String)) }
      attr_reader :disabled_reason
      sig { returns(T::Array[Error]) }
      attr_reader :errors
      sig { returns(T::Array[String]) }
      attr_reader :eventually_due
      sig { returns(T::Array[String]) }
      attr_reader :past_due
      sig { returns(T::Array[String]) }
      attr_reader :pending_verification
    end
    class Requirements < Stripe::StripeObject
      class Alternative < Stripe::StripeObject
        sig { returns(T::Array[String]) }
        attr_reader :alternative_fields_due
        sig { returns(T::Array[String]) }
        attr_reader :original_fields_due
      end
      class Error < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :code
        sig { returns(String) }
        attr_reader :reason
        sig { returns(String) }
        attr_reader :requirement
      end
      sig { returns(T.nilable(T::Array[Alternative])) }
      attr_reader :alternatives
      sig { returns(T.nilable(Integer)) }
      attr_reader :current_deadline
      sig { returns(T::Array[String]) }
      attr_reader :currently_due
      sig { returns(T.nilable(String)) }
      attr_reader :disabled_reason
      sig { returns(T::Array[Error]) }
      attr_reader :errors
      sig { returns(T::Array[String]) }
      attr_reader :eventually_due
      sig { returns(T::Array[String]) }
      attr_reader :past_due
      sig { returns(T::Array[String]) }
      attr_reader :pending_verification
    end
    sig { returns(T.any(String, Stripe::Account)) }
    # The account for which the capability enables functionality.
    attr_reader :account
    sig { returns(FutureRequirements) }
    # Attribute for field future_requirements
    attr_reader :future_requirements
    sig { returns(String) }
    # The identifier for the capability.
    attr_reader :id
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(T::Boolean) }
    # Whether the capability has been requested.
    attr_reader :requested
    sig { returns(T.nilable(Integer)) }
    # Time at which the capability was requested. Measured in seconds since the Unix epoch.
    attr_reader :requested_at
    sig { returns(Requirements) }
    # Attribute for field requirements
    attr_reader :requirements
    sig { returns(String) }
    # The status of the capability.
    attr_reader :status
  end
end