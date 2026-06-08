# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A TaxFund object represents a single tax float sweep event — funds moved between
  # a merchant's payments balance and their tax fund financial account for Stripe Tax obligations.
  class TaxFund < APIResource
    extend Stripe::APIOperations::List

    OBJECT_NAME = "tax_fund"
    def self.object_name
      "tax_fund"
    end

    class Context < ::Stripe::StripeObject
      # Attribute for field checkout_session
      attr_reader :checkout_session
      # Attribute for field credit_note
      attr_reader :credit_note
      # Attribute for field invoice
      attr_reader :invoice
      # Attribute for field payment_intent
      attr_reader :payment_intent
      # Attribute for field refund
      attr_reader :refund
      # Attribute for field tax_transaction
      attr_reader :tax_transaction

      def self.inner_class_types
        @inner_class_types = {}
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end

    class Destination < ::Stripe::StripeObject
      class PaymentsBalance < ::Stripe::StripeObject
        # Attribute for field balance_transaction
        attr_reader :balance_transaction

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class TaxFundAccount < ::Stripe::StripeObject
        # Attribute for field financial_account
        attr_reader :financial_account
        # Attribute for field transaction
        attr_reader :transaction

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Details about the payments balance side of the sweep.
      attr_reader :payments_balance
      # Details about the tax fund financial account side of the sweep.
      attr_reader :tax_fund_account
      # Attribute for field type
      attr_reader :type

      def self.inner_class_types
        @inner_class_types = { payments_balance: PaymentsBalance, tax_fund_account: TaxFundAccount }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end

    class Source < ::Stripe::StripeObject
      class PaymentsBalance < ::Stripe::StripeObject
        # Attribute for field balance_transaction
        attr_reader :balance_transaction

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class TaxFundAccount < ::Stripe::StripeObject
        # Attribute for field financial_account
        attr_reader :financial_account
        # Attribute for field transaction
        attr_reader :transaction

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Details about the payments balance side of the sweep.
      attr_reader :payments_balance
      # Details about the tax fund financial account side of the sweep.
      attr_reader :tax_fund_account
      # Attribute for field type
      attr_reader :type

      def self.inner_class_types
        @inner_class_types = { payments_balance: PaymentsBalance, tax_fund_account: TaxFundAccount }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end

    class Trigger < ::Stripe::StripeObject
      # Attribute for field balance_transaction
      attr_reader :balance_transaction
      # Attribute for field type
      attr_reader :type

      def self.inner_class_types
        @inner_class_types = {}
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
    # Amount swept, in the smallest currency unit. Always positive.
    attr_reader :amount
    # Associated billing or tax documents for this sweep.
    attr_reader :context
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    # Where funds moved to.
    attr_reader :destination
    # Unique identifier for the object.
    attr_reader :id
    # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
    attr_reader :livemode
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # Where funds moved from.
    attr_reader :source
    # What caused the sweep.
    attr_reader :trigger

    # Returns a list of tax funds in reverse chronological order.
    def self.list(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/tax_funds", params: params, opts: opts)
    end

    def self.inner_class_types
      @inner_class_types = {
        context: Context,
        destination: Destination,
        source: Source,
        trigger: Trigger,
      }
    end

    def self.field_remappings
      @field_remappings = {}
    end
  end
end
