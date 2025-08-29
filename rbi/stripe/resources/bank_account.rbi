# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # These bank accounts are payment methods on `Customer` objects.
  #
  # On the other hand [External Accounts](https://docs.stripe.com/api#external_accounts) are transfer
  # destinations on `Account` objects for connected accounts.
  # They can be bank accounts or debit cards as well, and are documented in the links above.
  #
  # Related guide: [Bank debits and transfers](https://docs.stripe.com/payments/bank-debits-transfers)
  class BankAccount < APIResource
    class FutureRequirements < Stripe::StripeObject
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
      # Fields that need to be collected to keep the external account enabled. If not collected by `current_deadline`, these fields appear in `past_due` as well, and the account is disabled.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :currently_due
      # Fields that are `currently_due` and need to be collected again because validation or verification failed.
      sig { returns(T.nilable(T::Array[Error])) }
      attr_reader :errors
      # Fields that weren't collected by `current_deadline`. These fields need to be collected to enable the external account.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :past_due
      # Fields that might become required depending on the results of verification or review. It's an empty array unless an asynchronous verification is pending. If verification fails, these fields move to `eventually_due`, `currently_due`, or `past_due`. Fields might appear in `eventually_due`, `currently_due`, or `past_due` and in `pending_verification` if verification fails but another verification is still pending.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :pending_verification
    end
    class Requirements < Stripe::StripeObject
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
      # Fields that need to be collected to keep the external account enabled. If not collected by `current_deadline`, these fields appear in `past_due` as well, and the account is disabled.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :currently_due
      # Fields that are `currently_due` and need to be collected again because validation or verification failed.
      sig { returns(T.nilable(T::Array[Error])) }
      attr_reader :errors
      # Fields that weren't collected by `current_deadline`. These fields need to be collected to enable the external account.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :past_due
      # Fields that might become required depending on the results of verification or review. It's an empty array unless an asynchronous verification is pending. If verification fails, these fields move to `eventually_due`, `currently_due`, or `past_due`. Fields might appear in `eventually_due`, `currently_due`, or `past_due` and in `pending_verification` if verification fails but another verification is still pending.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :pending_verification
    end
    # The account this bank account belongs to. Only applicable on Accounts (not customers or recipients) This property is only available when returned as an [External Account](/api/external_account_bank_accounts/object) where [controller.is_controller](/api/accounts/object#account_object-controller-is_controller) is `true`.
    sig { returns(T.nilable(T.any(String, Stripe::Account))) }
    attr_reader :account
    # The name of the person or business that owns the bank account.
    sig { returns(T.nilable(String)) }
    attr_reader :account_holder_name
    # The type of entity that holds the account. This can be either `individual` or `company`.
    sig { returns(T.nilable(String)) }
    attr_reader :account_holder_type
    # The bank account type. This can only be `checking` or `savings` in most countries. In Japan, this can only be `futsu` or `toza`.
    sig { returns(T.nilable(String)) }
    attr_reader :account_type
    # A set of available payout methods for this bank account. Only values from this set should be passed as the `method` when creating a payout.
    sig { returns(T.nilable(T::Array[String])) }
    attr_reader :available_payout_methods
    # Name of the bank associated with the routing number (e.g., `WELLS FARGO`).
    sig { returns(T.nilable(String)) }
    attr_reader :bank_name
    # Two-letter ISO code representing the country the bank account is located in.
    sig { returns(String) }
    attr_reader :country
    # Three-letter [ISO code for the currency](https://stripe.com/docs/payouts) paid out to the bank account.
    sig { returns(String) }
    attr_reader :currency
    # The ID of the customer that the bank account is associated with.
    sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
    attr_reader :customer
    # Whether this bank account is the default external account for its currency.
    sig { returns(T.nilable(T::Boolean)) }
    attr_reader :default_for_currency
    # Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
    sig { returns(T.nilable(String)) }
    attr_reader :fingerprint
    # Information about the [upcoming new requirements for the bank account](https://stripe.com/docs/connect/custom-accounts/future-requirements), including what information needs to be collected, and by when.
    sig { returns(T.nilable(FutureRequirements)) }
    attr_reader :future_requirements
    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id
    # The last four digits of the bank account number.
    sig { returns(String) }
    attr_reader :last4
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T.nilable(T::Hash[String, String])) }
    attr_reader :metadata
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object
    # Information about the requirements for the bank account, including what information needs to be collected.
    sig { returns(T.nilable(Requirements)) }
    attr_reader :requirements
    # The routing transit number for the bank account.
    sig { returns(T.nilable(String)) }
    attr_reader :routing_number
    # For bank accounts, possible values are `new`, `validated`, `verified`, `verification_failed`, or `errored`. A bank account that hasn't had any activity or validation performed is `new`. If Stripe can determine that the bank account exists, its status will be `validated`. Note that there often isn’t enough information to know (e.g., for smaller credit unions), and the validation is not always run. If customer bank account verification has succeeded, the bank account status will be `verified`. If the verification failed for any reason, such as microdeposit failure, the status will be `verification_failed`. If a payout sent to this bank account fails, we'll set the status to `errored` and will not continue to send [scheduled payouts](https://stripe.com/docs/payouts#payout-schedule) until the bank details are updated.
    #
    # For external accounts, possible values are `new`, `errored` and `verification_failed`. If a payout fails, the status is set to `errored` and scheduled payouts are stopped until account details are updated. In the US and India, if we can't [verify the owner of the bank account](https://support.stripe.com/questions/bank-account-ownership-verification), we'll set the status to `verification_failed`. Other validations aren't run against external accounts because they're only used for payouts. This means the other statuses don't apply.
    sig { returns(String) }
    attr_reader :status
    # Always true for a deleted object
    sig { returns(T::Boolean) }
    attr_reader :deleted
  end
end