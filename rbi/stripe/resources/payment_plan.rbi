# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # A Payment Plan splits a single invoice obligation into multiple installments,
  # each with its own due date and amount. Payment Plans are associated with a
  # finalized or draft invoice and track how much has been collected against
  # each installment.
  class PaymentPlan < APIResource
    class CollectsOn < ::Stripe::StripeObject
      class InvoiceDetails < ::Stripe::StripeObject
        # The ID of the invoice this plan collects against.
        sig { returns(String) }
        def invoice; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Attribute for field invoice_details
      sig { returns(InvoiceDetails) }
      def invoice_details; end
      # The type of object this plan collects against. Currently always `invoice_details`.
      sig { returns(String) }
      def type; end
      def self.inner_class_types
        @inner_class_types = {invoice_details: InvoiceDetails}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class Installment < ::Stripe::StripeObject
      # Amount owed for this installment, in the smallest currency unit.
      sig { returns(Integer) }
      def amount_due; end
      # Amount forgiven for this installment, in the smallest currency unit.
      sig { returns(Integer) }
      def amount_forgiven; end
      # Amount already paid toward this installment, in the smallest currency unit.
      sig { returns(Integer) }
      def amount_paid; end
      # Three-letter ISO currency code.
      sig { returns(String) }
      def currency; end
      # A description of this installment.
      sig { returns(String) }
      def description; end
      # Unix timestamp when this installment is due. Omitted for installments with no due date.
      sig { returns(T.nilable(Integer)) }
      def due_date; end
      # Unique identifier for the installment.
      sig { returns(T.nilable(String)) }
      def id; end
      # Unix timestamp when this installment was paid.
      sig { returns(T.nilable(Integer)) }
      def paid_at; end
      # The status of this installment. One of `open`, `paid`, `past_due`, or `canceled`.
      sig { returns(String) }
      def status; end
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
              sig { returns(Integer) }
              def count; end
              # The interval unit: `day`, `week`, `month`, or `year`.
              sig { returns(String) }
              def interval; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Unix timestamp of the due date. Present when type is `absolute`.
            sig { returns(T.nilable(Integer)) }
            def absolute; end
            # Attribute for field relative
            sig { returns(T.nilable(Relative)) }
            def relative; end
            # The type of due date. Either `absolute` or `relative`.
            sig { returns(String) }
            def type; end
            def self.inner_class_types
              @inner_class_types = {relative: Relative}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class FixedAmount < ::Stripe::StripeObject
            # Fixed amount for this entry, in the smallest currency unit.
            sig { returns(Integer) }
            def amount; end
            # Three-letter ISO currency code.
            sig { returns(String) }
            def currency; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # A description of this schedule entry.
          sig { returns(String) }
          def description; end
          # Attribute for field due_date
          sig { returns(T.nilable(DueDate)) }
          def due_date; end
          # Attribute for field fixed_amount
          sig { returns(T.nilable(FixedAmount)) }
          def fixed_amount; end
          # Unique identifier for this schedule entry.
          sig { returns(T.nilable(String)) }
          def id; end
          # Percentage of the invoice total for this entry (0–100). Present when type is `percentage`.
          sig { returns(T.nilable(Float)) }
          def percentage; end
          # The type of this schedule entry. Either `fixed_amount` or `percentage`.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {due_date: DueDate, fixed_amount: FixedAmount}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The list of installment schedule entries.
        sig { returns(T::Array[Amount]) }
        def amounts; end
        def self.inner_class_types
          @inner_class_types = {amounts: Amount}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Attribute for field amounts_due
      sig { returns(AmountsDue) }
      def amounts_due; end
      # The type of schedule. Currently always `amounts_due`.
      sig { returns(String) }
      def type; end
      def self.inner_class_types
        @inner_class_types = {amounts_due: AmountsDue}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    # The list of objects this payment plan collects against.
    sig { returns(T::Array[CollectsOn]) }
    def collects_on; end
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    def created; end
    # Unique identifier for the object.
    sig { returns(String) }
    def id; end
    # The list of installments derived from the schedule. Each installment tracks an individual payment obligation.
    sig { returns(T::Array[Installment]) }
    def installments; end
    # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
    sig { returns(T::Boolean) }
    def livemode; end
    # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T.nilable(T::Hash[String, String])) }
    def metadata; end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
    # Attribute for field schedule
    sig { returns(Schedule) }
    def schedule; end
    # Creates a payment plan that splits a single invoice obligation into installments with their own due dates and amounts.
    sig {
      params(params: T.any(::Stripe::PaymentPlanCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::PaymentPlan)
     }
    def self.create(params = {}, opts = {}); end

    # Returns a list of payment plans.
    sig {
      params(params: T.any(::Stripe::PaymentPlanListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
     }
    def self.list(params = {}, opts = {}); end

    # Updates the schedule or metadata of an existing payment plan. Only unpaid installments can be updated.
    sig {
      params(id: String, params: T.any(::Stripe::PaymentPlanUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::PaymentPlan)
     }
    def self.update(id, params = {}, opts = {}); end
  end
end