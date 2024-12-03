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
        class SourceFlowDetails < Stripe::StripeObject
          # You can reverse some [ReceivedCredits](https://stripe.com/docs/api#received_credits) depending on their network and source flow. Reversing a ReceivedCredit leads to the creation of a new object known as a CreditReversal.
          sig { returns(Stripe::Treasury::CreditReversal) }
          attr_reader :credit_reversal
          # Use [OutboundPayments](https://docs.stripe.com/docs/treasury/moving-money/financial-accounts/out-of/outbound-payments) to send funds to another party's external bank account or [FinancialAccount](https://stripe.com/docs/api#financial_accounts). To send money to an account belonging to the same user, use an [OutboundTransfer](https://stripe.com/docs/api#outbound_transfers).
          #
          # Simulate OutboundPayment state changes with the `/v1/test_helpers/treasury/outbound_payments` endpoints. These methods can only be called on test mode objects.
          #
          # Related guide: [Moving money with Treasury using OutboundPayment objects](https://docs.stripe.com/docs/treasury/moving-money/financial-accounts/out-of/outbound-payments)
          sig { returns(Stripe::Treasury::OutboundPayment) }
          attr_reader :outbound_payment
          # A `Payout` object is created when you receive funds from Stripe, or when you
          # initiate a payout to either a bank account or debit card of a [connected
          # Stripe account](/docs/connect/bank-debit-card-payouts). You can retrieve individual payouts,
          # and list all payouts. Payouts are made on [varying
          # schedules](/docs/connect/manage-payout-schedule), depending on your country and
          # industry.
          #
          # Related guide: [Receiving payouts](https://stripe.com/docs/payouts)
          sig { returns(Stripe::Payout) }
          attr_reader :payout
          # The type of the source flow that originated the ReceivedCredit.
          sig { returns(String) }
          attr_reader :type
        end
        # The CreditReversal created as a result of this ReceivedCredit being reversed.
        sig { returns(T.nilable(String)) }
        attr_reader :credit_reversal
        # Set if the ReceivedCredit was created due to an [Issuing Authorization](https://stripe.com/docs/api#issuing_authorizations) object.
        sig { returns(T.nilable(String)) }
        attr_reader :issuing_authorization
        # Set if the ReceivedCredit is also viewable as an [Issuing transaction](https://stripe.com/docs/api#issuing_transactions) object.
        sig { returns(T.nilable(String)) }
        attr_reader :issuing_transaction
        # ID of the source flow. Set if `network` is `stripe` and the source flow is visible to the user. Examples of source flows include OutboundPayments, payouts, or CreditReversals.
        sig { returns(T.nilable(String)) }
        attr_reader :source_flow
        # The expandable object of the source flow.
        sig { returns(T.nilable(SourceFlowDetails)) }
        attr_reader :source_flow_details
        # The type of flow that originated the ReceivedCredit (for example, `outbound_payment`).
        sig { returns(T.nilable(String)) }
        attr_reader :source_flow_type
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
        # The type of flow that originated the ReceivedCredit.
        sig { returns(String) }
        attr_reader :type
      end
      class ReversalDetails < Stripe::StripeObject
        # Time before which a ReceivedCredit can be reversed.
        sig { returns(T.nilable(Integer)) }
        attr_reader :deadline
        # Set if a ReceivedCredit cannot be reversed.
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

      # Reason for the failure. A ReceivedCredit might fail because the receiving FinancialAccount is closed or frozen.
      sig { returns(T.nilable(String)) }
      attr_reader :failure_code

      # The FinancialAccount that received the funds.
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

      # The rails used to send the funds.
      sig { returns(String) }
      attr_reader :network

      # Details specific to the money movement rails.
      sig { returns(T.nilable(NetworkDetails)) }
      attr_reader :network_details

      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object

      # Details describing when a ReceivedCredit may be reversed.
      sig { returns(T.nilable(ReversalDetails)) }
      attr_reader :reversal_details

      # Status of the ReceivedCredit. ReceivedCredits are created either `succeeded` (approved) or `failed` (declined). If a ReceivedCredit is declined, the failure reason can be found in the `failure_code` field.
      sig { returns(String) }
      attr_reader :status

      # The Transaction associated with this object.
      sig { returns(T.nilable(T.any(String, Stripe::Treasury::Transaction))) }
      attr_reader :transaction
    end
  end
end