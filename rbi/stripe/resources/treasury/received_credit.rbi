# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Treasury
    # ReceivedCredits represent funds sent to a [FinancialAccount](https://stripe.com/docs/api#financial_accounts) (for example, via ACH or wire). These money movements are not initiated from the FinancialAccount.
    class ReceivedCredit < APIResource
      class InitiatingPaymentMethodDetails < Stripe::StripeObject
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
        class FinancialAccount < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :id
          sig { returns(String) }
          attr_reader :network
        end
        class UsBankAccount < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :bank_name
          sig { returns(T.nilable(String)) }
          attr_reader :last4
          sig { returns(T.nilable(String)) }
          attr_reader :routing_number
        end
        sig { returns(String) }
        attr_reader :balance
        sig { returns(BillingDetails) }
        attr_reader :billing_details
        sig { returns(FinancialAccount) }
        attr_reader :financial_account
        sig { returns(String) }
        attr_reader :issuing_card
        sig { returns(String) }
        attr_reader :type
        sig { returns(UsBankAccount) }
        attr_reader :us_bank_account
      end
      class LinkedFlows < Stripe::StripeObject
        class SourceFlowDetails < Stripe::StripeObject
          sig { returns(Stripe::Treasury::CreditReversal) }
          attr_reader :credit_reversal
          sig { returns(Stripe::Treasury::OutboundPayment) }
          attr_reader :outbound_payment
          sig { returns(Stripe::Payout) }
          attr_reader :payout
          sig { returns(String) }
          attr_reader :type
        end
        sig { returns(T.nilable(String)) }
        attr_reader :credit_reversal
        sig { returns(T.nilable(String)) }
        attr_reader :issuing_authorization
        sig { returns(T.nilable(String)) }
        attr_reader :issuing_transaction
        sig { returns(T.nilable(String)) }
        attr_reader :source_flow
        sig { returns(T.nilable(SourceFlowDetails)) }
        attr_reader :source_flow_details
        sig { returns(T.nilable(String)) }
        attr_reader :source_flow_type
      end
      class NetworkDetails < Stripe::StripeObject
        class Ach < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :addenda
        end
        sig { returns(T.nilable(Ach)) }
        attr_reader :ach
        sig { returns(String) }
        attr_reader :type
      end
      class ReversalDetails < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :deadline
        sig { returns(T.nilable(String)) }
        attr_reader :restricted_reason
      end
      sig { returns(Integer) }
      # Amount (in cents) transferred.
      attr_reader :amount
      sig { returns(Integer) }
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      sig { returns(String) }
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      sig { returns(String) }
      # An arbitrary string attached to the object. Often useful for displaying to users.
      attr_reader :description
      sig { returns(T.nilable(String)) }
      # Reason for the failure. A ReceivedCredit might fail because the receiving FinancialAccount is closed or frozen.
      attr_reader :failure_code
      sig { returns(T.nilable(String)) }
      # The FinancialAccount that received the funds.
      attr_reader :financial_account
      sig { returns(T.nilable(String)) }
      # A [hosted transaction receipt](https://stripe.com/docs/treasury/moving-money/regulatory-receipts) URL that is provided when money movement is considered regulated under Stripe's money transmission licenses.
      attr_reader :hosted_regulatory_receipt_url
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(InitiatingPaymentMethodDetails) }
      # Attribute for field initiating_payment_method_details
      attr_reader :initiating_payment_method_details
      sig { returns(LinkedFlows) }
      # Attribute for field linked_flows
      attr_reader :linked_flows
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(String) }
      # The rails used to send the funds.
      attr_reader :network
      sig { returns(T.nilable(NetworkDetails)) }
      # Details specific to the money movement rails.
      attr_reader :network_details
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(T.nilable(ReversalDetails)) }
      # Details describing when a ReceivedCredit may be reversed.
      attr_reader :reversal_details
      sig { returns(String) }
      # Status of the ReceivedCredit. ReceivedCredits are created either `succeeded` (approved) or `failed` (declined). If a ReceivedCredit is declined, the failure reason can be found in the `failure_code` field.
      attr_reader :status
      sig { returns(T.nilable(T.any(String, Stripe::Treasury::Transaction))) }
      # The Transaction associated with this object.
      attr_reader :transaction
    end
  end
end