# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Payments
      # Off-session payment resource.
      class OffSessionPayment < APIResource
        OBJECT_NAME = "v2.payments.off_session_payment"
        def self.object_name
          "v2.payments.off_session_payment"
        end

        class RetryDetails < Stripe::StripeObject
          # Number of authorization attempts so far.
          attr_reader :attempts
          # How you want Stripe to retry the payment.
          attr_reader :retry_strategy
        end

        class TransferData < Stripe::StripeObject
          # Amount in minor units that you want to transfer.
          attr_reader :amount
          # ID of the connected account where you want money to go.
          attr_reader :destination
        end
        # The amount you requested to be collected on the OSP upon creation.
        attr_reader :amount_requested
        # The frequency of the underlying payment that this OSP represents.
        attr_reader :cadence
        # ID of owning compartment.
        attr_reader :compartment_id
        # Timestamp of creation.
        attr_reader :created
        # Customer owning the supplied payment method.
        attr_reader :customer
        # Reason why the OSP failed.
        attr_reader :failure_reason
        # ID of the OSP.
        attr_reader :id
        # Last error returned by the financial partner for a failed authorization.
        attr_reader :last_authorization_attempt_error
        # Payment attempt record for the latest attempt, if one exists.
        attr_reader :latest_payment_attempt_record
        # True if the txn is livemode, false otherwise.
        attr_reader :livemode
        # Metadata you provided.
        attr_reader :metadata
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # OBO, same as on the PI.
        attr_reader :on_behalf_of
        # ID of payment method.
        attr_reader :payment_method
        # Payment record associated with the OSP. consistent across attempts.
        attr_reader :payment_record
        # Details about the OSP retries.
        attr_reader :retry_details
        # Statement descriptor you provided.
        attr_reader :statement_descriptor
        # Statement descriptor suffix you provided, similar to that on the PI.
        attr_reader :statement_descriptor_suffix
        # Status of the OSP.
        attr_reader :status
        # Test clock to be used to advance the retry attempts.
        attr_reader :test_clock
        # Instructions for the transfer to be made with this OSP after successful money movement.
        attr_reader :transfer_data
      end
    end
  end
end
