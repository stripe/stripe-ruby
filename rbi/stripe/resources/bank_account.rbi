# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # These bank accounts are payment methods on `Customer` objects.
  #
  # On the other hand [External Accounts](https://stripe.com/api#external_accounts) are transfer
  # destinations on `Account` objects for connected accounts.
  # They can be bank accounts or debit cards as well, and are documented in the links above.
  #
  # Related guide: [Bank debits and transfers](https://stripe.com/payments/bank-debits-transfers)
  class BankAccount < APIResource
    class FutureRequirements < Stripe::StripeObject
      class Error < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :code
        sig { returns(String) }
        attr_reader :reason
        sig { returns(String) }
        attr_reader :requirement
      end
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :currently_due
      sig { returns(T.nilable(T::Array[Error])) }
      attr_reader :errors
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :past_due
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :pending_verification
    end
    class Requirements < Stripe::StripeObject
      class Error < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :code
        sig { returns(String) }
        attr_reader :reason
        sig { returns(String) }
        attr_reader :requirement
      end
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :currently_due
      sig { returns(T.nilable(T::Array[Error])) }
      attr_reader :errors
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :past_due
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :pending_verification
    end
    sig { returns(T.nilable(T.any(String, Stripe::Account))) }
    # The ID of the account that the bank account is associated with.
    attr_reader :account
    sig { returns(T.nilable(String)) }
    # The name of the person or business that owns the bank account.
    attr_reader :account_holder_name
    sig { returns(T.nilable(String)) }
    # The type of entity that holds the account. This can be either `individual` or `company`.
    attr_reader :account_holder_type
    sig { returns(T.nilable(String)) }
    # The bank account type. This can only be `checking` or `savings` in most countries. In Japan, this can only be `futsu` or `toza`.
    attr_reader :account_type
    sig { returns(T.nilable(T::Array[String])) }
    # A set of available payout methods for this bank account. Only values from this set should be passed as the `method` when creating a payout.
    attr_reader :available_payout_methods
    sig { returns(T.nilable(String)) }
    # Name of the bank associated with the routing number (e.g., `WELLS FARGO`).
    attr_reader :bank_name
    sig { returns(String) }
    # Two-letter ISO code representing the country the bank account is located in.
    attr_reader :country
    sig { returns(String) }
    # Three-letter [ISO code for the currency](https://stripe.com/docs/payouts) paid out to the bank account.
    attr_reader :currency
    sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
    # The ID of the customer that the bank account is associated with.
    attr_reader :customer
    sig { returns(T.nilable(T::Boolean)) }
    # Whether this bank account is the default external account for its currency.
    attr_reader :default_for_currency
    sig { returns(T.nilable(String)) }
    # Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
    attr_reader :fingerprint
    sig { returns(T.nilable(FutureRequirements)) }
    # Information about the [upcoming new requirements for the bank account](https://stripe.com/docs/connect/custom-accounts/future-requirements), including what information needs to be collected, and by when.
    attr_reader :future_requirements
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(String) }
    # The last four digits of the bank account number.
    attr_reader :last4
    sig { returns(T.nilable(T::Hash[String, String])) }
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(T.nilable(Requirements)) }
    # Information about the requirements for the bank account, including what information needs to be collected.
    attr_reader :requirements
    sig { returns(T.nilable(String)) }
    # The routing transit number for the bank account.
    attr_reader :routing_number
    sig { returns(String) }
    # For bank accounts, possible values are `new`, `validated`, `verified`, `verification_failed`, or `errored`. A bank account that hasn't had any activity or validation performed is `new`. If Stripe can determine that the bank account exists, its status will be `validated`. Note that there often isn’t enough information to know (e.g., for smaller credit unions), and the validation is not always run. If customer bank account verification has succeeded, the bank account status will be `verified`. If the verification failed for any reason, such as microdeposit failure, the status will be `verification_failed`. If a payout sent to this bank account fails, we'll set the status to `errored` and will not continue to send [scheduled payouts](https://stripe.com/docs/payouts#payout-schedule) until the bank details are updated.
    #
    # For external accounts, possible values are `new`, `errored` and `verification_failed`. If a payout fails, the status is set to `errored` and scheduled payouts are stopped until account details are updated. In the US and India, if we can't [verify the owner of the bank account](https://support.stripe.com/questions/bank-account-ownership-verification), we'll set the status to `verification_failed`. Other validations aren't run against external accounts because they're only used for payouts. This means the other statuses don't apply.
    attr_reader :status
    sig { returns(T::Boolean) }
    # Always true for a deleted object
    attr_reader :deleted
  end
end