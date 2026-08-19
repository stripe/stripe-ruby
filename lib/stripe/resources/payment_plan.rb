# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A Payment Plan splits a single invoice obligation into multiple installments,
  # each with its own due date and amount. Payment Plans are associated with a
  # finalized or draft invoice and track how much has been collected against
  # each installment.
  class PaymentPlan < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "payment_plan"
    def self.object_name
      "payment_plan"
    end

    class CollectsOn < ::Stripe::StripeObject
      class InvoiceDetails < ::Stripe::StripeObject
        # The ID of the invoice this plan collects against.
        attr_reader :invoice

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Attribute for field invoice_details
      attr_reader :invoice_details
      # The type of object this plan collects against. Currently always `invoice_details`.
      attr_reader :type

      def self.inner_class_types
        @inner_class_types = { invoice_details: InvoiceDetails }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end

    class Installment < ::Stripe::StripeObject
      # Amount owed for this installment, in the smallest currency unit.
      attr_reader :amount_due
      # Amount forgiven for this installment, in the smallest currency unit.
      attr_reader :amount_forgiven
      # Amount already paid toward this installment, in the smallest currency unit.
      attr_reader :amount_paid
      # Three-letter ISO currency code.
      attr_reader :currency
      # A description of this installment.
      attr_reader :description
      # Unix timestamp when this installment is due. Omitted for installments with no due date.
      attr_reader :due_date
      # Unique identifier for the installment.
      attr_reader :id
      # Unix timestamp when this installment was paid.
      attr_reader :paid_at
      # The status of this installment. One of `open`, `paid`, `past_due`, or `canceled`.
      attr_reader :status

      def self.inner_class_types
        @inner_class_types = {}
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end

    class Schedule < ::Stripe::StripeObject
      class AmountsDue < ::Stripe::StripeObject
        class Amount < ::Stripe::StripeObject
          class DueDate < ::Stripe::StripeObject
            class Relative < ::Stripe::StripeObject
              # The number of intervals after the invoice is finalized that this entry is due.
              attr_reader :count
              # The interval unit: `day`, `week`, `month`, or `year`.
              attr_reader :interval

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Unix timestamp of the due date. Present when type is `absolute`.
            attr_reader :absolute
            # Attribute for field relative
            attr_reader :relative
            # The type of due date. Either `absolute` or `relative`.
            attr_reader :type

            def self.inner_class_types
              @inner_class_types = { relative: Relative }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class FixedAmount < ::Stripe::StripeObject
            # Fixed amount for this entry, in the smallest currency unit.
            attr_reader :amount
            # Three-letter ISO currency code.
            attr_reader :currency

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # A description of this schedule entry.
          attr_reader :description
          # Attribute for field due_date
          attr_reader :due_date
          # Attribute for field fixed_amount
          attr_reader :fixed_amount
          # Unique identifier for this schedule entry.
          attr_reader :id
          # Percentage of the invoice total for this entry (0–100). Present when type is `percentage`.
          attr_reader :percentage
          # The type of this schedule entry. Either `fixed_amount` or `percentage`.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = { due_date: DueDate, fixed_amount: FixedAmount }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The list of installment schedule entries.
        attr_reader :amounts

        def self.inner_class_types
          @inner_class_types = { amounts: Amount }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Attribute for field amounts_due
      attr_reader :amounts_due
      # The type of schedule. Currently always `amounts_due`.
      attr_reader :type

      def self.inner_class_types
        @inner_class_types = { amounts_due: AmountsDue }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
    # The list of objects this payment plan collects against.
    attr_reader :collects_on
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # Unique identifier for the object.
    attr_reader :id
    # The list of installments derived from the schedule. Each installment tracks an individual payment obligation.
    attr_reader :installments
    # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
    attr_reader :livemode
    # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # Attribute for field schedule
    attr_reader :schedule

    # Creates a payment plan that splits a single invoice obligation into installments with their own due dates and amounts.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/payment_plans", params: params, opts: opts)
    end

    # Returns a list of payment plans.
    def self.list(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/payment_plans", params: params, opts: opts)
    end

    # Updates the schedule or metadata of an existing payment plan. Only unpaid installments can be updated.
    def self.update(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_plans/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end

    def self.inner_class_types
      @inner_class_types = { collects_on: CollectsOn, installments: Installment, schedule: Schedule }
    end

    def self.field_remappings
      @field_remappings = {}
    end
  end
end
