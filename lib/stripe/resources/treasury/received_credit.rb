# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Treasury
    # ReceivedCredits represent funds sent to a [FinancialAccount](https://stripe.com/docs/api#financial_accounts) (for example, via ACH or wire). These money movements are not initiated from the FinancialAccount.
    class ReceivedCredit < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "treasury.received_credit"
      def self.object_name
        "treasury.received_credit"
      end

      class InitiatingPaymentMethodDetails < Stripe::StripeObject
        class BillingDetails < Stripe::StripeObject
          class Address < Stripe::StripeObject
            attr_reader :city, :country, :line1, :line2, :postal_code, :state
          end
          attr_reader :address, :email, :name
        end

        class FinancialAccount < Stripe::StripeObject
          attr_reader :id, :network
        end

        class UsBankAccount < Stripe::StripeObject
          attr_reader :bank_name, :last4, :routing_number
        end
        attr_reader :balance, :billing_details, :financial_account, :issuing_card, :type, :us_bank_account
      end

      class LinkedFlows < Stripe::StripeObject
        class SourceFlowDetails < Stripe::StripeObject
          attr_reader :credit_reversal, :outbound_payment, :payout, :type
        end
        attr_reader :credit_reversal, :issuing_authorization, :issuing_transaction, :source_flow, :source_flow_details, :source_flow_type
      end

      class NetworkDetails < Stripe::StripeObject
        class Ach < Stripe::StripeObject
          attr_reader :addenda
        end
        attr_reader :ach, :type
      end

      class ReversalDetails < Stripe::StripeObject
        attr_reader :deadline, :restricted_reason
      end
      # Amount (in cents) transferred.
      attr_reader :amount
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      # An arbitrary string attached to the object. Often useful for displaying to users.
      attr_reader :description
      # Reason for the failure. A ReceivedCredit might fail because the receiving FinancialAccount is closed or frozen.
      attr_reader :failure_code
      # The FinancialAccount that received the funds.
      attr_reader :financial_account
      # A [hosted transaction receipt](https://stripe.com/docs/treasury/moving-money/regulatory-receipts) URL that is provided when money movement is considered regulated under Stripe's money transmission licenses.
      attr_reader :hosted_regulatory_receipt_url
      # Unique identifier for the object.
      attr_reader :id
      # Attribute for field initiating_payment_method_details
      attr_reader :initiating_payment_method_details
      # Attribute for field linked_flows
      attr_reader :linked_flows
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # The rails used to send the funds.
      attr_reader :network
      # Details specific to the money movement rails.
      attr_reader :network_details
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # Details describing when a ReceivedCredit may be reversed.
      attr_reader :reversal_details
      # Status of the ReceivedCredit. ReceivedCredits are created either `succeeded` (approved) or `failed` (declined). If a ReceivedCredit is declined, the failure reason can be found in the `failure_code` field.
      attr_reader :status
      # The Transaction associated with this object.
      attr_reader :transaction

      # Returns a list of ReceivedCredits.
      def self.list(filters = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/treasury/received_credits",
          params: filters,
          opts: opts
        )
      end

      def test_helpers
        TestHelpers.new(self)
      end

      class TestHelpers < APIResourceTestHelpers
        RESOURCE_CLASS = ReceivedCredit
        def self.resource_class
          "ReceivedCredit"
        end

        # Use this endpoint to simulate a test mode ReceivedCredit initiated by a third party. In live mode, you can't directly create ReceivedCredits initiated by third parties.
        def self.create(params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: "/v1/test_helpers/treasury/received_credits",
            params: params,
            opts: opts
          )
        end
      end
    end
  end
end
