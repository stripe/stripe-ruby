# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Treasury
    # Use [InboundTransfers](https://docs.stripe.com/docs/treasury/moving-money/financial-accounts/into/inbound-transfers) to add funds to your [FinancialAccount](https://stripe.com/docs/api#financial_accounts) via a PaymentMethod that is owned by you. The funds will be transferred via an ACH debit.
    #
    # Related guide: [Moving money with Treasury using InboundTransfer objects](https://docs.stripe.com/docs/treasury/moving-money/financial-accounts/into/inbound-transfers)
    class InboundTransfer < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List

      OBJECT_NAME = "treasury.inbound_transfer"
      def self.object_name
        "treasury.inbound_transfer"
      end

      class FailureDetails < Stripe::StripeObject
        attr_reader :code
      end

      class LinkedFlows < Stripe::StripeObject
        attr_reader :received_debit
      end

      class OriginPaymentMethodDetails < Stripe::StripeObject
        class BillingDetails < Stripe::StripeObject
          class Address < Stripe::StripeObject
            attr_reader :city, :country, :line1, :line2, :postal_code, :state
          end
          attr_reader :address, :email, :name
        end

        class UsBankAccount < Stripe::StripeObject
          attr_reader :account_holder_type, :account_type, :bank_name, :fingerprint, :last4, :mandate, :network, :routing_number
        end
        attr_reader :billing_details, :type, :us_bank_account
      end

      class StatusTransitions < Stripe::StripeObject
        attr_reader :canceled_at, :failed_at, :succeeded_at
      end
      # Amount (in cents) transferred.
      attr_reader :amount
      # Returns `true` if the InboundTransfer is able to be canceled.
      attr_reader :cancelable
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      # An arbitrary string attached to the object. Often useful for displaying to users.
      attr_reader :description
      # Details about this InboundTransfer's failure. Only set when status is `failed`.
      attr_reader :failure_details
      # The FinancialAccount that received the funds.
      attr_reader :financial_account
      # A [hosted transaction receipt](https://stripe.com/docs/treasury/moving-money/regulatory-receipts) URL that is provided when money movement is considered regulated under Stripe's money transmission licenses.
      attr_reader :hosted_regulatory_receipt_url
      # Unique identifier for the object.
      attr_reader :id
      # Attribute for field linked_flows
      attr_reader :linked_flows
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The origin payment method to be debited for an InboundTransfer.
      attr_reader :origin_payment_method
      # Details about the PaymentMethod for an InboundTransfer.
      attr_reader :origin_payment_method_details
      # Returns `true` if the funds for an InboundTransfer were returned after the InboundTransfer went to the `succeeded` state.
      attr_reader :returned
      # Statement descriptor shown when funds are debited from the source. Not all payment networks support `statement_descriptor`.
      attr_reader :statement_descriptor
      # Status of the InboundTransfer: `processing`, `succeeded`, `failed`, and `canceled`. An InboundTransfer is `processing` if it is created and pending. The status changes to `succeeded` once the funds have been "confirmed" and a `transaction` is created and posted. The status changes to `failed` if the transfer fails.
      attr_reader :status
      # Attribute for field status_transitions
      attr_reader :status_transitions
      # The Transaction associated with this object.
      attr_reader :transaction

      # Cancels an InboundTransfer.
      def cancel(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/treasury/inbound_transfers/%<inbound_transfer>s/cancel", { inbound_transfer: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Cancels an InboundTransfer.
      def self.cancel(inbound_transfer, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/treasury/inbound_transfers/%<inbound_transfer>s/cancel", { inbound_transfer: CGI.escape(inbound_transfer) }),
          params: params,
          opts: opts
        )
      end

      # Creates an InboundTransfer.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/treasury/inbound_transfers",
          params: params,
          opts: opts
        )
      end

      # Returns a list of InboundTransfers sent from the specified FinancialAccount.
      def self.list(filters = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/treasury/inbound_transfers",
          params: filters,
          opts: opts
        )
      end

      def test_helpers
        TestHelpers.new(self)
      end

      class TestHelpers < APIResourceTestHelpers
        RESOURCE_CLASS = InboundTransfer
        def self.resource_class
          "InboundTransfer"
        end

        # Transitions a test mode created InboundTransfer to the failed status. The InboundTransfer must already be in the processing state.
        def self.fail(id, params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/treasury/inbound_transfers/%<id>s/fail", { id: CGI.escape(id) }),
            params: params,
            opts: opts
          )
        end

        # Transitions a test mode created InboundTransfer to the failed status. The InboundTransfer must already be in the processing state.
        def fail(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/treasury/inbound_transfers/%<id>s/fail", { id: CGI.escape(@resource["id"]) }),
            params: params,
            opts: opts
          )
        end

        # Marks the test mode InboundTransfer object as returned and links the InboundTransfer to a ReceivedDebit. The InboundTransfer must already be in the succeeded state.
        def self.return_inbound_transfer(id, params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/treasury/inbound_transfers/%<id>s/return", { id: CGI.escape(id) }),
            params: params,
            opts: opts
          )
        end

        # Marks the test mode InboundTransfer object as returned and links the InboundTransfer to a ReceivedDebit. The InboundTransfer must already be in the succeeded state.
        def return_inbound_transfer(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/treasury/inbound_transfers/%<id>s/return", { id: CGI.escape(@resource["id"]) }),
            params: params,
            opts: opts
          )
        end

        # Transitions a test mode created InboundTransfer to the succeeded status. The InboundTransfer must already be in the processing state.
        def self.succeed(id, params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/treasury/inbound_transfers/%<id>s/succeed", { id: CGI.escape(id) }),
            params: params,
            opts: opts
          )
        end

        # Transitions a test mode created InboundTransfer to the succeeded status. The InboundTransfer must already be in the processing state.
        def succeed(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/treasury/inbound_transfers/%<id>s/succeed", { id: CGI.escape(@resource["id"]) }),
            params: params,
            opts: opts
          )
        end
      end
    end
  end
end
