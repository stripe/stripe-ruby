# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Payments
      # Off-session payment resource.
      class OffSessionPayment < APIResource
        class RetryDetails < Stripe::StripeObject
          # Number of authorization attempts so far.
          sig { returns(Integer) }
          attr_reader :attempts
          # How you want Stripe to retry the payment.
          sig { returns(String) }
          attr_reader :retry_strategy
        end
        class TransferData < Stripe::StripeObject
          # Amount in minor units that you want to transfer.
          sig { returns(T.nilable(Integer)) }
          attr_reader :amount
          # ID of the connected account where you want money to go.
          sig { returns(String) }
          attr_reader :destination
        end
        # The amount you requested to be collected on the OSP upon creation.
        sig { returns(Stripe::V2::Amount) }
        attr_reader :amount_requested
        # The frequency of the underlying payment that this OSP represents.
        sig { returns(String) }
        attr_reader :cadence
        # ID of owning compartment.
        sig { returns(String) }
        attr_reader :compartment_id
        # Timestamp of creation.
        sig { returns(String) }
        attr_reader :created
        # Customer owning the supplied payment method.
        sig { returns(String) }
        attr_reader :customer
        # Reason why the OSP failed.
        sig { returns(T.nilable(String)) }
        attr_reader :failure_reason
        # ID of the OSP.
        sig { returns(String) }
        attr_reader :id
        # Last error returned by the financial partner for a failed authorization.
        sig { returns(T.nilable(String)) }
        attr_reader :last_authorization_attempt_error
        # Payment attempt record for the latest attempt, if one exists.
        sig { returns(T.nilable(String)) }
        attr_reader :latest_payment_attempt_record
        # True if the txn is livemode, false otherwise.
        sig { returns(T::Boolean) }
        attr_reader :livemode
        # Metadata you provided.
        sig { returns(T::Hash[String, String]) }
        attr_reader :metadata
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        attr_reader :object
        # OBO, same as on the PI.
        sig { returns(T.nilable(String)) }
        attr_reader :on_behalf_of
        # ID of payment method.
        sig { returns(String) }
        attr_reader :payment_method
        # Payment record associated with the OSP. consistent across attempts.
        sig { returns(T.nilable(String)) }
        attr_reader :payment_record
        # Details about the OSP retries.
        sig { returns(RetryDetails) }
        attr_reader :retry_details
        # Statement descriptor you provided.
        sig { returns(T.nilable(String)) }
        attr_reader :statement_descriptor
        # Statement descriptor suffix you provided, similar to that on the PI.
        sig { returns(T.nilable(String)) }
        attr_reader :statement_descriptor_suffix
        # Status of the OSP.
        sig { returns(String) }
        attr_reader :status
        # Test clock to be used to advance the retry attempts.
        sig { returns(T.nilable(String)) }
        attr_reader :test_clock
        # Instructions for the transfer to be made with this OSP after successful money movement.
        sig { returns(T.nilable(TransferData)) }
        attr_reader :transfer_data
      end
    end
  end
end