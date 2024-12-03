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
        # Fields that can be provided to satisfy all fields in `original_fields_due`.
        sig { returns(T::Array[String]) }
        attr_reader :alternative_fields_due
        # Fields that are due and can be satisfied by providing all fields in `alternative_fields_due`.
        sig { returns(T::Array[String]) }
        attr_reader :original_fields_due
      end
      class Error < Stripe::StripeObject
        # The code for the type of error.
        sig { returns(String) }
        attr_reader :code
        # An informative message that indicates the error type and provides additional details about the error.
        sig { returns(String) }
        attr_reader :reason
        # The specific user onboarding requirement field (in the requirements hash) that needs to be resolved.
        sig { returns(String) }
        attr_reader :requirement
      end
      # Fields that are due and can be satisfied by providing the corresponding alternative fields instead.
      sig { returns(T.nilable(T::Array[Alternative])) }
      attr_reader :alternatives
      # Date on which `future_requirements` becomes the main `requirements` hash and `future_requirements` becomes empty. After the transition, `currently_due` requirements may immediately become `past_due`, but the account may also be given a grace period depending on the capability's enablement state prior to transitioning.
      sig { returns(T.nilable(Integer)) }
      attr_reader :current_deadline
      # Fields that need to be collected to keep the capability enabled. If not collected by `future_requirements[current_deadline]`, these fields will transition to the main `requirements` hash.
      sig { returns(T::Array[String]) }
      attr_reader :currently_due
      # This is typed as an enum for consistency with `requirements.disabled_reason`, but it safe to assume `future_requirements.disabled_reason` is null because fields in `future_requirements` will never disable the account.
      sig { returns(T.nilable(String)) }
      attr_reader :disabled_reason
      # Fields that are `currently_due` and need to be collected again because validation or verification failed.
      sig { returns(T::Array[Error]) }
      attr_reader :errors
      # Fields that need to be collected assuming all volume thresholds are reached. As they become required, they appear in `currently_due` as well.
      sig { returns(T::Array[String]) }
      attr_reader :eventually_due
      # Fields that weren't collected by `requirements.current_deadline`. These fields need to be collected to enable the capability on the account. New fields will never appear here; `future_requirements.past_due` will always be a subset of `requirements.past_due`.
      sig { returns(T::Array[String]) }
      attr_reader :past_due
      # Fields that might become required depending on the results of verification or review. It's an empty array unless an asynchronous verification is pending. If verification fails, these fields move to `eventually_due` or `currently_due`. Fields might appear in `eventually_due` or `currently_due` and in `pending_verification` if verification fails but another verification is still pending.
      sig { returns(T::Array[String]) }
      attr_reader :pending_verification
    end
    class Requirements < Stripe::StripeObject
      class Alternative < Stripe::StripeObject
        # Fields that can be provided to satisfy all fields in `original_fields_due`.
        sig { returns(T::Array[String]) }
        attr_reader :alternative_fields_due
        # Fields that are due and can be satisfied by providing all fields in `alternative_fields_due`.
        sig { returns(T::Array[String]) }
        attr_reader :original_fields_due
      end
      class Error < Stripe::StripeObject
        # The code for the type of error.
        sig { returns(String) }
        attr_reader :code
        # An informative message that indicates the error type and provides additional details about the error.
        sig { returns(String) }
        attr_reader :reason
        # The specific user onboarding requirement field (in the requirements hash) that needs to be resolved.
        sig { returns(String) }
        attr_reader :requirement
      end
      # Fields that are due and can be satisfied by providing the corresponding alternative fields instead.
      sig { returns(T.nilable(T::Array[Alternative])) }
      attr_reader :alternatives
      # Date by which the fields in `currently_due` must be collected to keep the capability enabled for the account. These fields may disable the capability sooner if the next threshold is reached before they are collected.
      sig { returns(T.nilable(Integer)) }
      attr_reader :current_deadline
      # Fields that need to be collected to keep the capability enabled. If not collected by `current_deadline`, these fields appear in `past_due` as well, and the capability is disabled.
      sig { returns(T::Array[String]) }
      attr_reader :currently_due
      # Description of why the capability is disabled. [Learn more about handling verification issues](https://stripe.com/docs/connect/handling-api-verification).
      sig { returns(T.nilable(String)) }
      attr_reader :disabled_reason
      # Fields that are `currently_due` and need to be collected again because validation or verification failed.
      sig { returns(T::Array[Error]) }
      attr_reader :errors
      # Fields that need to be collected assuming all volume thresholds are reached. As they become required, they appear in `currently_due` as well, and `current_deadline` becomes set.
      sig { returns(T::Array[String]) }
      attr_reader :eventually_due
      # Fields that weren't collected by `current_deadline`. These fields need to be collected to enable the capability on the account.
      sig { returns(T::Array[String]) }
      attr_reader :past_due
      # Fields that might become required depending on the results of verification or review. It's an empty array unless an asynchronous verification is pending. If verification fails, these fields move to `eventually_due`, `currently_due`, or `past_due`. Fields might appear in `eventually_due`, `currently_due`, or `past_due` and in `pending_verification` if verification fails but another verification is still pending.
      sig { returns(T::Array[String]) }
      attr_reader :pending_verification
    end
    # The account for which the capability enables functionality.
    sig { returns(T.any(String, Stripe::Account)) }
    attr_reader :account

    # Attribute for field future_requirements
    sig { returns(FutureRequirements) }
    attr_reader :future_requirements

    # The identifier for the capability.
    sig { returns(String) }
    attr_reader :id

    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object

    # Whether the capability has been requested.
    sig { returns(T::Boolean) }
    attr_reader :requested

    # Time at which the capability was requested. Measured in seconds since the Unix epoch.
    sig { returns(T.nilable(Integer)) }
    attr_reader :requested_at

    # Attribute for field requirements
    sig { returns(Requirements) }
    attr_reader :requirements

    # The status of the capability.
    sig { returns(String) }
    attr_reader :status
  end
end