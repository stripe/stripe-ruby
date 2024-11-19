# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Treasury
    # Use [InboundTransfers](https://docs.stripe.com/docs/treasury/moving-money/financial-accounts/into/inbound-transfers) to add funds to your [FinancialAccount](https://stripe.com/docs/api#financial_accounts) via a PaymentMethod that is owned by you. The funds will be transferred via an ACH debit.
    #
    # Related guide: [Moving money with Treasury using InboundTransfer objects](https://docs.stripe.com/docs/treasury/moving-money/financial-accounts/into/inbound-transfers)
    class InboundTransfer < APIResource
      class FailureDetails < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :code
      end
      class LinkedFlows < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :received_debit
      end
      class OriginPaymentMethodDetails < Stripe::StripeObject
        class BillingDetails < Stripe::StripeObject
          class Address < Stripe::StripeObject
            sig { returns(T.nilable(String)) }
            attr_reader :city
            sig { returns(T.nilable(String)) }
            attr_reader :country
            sig { returns(T.nilable(String)) }
            attr_reader :line1
            sig { returns(T.nilable(String)) }
            attr_reader :line2
            sig { returns(T.nilable(String)) }
            attr_reader :postal_code
            sig { returns(T.nilable(String)) }
            attr_reader :state
          end
          sig { returns(Address) }
          attr_reader :address
          sig { returns(T.nilable(String)) }
          attr_reader :email
          sig { returns(T.nilable(String)) }
          attr_reader :name
        end
        class UsBankAccount < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :account_holder_type
          sig { returns(T.nilable(String)) }
          attr_reader :account_type
          sig { returns(T.nilable(String)) }
          attr_reader :bank_name
          sig { returns(T.nilable(String)) }
          attr_reader :fingerprint
          sig { returns(T.nilable(String)) }
          attr_reader :last4
          sig { returns(T.any(String, Stripe::Mandate)) }
          attr_reader :mandate
          sig { returns(String) }
          attr_reader :network
          sig { returns(T.nilable(String)) }
          attr_reader :routing_number
        end
        sig { returns(BillingDetails) }
        attr_reader :billing_details
        sig { returns(String) }
        attr_reader :type
        sig { returns(UsBankAccount) }
        attr_reader :us_bank_account
      end
      class StatusTransitions < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :canceled_at
        sig { returns(T.nilable(Integer)) }
        attr_reader :failed_at
        sig { returns(T.nilable(Integer)) }
        attr_reader :succeeded_at
      end
      sig { returns(Integer) }
      # Amount (in cents) transferred.
      attr_reader :amount
      sig { returns(T::Boolean) }
      # Returns `true` if the InboundTransfer is able to be canceled.
      attr_reader :cancelable
      sig { returns(Integer) }
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      sig { returns(String) }
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      sig { returns(T.nilable(String)) }
      # An arbitrary string attached to the object. Often useful for displaying to users.
      attr_reader :description
      sig { returns(T.nilable(FailureDetails)) }
      # Details about this InboundTransfer's failure. Only set when status is `failed`.
      attr_reader :failure_details
      sig { returns(String) }
      # The FinancialAccount that received the funds.
      attr_reader :financial_account
      sig { returns(T.nilable(String)) }
      # A [hosted transaction receipt](https://stripe.com/docs/treasury/moving-money/regulatory-receipts) URL that is provided when money movement is considered regulated under Stripe's money transmission licenses.
      attr_reader :hosted_regulatory_receipt_url
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(LinkedFlows) }
      # Attribute for field linked_flows
      attr_reader :linked_flows
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(T::Hash[String, String]) }
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(T.nilable(String)) }
      # The origin payment method to be debited for an InboundTransfer.
      attr_reader :origin_payment_method
      sig { returns(T.nilable(OriginPaymentMethodDetails)) }
      # Details about the PaymentMethod for an InboundTransfer.
      attr_reader :origin_payment_method_details
      sig { returns(T.nilable(T::Boolean)) }
      # Returns `true` if the funds for an InboundTransfer were returned after the InboundTransfer went to the `succeeded` state.
      attr_reader :returned
      sig { returns(String) }
      # Statement descriptor shown when funds are debited from the source. Not all payment networks support `statement_descriptor`.
      attr_reader :statement_descriptor
      sig { returns(String) }
      # Status of the InboundTransfer: `processing`, `succeeded`, `failed`, and `canceled`. An InboundTransfer is `processing` if it is created and pending. The status changes to `succeeded` once the funds have been "confirmed" and a `transaction` is created and posted. The status changes to `failed` if the transfer fails.
      attr_reader :status
      sig { returns(StatusTransitions) }
      # Attribute for field status_transitions
      attr_reader :status_transitions
      sig { returns(T.nilable(T.any(String, Stripe::Treasury::Transaction))) }
      # The Transaction associated with this object.
      attr_reader :transaction
    end
  end
end