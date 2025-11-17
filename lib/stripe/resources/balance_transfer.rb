# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Balance transfers represent funds moving between balance types on your Stripe account.
  # They currently support moving funds between your Stripe balance and your [Issuing](https://stripe.com/docs/issuing) balance and between your [Allocated Funds](https://stripe.com/docs/connect/funds-segregation) balance and your Stripe balance.
  class BalanceTransfer < APIResource
    extend Stripe::APIOperations::Create

    OBJECT_NAME = "balance_transfer"
    def self.object_name
      "balance_transfer"
    end

    class DestinationBalance < ::Stripe::StripeObject
      class Issuing < ::Stripe::StripeObject
        # Identifier for the balance_transaction that increased the destination balance.
        attr_reader :balance_transaction

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class Payments < ::Stripe::StripeObject
        # Identifier for the balance_transaction that increased the destination balance.
        attr_reader :balance_transaction

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Attribute for field issuing
      attr_reader :issuing
      # Attribute for field payments
      attr_reader :payments
      # Destination balance type to adjust for the Balance Transfer. One of `payments`, `issuing`, or `allocated_funds`.
      attr_reader :type

      def self.inner_class_types
        @inner_class_types = { issuing: Issuing, payments: Payments }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end

    class SourceBalance < ::Stripe::StripeObject
      class Issuing < ::Stripe::StripeObject
        # Identifier for the balance_transaction that decreased the source balance.
        attr_reader :balance_transaction

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class Payments < ::Stripe::StripeObject
        # Identifier for the balance_transaction that decreased the source balance.
        attr_reader :balance_transaction
        # The payments balance type that this BalanceTransfer pulled funds from. One of `card`, `fpx`, or `bank_account`.
        attr_reader :source_type

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Attribute for field issuing
      attr_reader :issuing
      # Attribute for field payments
      attr_reader :payments
      # Source balance type to adjust for the Balance Transfer. One of `payments`, `issuing`, or `allocated_funds`.
      attr_reader :type

      def self.inner_class_types
        @inner_class_types = { issuing: Issuing, payments: Payments }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
    # A positive integer representing how much was transferred in the smallest currency unit.
    attr_reader :amount
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    # The balance that funds were transferred to.
    attr_reader :destination_balance
    # A [hosted transaction receipt](https://stripe.com/docs/treasury/moving-money/regulatory-receipts) URL that is provided when money movement is considered regulated under Stripe's money transmission licenses.
    attr_reader :hosted_regulatory_receipt_url
    # Unique identifier for the object.
    attr_reader :id
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # The balance that funds were transferred from. One of `card`, `fpx`, or `bank_account`.
    attr_reader :source_balance

    # Creates a balance transfer. For Issuing use cases, funds will be debited immediately from the source balance and credited to the destination balance immediately (if your account is based in the US) or next-business-day (if your account is based in the EU). For Segregated Separate Charges and Transfers use cases, funds will be debited immediately from the source balance and credited immediately to the destination balance.
    def self.create(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: "/v1/balance_transfers",
        params: params,
        opts: opts
      )
    end

    def self.inner_class_types
      @inner_class_types = { destination_balance: DestinationBalance, source_balance: SourceBalance }
    end

    def self.field_remappings
      @field_remappings = {}
    end
  end
end
