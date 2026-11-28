# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Payments
      # An OffSessionPayment allows you to create your own payment flow for recurring and unscheduled payments. In a single API request, you can
      # initiate a payment and leverage Stripe's AI-powered [Smart Retries](https://docs.stripe.com/payments/off-session-payments/smart-retries)
      # to choose the best times to retry failures to increase the chance of a successful payment.
      # To properly interface with OffSessionPayments, we recommend setting up an event destination to listen to webhook notifications, as the
      # OffSessionPayment will transition through its lifecycle asynchronously.
      # Related guide: [Off-Session Payments API](https://docs.stripe.com/payments/off-session-payments).
      class OffSessionPayment < APIResource
        OBJECT_NAME = "v2.payments.off_session_payment"
        def self.object_name
          "v2.payments.off_session_payment"
        end

        class AutomaticTax < ::Stripe::StripeObject
          class Liability < ::Stripe::StripeObject
            # The type of account liable for tax.
            attr_reader :type

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Whether automatic tax calculation is enabled for this OffSessionPayment.
          attr_reader :enabled
          # The account liable for tax. Null when automatic tax is disabled; otherwise,
          # an object with type set to `self`, indicating the account making the API request.
          attr_reader :liability

          def self.inner_class_types
            @inner_class_types = { liability: Liability }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Item < ::Stripe::StripeObject
          class OneTimePrice < ::Stripe::StripeObject
            class Item < ::Stripe::StripeObject
              # The ID of the resolved one-time Price.
              attr_reader :price
              # Quantity of this price in the item group.
              attr_reader :quantity

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # A description of this item group.
            attr_reader :description
            # The resolved price IDs and quantities in their original order.
            attr_reader :items
            # Additional information about this item group.
            attr_reader :metadata

            def self.inner_class_types
              @inner_class_types = { items: Item }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The persisted one-time prices in this item group.
          attr_reader :one_time_price
          # The type of item. Currently, only `one_time_price` is supported.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = { one_time_price: OneTimePrice }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Retries < ::Stripe::StripeObject
          # Number of authorization attempts so far.
          attr_reader :attempts
          # Whether retries are enabled for this OffSessionPayment.
          attr_reader :enabled

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class TotalDetails < ::Stripe::StripeObject
          # The subtotal of the items, including any inclusive tax and excluding exclusive tax.
          attr_reader :amount_subtotal
          # The calculated tax amount, including zero. Null when automatic tax was disabled.
          attr_reader :amount_tax

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The total amount to collect, including tax when applicable.
        attr_reader :amount_total
        # Details about automatic tax calculation.
        attr_reader :automatic_tax
        # Creation time of the OffSessionPayment. Represented as a RFC 3339 date & time UTC
        # value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
        attr_reader :created
        # Three-letter ISO currency code, in lowercase.
        attr_reader :currency
        # ID of the Customer to which this OffSessionPayment belongs, if one exists.
        attr_reader :customer
        # ID of the Account representing the customer to which this OffSessionPayment belongs, if one exists.
        attr_reader :customer_account
        # An arbitrary string attached to the object. Often useful for displaying to users.
        attr_reader :description
        # The reason why the OffSessionPayment failed.
        attr_reader :failure_reason
        # Unique identifier for the object.
        attr_reader :id
        # The persisted item groups for this OffSessionPayment, in their original order. Null for raw-amount payments.
        attr_reader :items
        # Payment attempt record for the latest attempt, if one exists.
        attr_reader :latest_payment_attempt_record
        # Has the value true if the object exists in live mode or the value false if the object exists in test mode.
        attr_reader :livemode
        # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can
        # attach to an object. This can be useful for storing additional information about
        # the object in a structured format. Learn more about
        # [storing information in metadata](https://docs.stripe.com/payments/payment-intents#storing-information-in-metadata).
        attr_reader :metadata
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # ID of the payment method used in this OffSessionPayment.
        attr_reader :payment_method
        # Payment record associated with the OffSessionPayment.
        attr_reader :payment_record
        # Retry configuration and attempts for this OffSessionPayment.
        attr_reader :retries
        # Text that appears on the customer's statement as the statement descriptor for a
        # non-card charge. This value overrides the account's default statement descriptor.
        # For information about requirements, including the 22-character limit, see the
        # [Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
        attr_reader :statement_descriptor
        # Provides information about a card charge. Concatenated to the account's
        # [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static)
        # to form the complete statement descriptor that appears on the customer's statement.
        attr_reader :statement_descriptor_suffix
        # Status of this OffSessionPayment, one of `pending_initial_attempt`, `pending_retry`,
        # `processing`, `failed`, `canceled`, `succeeded`, or `paused`.
        attr_reader :status
        # Provides a way to schedule deferred payments for cards and debits, in YYYY-MM-DD format.
        attr_reader :target_date
        # Test clock that can be used to advance the retry attempts in a sandbox.
        attr_reader :test_clock
        # Subtotal and tax for an itemized OffSessionPayment. Null for raw-amount payments.
        attr_reader :total_details

        def self.inner_class_types
          @inner_class_types = {
            automatic_tax: AutomaticTax,
            items: Item,
            retries: Retries,
            total_details: TotalDetails,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
