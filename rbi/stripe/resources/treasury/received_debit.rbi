# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Treasury
    # ReceivedDebits represent funds pulled from a [FinancialAccount](https://stripe.com/docs/api#financial_accounts). These are not initiated from the FinancialAccount.
    class ReceivedDebit < APIResource
      class InitiatingPaymentMethodDetails < Stripe::StripeObject
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
        class FinancialAccount < Stripe::StripeObject
          # The FinancialAccount ID.
          sig { returns(String) }
          attr_reader :id
          # The rails the ReceivedCredit was sent over. A FinancialAccount can only send funds over `stripe`.
          sig { returns(String) }
          attr_reader :network
        end
        class UsBankAccount < Stripe::StripeObject
          # Bank name.
          sig { returns(T.nilable(String)) }
          attr_reader :bank_name
          # The last four digits of the bank account number.
          sig { returns(T.nilable(String)) }
          attr_reader :last4
          # The routing number for the bank account.
          sig { returns(T.nilable(String)) }
          attr_reader :routing_number
        end
        # Set when `type` is `balance`.
        sig { returns(String) }
        attr_reader :balance
        # Attribute for field billing_details
        sig { returns(BillingDetails) }
        attr_reader :billing_details
        # Attribute for field financial_account
        sig { returns(FinancialAccount) }
        attr_reader :financial_account
        # Set when `type` is `issuing_card`. This is an [Issuing Card](https://stripe.com/docs/api#issuing_cards) ID.
        sig { returns(String) }
        attr_reader :issuing_card
        # Polymorphic type matching the originating money movement's source. This can be an external account, a Stripe balance, or a FinancialAccount.
        sig { returns(String) }
        attr_reader :type
        # Attribute for field us_bank_account
        sig { returns(UsBankAccount) }
        attr_reader :us_bank_account
      end
      class LinkedFlows < Stripe::StripeObject
        # The DebitReversal created as a result of this ReceivedDebit being reversed.
        sig { returns(T.nilable(String)) }
        attr_reader :debit_reversal
        # Set if the ReceivedDebit is associated with an InboundTransfer's return of funds.
        sig { returns(T.nilable(String)) }
        attr_reader :inbound_transfer
        # Set if the ReceivedDebit was created due to an [Issuing Authorization](https://stripe.com/docs/api#issuing_authorizations) object.
        sig { returns(T.nilable(String)) }
        attr_reader :issuing_authorization
        # Set if the ReceivedDebit is also viewable as an [Issuing Dispute](https://stripe.com/docs/api#issuing_disputes) object.
        sig { returns(T.nilable(String)) }
        attr_reader :issuing_transaction
        # Set if the ReceivedDebit was created due to a [Payout](https://stripe.com/docs/api#payouts) object.
        sig { returns(T.nilable(String)) }
        attr_reader :payout
        # The ReceivedCredit that Capital withheld from
        sig { returns(T.nilable(String)) }
        attr_reader :received_credit_capital_withholding
      end
      class NetworkDetails < Stripe::StripeObject
        class Ach < Stripe::StripeObject
          # ACH Addenda record
          sig { returns(T.nilable(String)) }
          attr_reader :addenda
        end
        # Details about an ACH transaction.
        sig { returns(T.nilable(Ach)) }
        attr_reader :ach
        # The type of flow that originated the ReceivedDebit.
        sig { returns(String) }
        attr_reader :type
      end
      class ReversalDetails < Stripe::StripeObject
        # Time before which a ReceivedDebit can be reversed.
        sig { returns(T.nilable(Integer)) }
        attr_reader :deadline
        # Set if a ReceivedDebit can't be reversed.
        sig { returns(T.nilable(String)) }
        attr_reader :restricted_reason
      end
      # Amount (in cents) transferred.
      sig { returns(Integer) }
      attr_reader :amount

      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created

      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      attr_reader :currency

      # An arbitrary string attached to the object. Often useful for displaying to users.
      sig { returns(String) }
      attr_reader :description

      # Reason for the failure. A ReceivedDebit might fail because the FinancialAccount doesn't have sufficient funds, is closed, or is frozen.
      sig { returns(T.nilable(String)) }
      attr_reader :failure_code

      # The FinancialAccount that funds were pulled from.
      sig { returns(T.nilable(String)) }
      attr_reader :financial_account

      # A [hosted transaction receipt](https://stripe.com/docs/treasury/moving-money/regulatory-receipts) URL that is provided when money movement is considered regulated under Stripe's money transmission licenses.
      sig { returns(T.nilable(String)) }
      attr_reader :hosted_regulatory_receipt_url

      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id

      # Attribute for field initiating_payment_method_details
      sig { returns(InitiatingPaymentMethodDetails) }
      attr_reader :initiating_payment_method_details

      # Attribute for field linked_flows
      sig { returns(LinkedFlows) }
      attr_reader :linked_flows

      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode

      # The network used for the ReceivedDebit.
      sig { returns(String) }
      attr_reader :network

      # Details specific to the money movement rails.
      sig { returns(T.nilable(NetworkDetails)) }
      attr_reader :network_details

      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object

      # Details describing when a ReceivedDebit might be reversed.
      sig { returns(T.nilable(ReversalDetails)) }
      attr_reader :reversal_details

      # Status of the ReceivedDebit. ReceivedDebits are created with a status of either `succeeded` (approved) or `failed` (declined). The failure reason can be found under the `failure_code`.
      sig { returns(String) }
      attr_reader :status

      # The Transaction associated with this object.
      sig { returns(T.nilable(T.any(String, Stripe::Treasury::Transaction))) }
      attr_reader :transaction
    end
  end
end