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
        def alternative_fields_due; end
        # Fields that are due and can be satisfied by providing all fields in `alternative_fields_due`.
        sig { returns(T::Array[String]) }
        def original_fields_due; end
      end
      class Error < Stripe::StripeObject
        # The code for the type of error.
        sig { returns(String) }
        def code; end
        # An informative message that indicates the error type and provides additional details about the error.
        sig { returns(String) }
        def reason; end
        # The specific user onboarding requirement field (in the requirements hash) that needs to be resolved.
        sig { returns(String) }
        def requirement; end
      end
      # Fields that are due and can be satisfied by providing the corresponding alternative fields instead.
      sig { returns(T.nilable(T::Array[Alternative])) }
      def alternatives; end
      # Date on which `future_requirements` becomes the main `requirements` hash and `future_requirements` becomes empty. After the transition, `currently_due` requirements may immediately become `past_due`, but the account may also be given a grace period depending on the capability's enablement state prior to transitioning.
      sig { returns(T.nilable(Integer)) }
      def current_deadline; end
      # Fields that need to be collected to keep the capability enabled. If not collected by `future_requirements[current_deadline]`, these fields will transition to the main `requirements` hash.
      sig { returns(T::Array[String]) }
      def currently_due; end
      # This is typed as an enum for consistency with `requirements.disabled_reason`, but it safe to assume `future_requirements.disabled_reason` is null because fields in `future_requirements` will never disable the account.
      sig { returns(T.nilable(String)) }
      def disabled_reason; end
      # Fields that are `currently_due` and need to be collected again because validation or verification failed.
      sig { returns(T::Array[Error]) }
      def errors; end
      # Fields you must collect when all thresholds are reached. As they become required, they appear in `currently_due` as well.
      sig { returns(T::Array[String]) }
      def eventually_due; end
      # Fields that weren't collected by `requirements.current_deadline`. These fields need to be collected to enable the capability on the account. New fields will never appear here; `future_requirements.past_due` will always be a subset of `requirements.past_due`.
      sig { returns(T::Array[String]) }
      def past_due; end
      # Fields that might become required depending on the results of verification or review. It's an empty array unless an asynchronous verification is pending. If verification fails, these fields move to `eventually_due` or `currently_due`. Fields might appear in `eventually_due` or `currently_due` and in `pending_verification` if verification fails but another verification is still pending.
      sig { returns(T::Array[String]) }
      def pending_verification; end
    end
    class Requirements < Stripe::StripeObject
      class Alternative < Stripe::StripeObject
        # Fields that can be provided to satisfy all fields in `original_fields_due`.
        sig { returns(T::Array[String]) }
        def alternative_fields_due; end
        # Fields that are due and can be satisfied by providing all fields in `alternative_fields_due`.
        sig { returns(T::Array[String]) }
        def original_fields_due; end
      end
      class Error < Stripe::StripeObject
        # The code for the type of error.
        sig { returns(String) }
        def code; end
        # An informative message that indicates the error type and provides additional details about the error.
        sig { returns(String) }
        def reason; end
        # The specific user onboarding requirement field (in the requirements hash) that needs to be resolved.
        sig { returns(String) }
        def requirement; end
      end
      # Fields that are due and can be satisfied by providing the corresponding alternative fields instead.
      sig { returns(T.nilable(T::Array[Alternative])) }
      def alternatives; end
      # The date by which all required account information must be both submitted and verified. This includes fields listed in `currently_due` as well as those in `pending_verification`. If any required information is missing or unverified by this date, the account may be disabled. Note that `current_deadline` may change if additional `currently_due` requirements are requested.
      sig { returns(T.nilable(Integer)) }
      def current_deadline; end
      # Fields that need to be collected to keep the capability enabled. If not collected by `current_deadline`, these fields appear in `past_due` as well, and the capability is disabled.
      sig { returns(T::Array[String]) }
      def currently_due; end
      # Description of why the capability is disabled. [Learn more about handling verification issues](https://stripe.com/docs/connect/handling-api-verification).
      sig { returns(T.nilable(String)) }
      def disabled_reason; end
      # Fields that are `currently_due` and need to be collected again because validation or verification failed.
      sig { returns(T::Array[Error]) }
      def errors; end
      # Fields you must collect when all thresholds are reached. As they become required, they appear in `currently_due` as well, and `current_deadline` becomes set.
      sig { returns(T::Array[String]) }
      def eventually_due; end
      # Fields that weren't collected by `current_deadline`. These fields need to be collected to enable the capability on the account.
      sig { returns(T::Array[String]) }
      def past_due; end
      # Fields that might become required depending on the results of verification or review. It's an empty array unless an asynchronous verification is pending. If verification fails, these fields move to `eventually_due`, `currently_due`, or `past_due`. Fields might appear in `eventually_due`, `currently_due`, or `past_due` and in `pending_verification` if verification fails but another verification is still pending.
      sig { returns(T::Array[String]) }
      def pending_verification; end
    end
    # The account for which the capability enables functionality.
    sig { returns(T.any(String, Stripe::Account)) }
    def account; end
    # Attribute for field future_requirements
    sig { returns(FutureRequirements) }
    def future_requirements; end
    # The identifier for the capability.
    sig { returns(String) }
    def id; end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
    # Whether the capability has been requested.
    sig { returns(T::Boolean) }
    def requested; end
    # Time at which the capability was requested. Measured in seconds since the Unix epoch.
    sig { returns(T.nilable(Integer)) }
    def requested_at; end
    # Attribute for field requirements
    sig { returns(Requirements) }
    def requirements; end
    # The status of the capability.
    sig { returns(String) }
    def status; end
  end
end