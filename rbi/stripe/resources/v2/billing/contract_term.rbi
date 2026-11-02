# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      # A commercial term. Display order is independent of billing evaluation order.
      class ContractTerm < APIResource
        class AdHocProduct < ::Stripe::StripeObject
          class BillSchedule < ::Stripe::StripeObject
            class Custom < ::Stripe::StripeObject
              class BillAt < ::Stripe::StripeObject
                # The timestamp at which the fee will be billed.
                sig { returns(String) }
                def timestamp; end
                def self.inner_class_types
                  @inner_class_types = {}
                end
                def self.field_remappings
                  @field_remappings = {}
                end
              end
              # Amount in the contract's currency.
              sig { returns(::Stripe::V2::Amount) }
              def amount; end
              # The resolved bill date.
              sig { returns(BillAt) }
              def bill_at; end
              def self.inner_class_types
                @inner_class_types = {bill_at: BillAt}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Scheduled installments and billed history.
            sig { returns(T::Array[Custom]) }
            def custom; end
            # The type of billing schedule.
            sig { returns(String) }
            def type; end
            def self.inner_class_types
              @inner_class_types = {custom: Custom}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class ServicePeriod < ::Stripe::StripeObject
            class EndsAt < ::Stripe::StripeObject
              # The timestamp when the item ends.
              sig { returns(String) }
              def timestamp; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            class StartsAt < ::Stripe::StripeObject
              # The timestamp when the item starts.
              sig { returns(String) }
              def timestamp; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The exclusive end of the service period.
            sig { returns(EndsAt) }
            def ends_at; end
            # The inclusive start of the service period.
            sig { returns(StartsAt) }
            def starts_at; end
            def self.inner_class_types
              @inner_class_types = {ends_at: EndsAt, starts_at: StartsAt}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Explicit bill dates and amounts, including billed history.
          sig { returns(BillSchedule) }
          def bill_schedule; end
          # The V1 Product being billed.
          sig { returns(String) }
          def product; end
          # Informational invoice and revenue-recognition period with timestamp objects; does not affect billing or proration.
          sig { returns(T.nilable(ServicePeriod)) }
          def service_period; end
          def self.inner_class_types
            @inner_class_types = {bill_schedule: BillSchedule, service_period: ServicePeriod}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class PricingOverride < ::Stripe::StripeObject
          class Criterion < ::Stripe::StripeObject
            # Resolved IDs of recurring or ad_hoc_product terms. Override terms are not valid targets.
            sig { returns(T.nilable(T::Array[String])) }
            def terms; end
            # Whether to include or exclude the selected recurring or ad_hoc_product terms.
            sig { returns(String) }
            def type; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class EndsAt < ::Stripe::StripeObject
            # The timestamp when the item ends.
            sig { returns(String) }
            def timestamp; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Multiply < ::Stripe::StripeObject
            # The multiplier, for example 0.85 for a 15% discount.
            sig { returns(BigDecimal) }
            def factor; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
            def self.field_encodings
              @field_encodings = {factor: :decimal_string}
            end
          end
          class Overwrite < ::Stripe::StripeObject
            # The replacement per-unit amount in minor currency units.
            sig { returns(T.nilable(BigDecimal)) }
            def unit_amount_decimal; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
            def self.field_encodings
              @field_encodings = {unit_amount_decimal: :decimal_string}
            end
          end
          class StartsAt < ::Stripe::StripeObject
            # The timestamp when the item starts.
            sig { returns(String) }
            def timestamp; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Recurring or ad_hoc_product terms selected by this override. An override without criteria applies to all recurring and ad_hoc_product terms.
          sig { returns(T::Array[Criterion]) }
          def criteria; end
          # The exclusive end of the validity window. Null for an open end.
          sig { returns(T.nilable(EndsAt)) }
          def ends_at; end
          # Present when type is multiply.
          sig { returns(T.nilable(Multiply)) }
          def multiply; end
          # Present when type is overwrite.
          sig { returns(T.nilable(Overwrite)) }
          def overwrite; end
          # Lower numbers win. Equal priorities resolve by display order; overrides do not stack.
          sig { returns(Integer) }
          def priority; end
          # The inclusive start of the override's validity window.
          sig { returns(StartsAt) }
          def starts_at; end
          # The pricing operation.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {
              criteria: Criterion,
              ends_at: EndsAt,
              multiply: Multiply,
              overwrite: Overwrite,
              starts_at: StartsAt,
            }
          end
          def self.field_remappings
            @field_remappings = {}
          end
          def self.field_encodings
            @field_encodings = {
              multiply: {kind: :object, fields: {factor: :decimal_string}},
              overwrite: {kind: :object, fields: {unit_amount_decimal: :decimal_string}},
            }
          end
        end
        class RecurringPrice < ::Stripe::StripeObject
          class EndsAt < ::Stripe::StripeObject
            # The timestamp when the item ends.
            sig { returns(String) }
            def timestamp; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class StartsAt < ::Stripe::StripeObject
            # The timestamp when the item starts.
            sig { returns(String) }
            def timestamp; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The exclusive end of the term. Null for an open end.
          sig { returns(T.nilable(EndsAt)) }
          def ends_at; end
          # The V1 recurring Price.
          sig { returns(String) }
          def price; end
          # Current licensed quantity. Null for metered Prices; history is available separately.
          sig { returns(T.nilable(BigDecimal)) }
          def quantity; end
          # The inclusive start of the term.
          sig { returns(StartsAt) }
          def starts_at; end
          def self.inner_class_types
            @inner_class_types = {ends_at: EndsAt, starts_at: StartsAt}
          end
          def self.field_remappings
            @field_remappings = {}
          end
          def self.field_encodings
            @field_encodings = {quantity: :decimal_string}
          end
        end
        # Present when type is ad_hoc_product.
        sig { returns(T.nilable(AdHocProduct)) }
        def ad_hoc_product; end
        # The stable ID of the term.
        sig { returns(String) }
        def id; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # The lookup key, unique across all term types on this contract.
        sig { returns(T.nilable(String)) }
        def lookup_key; end
        # Set of key-value pairs attached to the term.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # Present when type is pricing_override.
        sig { returns(T.nilable(PricingOverride)) }
        def pricing_override; end
        # Present when type is recurring_price.
        sig { returns(T.nilable(RecurringPrice)) }
        def recurring_price; end
        # The type of this term.
        sig { returns(String) }
        def type; end
      end
    end
  end
end