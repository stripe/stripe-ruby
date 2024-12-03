# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Treasury
    # Use [InboundTransfers](https://docs.stripe.com/docs/treasury/moving-money/financial-accounts/into/inbound-transfers) to add funds to your [FinancialAccount](https://stripe.com/docs/api#financial_accounts) via a PaymentMethod that is owned by you. The funds will be transferred via an ACH debit.
    #
    # Related guide: [Moving money with Treasury using InboundTransfer objects](https://docs.stripe.com/docs/treasury/moving-money/financial-accounts/into/inbound-transfers)
    class InboundTransfer < APIResource
      class FailureDetails < Stripe::StripeObject
        # Reason for the failure.
        sig { returns(String) }
        attr_reader :code
      end
      class LinkedFlows < Stripe::StripeObject
        # If funds for this flow were returned after the flow went to the `succeeded` state, this field contains a reference to the ReceivedDebit return.
        sig { returns(T.nilable(String)) }
        attr_reader :received_debit
      end
      class OriginPaymentMethodDetails < Stripe::StripeObject
        class BillingDetails < Stripe::StripeObject
          class Address < Stripe::StripeObject
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            attr_reader :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            attr_reader :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(T.nilable(String)) }
            attr_reader :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            attr_reader :line2
            # ZIP or postal code.
            sig { returns(T.nilable(String)) }
            attr_reader :postal_code
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            attr_reader :state
          end
          # Attribute for field address
          sig { returns(Address) }
          attr_reader :address
          # Email address.
          sig { returns(T.nilable(String)) }
          attr_reader :email
          # Full name.
          sig { returns(T.nilable(String)) }
          attr_reader :name
        end
        class UsBankAccount < Stripe::StripeObject
          # Account holder type: individual or company.
          sig { returns(T.nilable(String)) }
          attr_reader :account_holder_type
          # Account type: checkings or savings. Defaults to checking if omitted.
          sig { returns(T.nilable(String)) }
          attr_reader :account_type
          # Name of the bank associated with the bank account.
          sig { returns(T.nilable(String)) }
          attr_reader :bank_name
          # Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
          sig { returns(T.nilable(String)) }
          attr_reader :fingerprint
          # Last four digits of the bank account number.
          sig { returns(T.nilable(String)) }
          attr_reader :last4
          # ID of the mandate used to make this payment.
          sig { returns(T.any(String, Stripe::Mandate)) }
          attr_reader :mandate
          # The network rails used. See the [docs](https://stripe.com/docs/treasury/money-movement/timelines) to learn more about money movement timelines for each network type.
          sig { returns(String) }
          attr_reader :network
          # Routing number of the bank account.
          sig { returns(T.nilable(String)) }
          attr_reader :routing_number
        end
        # Attribute for field billing_details
        sig { returns(BillingDetails) }
        attr_reader :billing_details
        # The type of the payment method used in the InboundTransfer.
        sig { returns(String) }
        attr_reader :type
        # Attribute for field us_bank_account
        sig { returns(UsBankAccount) }
        attr_reader :us_bank_account
      end
      class StatusTransitions < Stripe::StripeObject
        # Timestamp describing when an InboundTransfer changed status to `canceled`.
        sig { returns(T.nilable(Integer)) }
        attr_reader :canceled_at
        # Timestamp describing when an InboundTransfer changed status to `failed`.
        sig { returns(T.nilable(Integer)) }
        attr_reader :failed_at
        # Timestamp describing when an InboundTransfer changed status to `succeeded`.
        sig { returns(T.nilable(Integer)) }
        attr_reader :succeeded_at
      end
      # Amount (in cents) transferred.
      sig { returns(Integer) }
      attr_reader :amount

      # Returns `true` if the InboundTransfer is able to be canceled.
      sig { returns(T::Boolean) }
      attr_reader :cancelable

      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created

      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      attr_reader :currency

      # An arbitrary string attached to the object. Often useful for displaying to users.
      sig { returns(T.nilable(String)) }
      attr_reader :description

      # Details about this InboundTransfer's failure. Only set when status is `failed`.
      sig { returns(T.nilable(FailureDetails)) }
      attr_reader :failure_details

      # The FinancialAccount that received the funds.
      sig { returns(String) }
      attr_reader :financial_account

      # A [hosted transaction receipt](https://stripe.com/docs/treasury/moving-money/regulatory-receipts) URL that is provided when money movement is considered regulated under Stripe's money transmission licenses.
      sig { returns(T.nilable(String)) }
      attr_reader :hosted_regulatory_receipt_url

      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id

      # Attribute for field linked_flows
      sig { returns(LinkedFlows) }
      attr_reader :linked_flows

      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode

      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T::Hash[String, String]) }
      attr_reader :metadata

      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object

      # The origin payment method to be debited for an InboundTransfer.
      sig { returns(T.nilable(String)) }
      attr_reader :origin_payment_method

      # Details about the PaymentMethod for an InboundTransfer.
      sig { returns(T.nilable(OriginPaymentMethodDetails)) }
      attr_reader :origin_payment_method_details

      # Returns `true` if the funds for an InboundTransfer were returned after the InboundTransfer went to the `succeeded` state.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :returned

      # Statement descriptor shown when funds are debited from the source. Not all payment networks support `statement_descriptor`.
      sig { returns(String) }
      attr_reader :statement_descriptor

      # Status of the InboundTransfer: `processing`, `succeeded`, `failed`, and `canceled`. An InboundTransfer is `processing` if it is created and pending. The status changes to `succeeded` once the funds have been "confirmed" and a `transaction` is created and posted. The status changes to `failed` if the transfer fails.
      sig { returns(String) }
      attr_reader :status

      # Attribute for field status_transitions
      sig { returns(StatusTransitions) }
      attr_reader :status_transitions

      # The Transaction associated with this object.
      sig { returns(T.nilable(T.any(String, Stripe::Treasury::Transaction))) }
      attr_reader :transaction
    end
  end
end