# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class SubscriptionScheduleUpdateParams < ::Stripe::RequestParams
    class BillingSchedule < ::Stripe::RequestParams
      class AppliesTo < ::Stripe::RequestParams
        # The ID of the price object.
        sig { returns(T.nilable(String)) }
        def price; end
        sig { params(_price: T.nilable(String)).returns(T.nilable(String)) }
        def price=(_price); end
        # Controls which subscription items the billing schedule applies to.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        sig { params(price: T.nilable(String), type: String).void }
        def initialize(price: nil, type: nil); end
      end
      class BillUntil < ::Stripe::RequestParams
        class Duration < ::Stripe::RequestParams
          # Specifies billing duration. Either `day`, `week`, `month` or `year`.
          sig { returns(String) }
          def interval; end
          sig { params(_interval: String).returns(String) }
          def interval=(_interval); end
          # The multiplier applied to the interval.
          sig { returns(T.nilable(Integer)) }
          def interval_count; end
          sig { params(_interval_count: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def interval_count=(_interval_count); end
          sig { params(interval: String, interval_count: T.nilable(Integer)).void }
          def initialize(interval: nil, interval_count: nil); end
        end
        # Specifies the billing period.
        sig {
          returns(T.nilable(SubscriptionScheduleUpdateParams::BillingSchedule::BillUntil::Duration))
         }
        def duration; end
        sig {
          params(_duration: T.nilable(SubscriptionScheduleUpdateParams::BillingSchedule::BillUntil::Duration)).returns(T.nilable(SubscriptionScheduleUpdateParams::BillingSchedule::BillUntil::Duration))
         }
        def duration=(_duration); end
        # The end date of the billing schedule.
        sig { returns(T.nilable(Integer)) }
        def timestamp; end
        sig { params(_timestamp: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def timestamp=(_timestamp); end
        # Describes how the billing schedule will determine the end date. Either `duration` or `timestamp`.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        sig {
          params(duration: T.nilable(SubscriptionScheduleUpdateParams::BillingSchedule::BillUntil::Duration), timestamp: T.nilable(Integer), type: String).void
         }
        def initialize(duration: nil, timestamp: nil, type: nil); end
      end
      # Configure billing schedule differently for individual subscription items.
      sig {
        returns(T.nilable(T::Array[SubscriptionScheduleUpdateParams::BillingSchedule::AppliesTo]))
       }
      def applies_to; end
      sig {
        params(_applies_to: T.nilable(T::Array[SubscriptionScheduleUpdateParams::BillingSchedule::AppliesTo])).returns(T.nilable(T::Array[SubscriptionScheduleUpdateParams::BillingSchedule::AppliesTo]))
       }
      def applies_to=(_applies_to); end
      # The end date for the billing schedule.
      sig { returns(T.nilable(SubscriptionScheduleUpdateParams::BillingSchedule::BillUntil)) }
      def bill_until; end
      sig {
        params(_bill_until: T.nilable(SubscriptionScheduleUpdateParams::BillingSchedule::BillUntil)).returns(T.nilable(SubscriptionScheduleUpdateParams::BillingSchedule::BillUntil))
       }
      def bill_until=(_bill_until); end
      # Specify a key for the billing schedule. Must be unique to this field, alphanumeric, and up to 200 characters. If not provided, a unique key will be generated.
      sig { returns(T.nilable(String)) }
      def key; end
      sig { params(_key: T.nilable(String)).returns(T.nilable(String)) }
      def key=(_key); end
      sig {
        params(applies_to: T.nilable(T::Array[SubscriptionScheduleUpdateParams::BillingSchedule::AppliesTo]), bill_until: T.nilable(SubscriptionScheduleUpdateParams::BillingSchedule::BillUntil), key: T.nilable(String)).void
       }
      def initialize(applies_to: nil, bill_until: nil, key: nil); end
    end
    class DefaultSettings < ::Stripe::RequestParams
      class AutomaticTax < ::Stripe::RequestParams
        class Liability < ::Stripe::RequestParams
          # The connected account being referenced when `type` is `account`.
          sig { returns(T.nilable(String)) }
          def account; end
          sig { params(_account: T.nilable(String)).returns(T.nilable(String)) }
          def account=(_account); end
          # Type of the account referenced in the request.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig { params(account: T.nilable(String), type: String).void }
          def initialize(account: nil, type: nil); end
        end
        # Enabled automatic tax calculation which will automatically compute tax rates on all invoices generated by the subscription.
        sig { returns(T::Boolean) }
        def enabled; end
        sig { params(_enabled: T::Boolean).returns(T::Boolean) }
        def enabled=(_enabled); end
        # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
        sig {
          returns(T.nilable(SubscriptionScheduleUpdateParams::DefaultSettings::AutomaticTax::Liability))
         }
        def liability; end
        sig {
          params(_liability: T.nilable(SubscriptionScheduleUpdateParams::DefaultSettings::AutomaticTax::Liability)).returns(T.nilable(SubscriptionScheduleUpdateParams::DefaultSettings::AutomaticTax::Liability))
         }
        def liability=(_liability); end
        sig {
          params(enabled: T::Boolean, liability: T.nilable(SubscriptionScheduleUpdateParams::DefaultSettings::AutomaticTax::Liability)).void
         }
        def initialize(enabled: nil, liability: nil); end
      end
      class BillingThresholds < ::Stripe::RequestParams
        # Monetary threshold that triggers the subscription to advance to a new billing period
        sig { returns(T.nilable(Integer)) }
        def amount_gte; end
        sig { params(_amount_gte: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def amount_gte=(_amount_gte); end
        # Indicates if the `billing_cycle_anchor` should be reset when a threshold is reached. If true, `billing_cycle_anchor` will be updated to the date/time the threshold was last reached; otherwise, the value will remain unchanged.
        sig { returns(T.nilable(T::Boolean)) }
        def reset_billing_cycle_anchor; end
        sig {
          params(_reset_billing_cycle_anchor: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
         }
        def reset_billing_cycle_anchor=(_reset_billing_cycle_anchor); end
        sig {
          params(amount_gte: T.nilable(Integer), reset_billing_cycle_anchor: T.nilable(T::Boolean)).void
         }
        def initialize(amount_gte: nil, reset_billing_cycle_anchor: nil); end
      end
      class InvoiceSettings < ::Stripe::RequestParams
        class Issuer < ::Stripe::RequestParams
          # The connected account being referenced when `type` is `account`.
          sig { returns(T.nilable(String)) }
          def account; end
          sig { params(_account: T.nilable(String)).returns(T.nilable(String)) }
          def account=(_account); end
          # Type of the account referenced in the request.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig { params(account: T.nilable(String), type: String).void }
          def initialize(account: nil, type: nil); end
        end
        # The account tax IDs associated with the subscription schedule. Will be set on invoices generated by the subscription schedule.
        sig { returns(T.nilable(T.any(String, T::Array[String]))) }
        def account_tax_ids; end
        sig {
          params(_account_tax_ids: T.nilable(T.any(String, T::Array[String]))).returns(T.nilable(T.any(String, T::Array[String])))
         }
        def account_tax_ids=(_account_tax_ids); end
        # Number of days within which a customer must pay invoices generated by this subscription schedule. This value will be `null` for subscription schedules where `collection_method=charge_automatically`.
        sig { returns(T.nilable(Integer)) }
        def days_until_due; end
        sig { params(_days_until_due: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def days_until_due=(_days_until_due); end
        # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
        sig {
          returns(T.nilable(SubscriptionScheduleUpdateParams::DefaultSettings::InvoiceSettings::Issuer))
         }
        def issuer; end
        sig {
          params(_issuer: T.nilable(SubscriptionScheduleUpdateParams::DefaultSettings::InvoiceSettings::Issuer)).returns(T.nilable(SubscriptionScheduleUpdateParams::DefaultSettings::InvoiceSettings::Issuer))
         }
        def issuer=(_issuer); end
        sig {
          params(account_tax_ids: T.nilable(T.any(String, T::Array[String])), days_until_due: T.nilable(Integer), issuer: T.nilable(SubscriptionScheduleUpdateParams::DefaultSettings::InvoiceSettings::Issuer)).void
         }
        def initialize(account_tax_ids: nil, days_until_due: nil, issuer: nil); end
      end
      class TransferData < ::Stripe::RequestParams
        # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the destination account. By default, the entire amount is transferred to the destination.
        sig { returns(T.nilable(Float)) }
        def amount_percent; end
        sig { params(_amount_percent: T.nilable(Float)).returns(T.nilable(Float)) }
        def amount_percent=(_amount_percent); end
        # ID of an existing, connected Stripe account.
        sig { returns(String) }
        def destination; end
        sig { params(_destination: String).returns(String) }
        def destination=(_destination); end
        sig { params(amount_percent: T.nilable(Float), destination: String).void }
        def initialize(amount_percent: nil, destination: nil); end
      end
      # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. The request must be made by a platform account on a connected account in order to set an application fee percentage. For more information, see the application fees [documentation](https://stripe.com/docs/connect/subscriptions#collecting-fees-on-subscriptions).
      sig { returns(T.nilable(Float)) }
      def application_fee_percent; end
      sig { params(_application_fee_percent: T.nilable(Float)).returns(T.nilable(Float)) }
      def application_fee_percent=(_application_fee_percent); end
      # Default settings for automatic tax computation.
      sig { returns(T.nilable(SubscriptionScheduleUpdateParams::DefaultSettings::AutomaticTax)) }
      def automatic_tax; end
      sig {
        params(_automatic_tax: T.nilable(SubscriptionScheduleUpdateParams::DefaultSettings::AutomaticTax)).returns(T.nilable(SubscriptionScheduleUpdateParams::DefaultSettings::AutomaticTax))
       }
      def automatic_tax=(_automatic_tax); end
      # Can be set to `phase_start` to set the anchor to the start of the phase or `automatic` to automatically change it if needed. Cannot be set to `phase_start` if this phase specifies a trial. For more information, see the billing cycle [documentation](https://docs.stripe.com/billing/subscriptions/billing-cycle).
      sig { returns(T.nilable(String)) }
      def billing_cycle_anchor; end
      sig { params(_billing_cycle_anchor: T.nilable(String)).returns(T.nilable(String)) }
      def billing_cycle_anchor=(_billing_cycle_anchor); end
      # Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period. Pass an empty string to remove previously-defined thresholds.
      sig {
        returns(T.nilable(T.any(String, SubscriptionScheduleUpdateParams::DefaultSettings::BillingThresholds)))
       }
      def billing_thresholds; end
      sig {
        params(_billing_thresholds: T.nilable(T.any(String, SubscriptionScheduleUpdateParams::DefaultSettings::BillingThresholds))).returns(T.nilable(T.any(String, SubscriptionScheduleUpdateParams::DefaultSettings::BillingThresholds)))
       }
      def billing_thresholds=(_billing_thresholds); end
      # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay the underlying subscription at the end of each billing cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`. Defaults to `charge_automatically` on creation.
      sig { returns(T.nilable(String)) }
      def collection_method; end
      sig { params(_collection_method: T.nilable(String)).returns(T.nilable(String)) }
      def collection_method=(_collection_method); end
      # ID of the default payment method for the subscription schedule. It must belong to the customer associated with the subscription schedule. If not set, invoices will use the default payment method in the customer's invoice settings.
      sig { returns(T.nilable(String)) }
      def default_payment_method; end
      sig { params(_default_payment_method: T.nilable(String)).returns(T.nilable(String)) }
      def default_payment_method=(_default_payment_method); end
      # Subscription description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
      sig { returns(T.nilable(String)) }
      def description; end
      sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_description); end
      # All invoices will be billed using the specified settings.
      sig { returns(T.nilable(SubscriptionScheduleUpdateParams::DefaultSettings::InvoiceSettings)) }
      def invoice_settings; end
      sig {
        params(_invoice_settings: T.nilable(SubscriptionScheduleUpdateParams::DefaultSettings::InvoiceSettings)).returns(T.nilable(SubscriptionScheduleUpdateParams::DefaultSettings::InvoiceSettings))
       }
      def invoice_settings=(_invoice_settings); end
      # The account on behalf of which to charge, for each of the associated subscription's invoices.
      sig { returns(T.nilable(String)) }
      def on_behalf_of; end
      sig { params(_on_behalf_of: T.nilable(String)).returns(T.nilable(String)) }
      def on_behalf_of=(_on_behalf_of); end
      # Configures how the subscription schedule handles billing for phase transitions.
      sig { returns(T.nilable(String)) }
      def phase_effective_at; end
      sig { params(_phase_effective_at: T.nilable(String)).returns(T.nilable(String)) }
      def phase_effective_at=(_phase_effective_at); end
      # The data with which to automatically create a Transfer for each of the associated subscription's invoices.
      sig {
        returns(T.nilable(T.any(String, SubscriptionScheduleUpdateParams::DefaultSettings::TransferData)))
       }
      def transfer_data; end
      sig {
        params(_transfer_data: T.nilable(T.any(String, SubscriptionScheduleUpdateParams::DefaultSettings::TransferData))).returns(T.nilable(T.any(String, SubscriptionScheduleUpdateParams::DefaultSettings::TransferData)))
       }
      def transfer_data=(_transfer_data); end
      sig {
        params(application_fee_percent: T.nilable(Float), automatic_tax: T.nilable(SubscriptionScheduleUpdateParams::DefaultSettings::AutomaticTax), billing_cycle_anchor: T.nilable(String), billing_thresholds: T.nilable(T.any(String, SubscriptionScheduleUpdateParams::DefaultSettings::BillingThresholds)), collection_method: T.nilable(String), default_payment_method: T.nilable(String), description: T.nilable(String), invoice_settings: T.nilable(SubscriptionScheduleUpdateParams::DefaultSettings::InvoiceSettings), on_behalf_of: T.nilable(String), phase_effective_at: T.nilable(String), transfer_data: T.nilable(T.any(String, SubscriptionScheduleUpdateParams::DefaultSettings::TransferData))).void
       }
      def initialize(
        application_fee_percent: nil,
        automatic_tax: nil,
        billing_cycle_anchor: nil,
        billing_thresholds: nil,
        collection_method: nil,
        default_payment_method: nil,
        description: nil,
        invoice_settings: nil,
        on_behalf_of: nil,
        phase_effective_at: nil,
        transfer_data: nil
      ); end
    end
    class Phase < ::Stripe::RequestParams
      class AddInvoiceItem < ::Stripe::RequestParams
        class Discount < ::Stripe::RequestParams
          class DiscountEnd < ::Stripe::RequestParams
            class Duration < ::Stripe::RequestParams
              # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
              sig { returns(String) }
              def interval; end
              sig { params(_interval: String).returns(String) }
              def interval=(_interval); end
              # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
              sig { returns(Integer) }
              def interval_count; end
              sig { params(_interval_count: Integer).returns(Integer) }
              def interval_count=(_interval_count); end
              sig { params(interval: String, interval_count: Integer).void }
              def initialize(interval: nil, interval_count: nil); end
            end
            # Time span for the redeemed discount.
            sig {
              returns(T.nilable(SubscriptionScheduleUpdateParams::Phase::AddInvoiceItem::Discount::DiscountEnd::Duration))
             }
            def duration; end
            sig {
              params(_duration: T.nilable(SubscriptionScheduleUpdateParams::Phase::AddInvoiceItem::Discount::DiscountEnd::Duration)).returns(T.nilable(SubscriptionScheduleUpdateParams::Phase::AddInvoiceItem::Discount::DiscountEnd::Duration))
             }
            def duration=(_duration); end
            # A precise Unix timestamp for the discount to end. Must be in the future.
            sig { returns(T.nilable(Integer)) }
            def timestamp; end
            sig { params(_timestamp: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def timestamp=(_timestamp); end
            # The type of calculation made to determine when the discount ends.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(duration: T.nilable(SubscriptionScheduleUpdateParams::Phase::AddInvoiceItem::Discount::DiscountEnd::Duration), timestamp: T.nilable(Integer), type: String).void
             }
            def initialize(duration: nil, timestamp: nil, type: nil); end
          end
          # ID of the coupon to create a new discount for.
          sig { returns(T.nilable(String)) }
          def coupon; end
          sig { params(_coupon: T.nilable(String)).returns(T.nilable(String)) }
          def coupon=(_coupon); end
          # ID of an existing discount on the object (or one of its ancestors) to reuse.
          sig { returns(T.nilable(String)) }
          def discount; end
          sig { params(_discount: T.nilable(String)).returns(T.nilable(String)) }
          def discount=(_discount); end
          # Details to determine how long the discount should be applied for.
          sig {
            returns(T.nilable(SubscriptionScheduleUpdateParams::Phase::AddInvoiceItem::Discount::DiscountEnd))
           }
          def discount_end; end
          sig {
            params(_discount_end: T.nilable(SubscriptionScheduleUpdateParams::Phase::AddInvoiceItem::Discount::DiscountEnd)).returns(T.nilable(SubscriptionScheduleUpdateParams::Phase::AddInvoiceItem::Discount::DiscountEnd))
           }
          def discount_end=(_discount_end); end
          # ID of the promotion code to create a new discount for.
          sig { returns(T.nilable(String)) }
          def promotion_code; end
          sig { params(_promotion_code: T.nilable(String)).returns(T.nilable(String)) }
          def promotion_code=(_promotion_code); end
          sig {
            params(coupon: T.nilable(String), discount: T.nilable(String), discount_end: T.nilable(SubscriptionScheduleUpdateParams::Phase::AddInvoiceItem::Discount::DiscountEnd), promotion_code: T.nilable(String)).void
           }
          def initialize(coupon: nil, discount: nil, discount_end: nil, promotion_code: nil); end
        end
        class Period < ::Stripe::RequestParams
          class End < ::Stripe::RequestParams
            # A precise Unix timestamp for the end of the invoice item period. Must be greater than or equal to `period.start`.
            sig { returns(T.nilable(Integer)) }
            def timestamp; end
            sig { params(_timestamp: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def timestamp=(_timestamp); end
            # Select how to calculate the end of the invoice item period.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(timestamp: T.nilable(Integer), type: String).void }
            def initialize(timestamp: nil, type: nil); end
          end
          class Start < ::Stripe::RequestParams
            # A precise Unix timestamp for the start of the invoice item period. Must be less than or equal to `period.end`.
            sig { returns(T.nilable(Integer)) }
            def timestamp; end
            sig { params(_timestamp: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def timestamp=(_timestamp); end
            # Select how to calculate the start of the invoice item period.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(timestamp: T.nilable(Integer), type: String).void }
            def initialize(timestamp: nil, type: nil); end
          end
          # End of the invoice item period.
          sig { returns(SubscriptionScheduleUpdateParams::Phase::AddInvoiceItem::Period::End) }
          def end; end
          sig {
            params(_end: SubscriptionScheduleUpdateParams::Phase::AddInvoiceItem::Period::End).returns(SubscriptionScheduleUpdateParams::Phase::AddInvoiceItem::Period::End)
           }
          def end=(_end); end
          # Start of the invoice item period.
          sig { returns(SubscriptionScheduleUpdateParams::Phase::AddInvoiceItem::Period::Start) }
          def start; end
          sig {
            params(_start: SubscriptionScheduleUpdateParams::Phase::AddInvoiceItem::Period::Start).returns(SubscriptionScheduleUpdateParams::Phase::AddInvoiceItem::Period::Start)
           }
          def start=(_start); end
          sig {
            params(end_: SubscriptionScheduleUpdateParams::Phase::AddInvoiceItem::Period::End, start: SubscriptionScheduleUpdateParams::Phase::AddInvoiceItem::Period::Start).void
           }
          def initialize(end_: nil, start: nil); end
        end
        class PriceData < ::Stripe::RequestParams
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(String) }
          def currency; end
          sig { params(_currency: String).returns(String) }
          def currency=(_currency); end
          # The ID of the [Product](https://docs.stripe.com/api/products) that this [Price](https://docs.stripe.com/api/prices) will belong to.
          sig { returns(String) }
          def product; end
          sig { params(_product: String).returns(String) }
          def product=(_product); end
          # Only required if a [default tax behavior](https://docs.stripe.com/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
          sig { returns(T.nilable(String)) }
          def tax_behavior; end
          sig { params(_tax_behavior: T.nilable(String)).returns(T.nilable(String)) }
          def tax_behavior=(_tax_behavior); end
          # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge or a negative integer representing the amount to credit to the customer.
          sig { returns(T.nilable(Integer)) }
          def unit_amount; end
          sig { params(_unit_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def unit_amount=(_unit_amount); end
          # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
          sig { returns(T.nilable(String)) }
          def unit_amount_decimal; end
          sig { params(_unit_amount_decimal: T.nilable(String)).returns(T.nilable(String)) }
          def unit_amount_decimal=(_unit_amount_decimal); end
          sig {
            params(currency: String, product: String, tax_behavior: T.nilable(String), unit_amount: T.nilable(Integer), unit_amount_decimal: T.nilable(String)).void
           }
          def initialize(
            currency: nil,
            product: nil,
            tax_behavior: nil,
            unit_amount: nil,
            unit_amount_decimal: nil
          ); end
        end
        # The coupons to redeem into discounts for the item.
        sig {
          returns(T.nilable(T::Array[SubscriptionScheduleUpdateParams::Phase::AddInvoiceItem::Discount]))
         }
        def discounts; end
        sig {
          params(_discounts: T.nilable(T::Array[SubscriptionScheduleUpdateParams::Phase::AddInvoiceItem::Discount])).returns(T.nilable(T::Array[SubscriptionScheduleUpdateParams::Phase::AddInvoiceItem::Discount]))
         }
        def discounts=(_discounts); end
        # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        # The period associated with this invoice item. If not set, `period.start.type` defaults to `max_item_period_start` and `period.end.type` defaults to `min_item_period_end`.
        sig { returns(T.nilable(SubscriptionScheduleUpdateParams::Phase::AddInvoiceItem::Period)) }
        def period; end
        sig {
          params(_period: T.nilable(SubscriptionScheduleUpdateParams::Phase::AddInvoiceItem::Period)).returns(T.nilable(SubscriptionScheduleUpdateParams::Phase::AddInvoiceItem::Period))
         }
        def period=(_period); end
        # The ID of the price object. One of `price` or `price_data` is required.
        sig { returns(T.nilable(String)) }
        def price; end
        sig { params(_price: T.nilable(String)).returns(T.nilable(String)) }
        def price=(_price); end
        # Data used to generate a new [Price](https://docs.stripe.com/api/prices) object inline. One of `price` or `price_data` is required.
        sig {
          returns(T.nilable(SubscriptionScheduleUpdateParams::Phase::AddInvoiceItem::PriceData))
         }
        def price_data; end
        sig {
          params(_price_data: T.nilable(SubscriptionScheduleUpdateParams::Phase::AddInvoiceItem::PriceData)).returns(T.nilable(SubscriptionScheduleUpdateParams::Phase::AddInvoiceItem::PriceData))
         }
        def price_data=(_price_data); end
        # Quantity for this item. Defaults to 1.
        sig { returns(T.nilable(Integer)) }
        def quantity; end
        sig { params(_quantity: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def quantity=(_quantity); end
        # The tax rates which apply to the item. When set, the `default_tax_rates` do not apply to this item.
        sig { returns(T.nilable(T.any(String, T::Array[String]))) }
        def tax_rates; end
        sig {
          params(_tax_rates: T.nilable(T.any(String, T::Array[String]))).returns(T.nilable(T.any(String, T::Array[String])))
         }
        def tax_rates=(_tax_rates); end
        sig {
          params(discounts: T.nilable(T::Array[SubscriptionScheduleUpdateParams::Phase::AddInvoiceItem::Discount]), metadata: T.nilable(T::Hash[String, String]), period: T.nilable(SubscriptionScheduleUpdateParams::Phase::AddInvoiceItem::Period), price: T.nilable(String), price_data: T.nilable(SubscriptionScheduleUpdateParams::Phase::AddInvoiceItem::PriceData), quantity: T.nilable(Integer), tax_rates: T.nilable(T.any(String, T::Array[String]))).void
         }
        def initialize(
          discounts: nil,
          metadata: nil,
          period: nil,
          price: nil,
          price_data: nil,
          quantity: nil,
          tax_rates: nil
        ); end
      end
      class AutomaticTax < ::Stripe::RequestParams
        class Liability < ::Stripe::RequestParams
          # The connected account being referenced when `type` is `account`.
          sig { returns(T.nilable(String)) }
          def account; end
          sig { params(_account: T.nilable(String)).returns(T.nilable(String)) }
          def account=(_account); end
          # Type of the account referenced in the request.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig { params(account: T.nilable(String), type: String).void }
          def initialize(account: nil, type: nil); end
        end
        # Enabled automatic tax calculation which will automatically compute tax rates on all invoices generated by the subscription.
        sig { returns(T::Boolean) }
        def enabled; end
        sig { params(_enabled: T::Boolean).returns(T::Boolean) }
        def enabled=(_enabled); end
        # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
        sig { returns(T.nilable(SubscriptionScheduleUpdateParams::Phase::AutomaticTax::Liability)) }
        def liability; end
        sig {
          params(_liability: T.nilable(SubscriptionScheduleUpdateParams::Phase::AutomaticTax::Liability)).returns(T.nilable(SubscriptionScheduleUpdateParams::Phase::AutomaticTax::Liability))
         }
        def liability=(_liability); end
        sig {
          params(enabled: T::Boolean, liability: T.nilable(SubscriptionScheduleUpdateParams::Phase::AutomaticTax::Liability)).void
         }
        def initialize(enabled: nil, liability: nil); end
      end
      class BillingThresholds < ::Stripe::RequestParams
        # Monetary threshold that triggers the subscription to advance to a new billing period
        sig { returns(T.nilable(Integer)) }
        def amount_gte; end
        sig { params(_amount_gte: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def amount_gte=(_amount_gte); end
        # Indicates if the `billing_cycle_anchor` should be reset when a threshold is reached. If true, `billing_cycle_anchor` will be updated to the date/time the threshold was last reached; otherwise, the value will remain unchanged.
        sig { returns(T.nilable(T::Boolean)) }
        def reset_billing_cycle_anchor; end
        sig {
          params(_reset_billing_cycle_anchor: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
         }
        def reset_billing_cycle_anchor=(_reset_billing_cycle_anchor); end
        sig {
          params(amount_gte: T.nilable(Integer), reset_billing_cycle_anchor: T.nilable(T::Boolean)).void
         }
        def initialize(amount_gte: nil, reset_billing_cycle_anchor: nil); end
      end
      class Discount < ::Stripe::RequestParams
        class DiscountEnd < ::Stripe::RequestParams
          class Duration < ::Stripe::RequestParams
            # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
            sig { returns(String) }
            def interval; end
            sig { params(_interval: String).returns(String) }
            def interval=(_interval); end
            # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
            sig { returns(Integer) }
            def interval_count; end
            sig { params(_interval_count: Integer).returns(Integer) }
            def interval_count=(_interval_count); end
            sig { params(interval: String, interval_count: Integer).void }
            def initialize(interval: nil, interval_count: nil); end
          end
          # Time span for the redeemed discount.
          sig {
            returns(T.nilable(SubscriptionScheduleUpdateParams::Phase::Discount::DiscountEnd::Duration))
           }
          def duration; end
          sig {
            params(_duration: T.nilable(SubscriptionScheduleUpdateParams::Phase::Discount::DiscountEnd::Duration)).returns(T.nilable(SubscriptionScheduleUpdateParams::Phase::Discount::DiscountEnd::Duration))
           }
          def duration=(_duration); end
          # A precise Unix timestamp for the discount to end. Must be in the future.
          sig { returns(T.nilable(Integer)) }
          def timestamp; end
          sig { params(_timestamp: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def timestamp=(_timestamp); end
          # The type of calculation made to determine when the discount ends.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig {
            params(duration: T.nilable(SubscriptionScheduleUpdateParams::Phase::Discount::DiscountEnd::Duration), timestamp: T.nilable(Integer), type: String).void
           }
          def initialize(duration: nil, timestamp: nil, type: nil); end
        end
        # ID of the coupon to create a new discount for.
        sig { returns(T.nilable(String)) }
        def coupon; end
        sig { params(_coupon: T.nilable(String)).returns(T.nilable(String)) }
        def coupon=(_coupon); end
        # ID of an existing discount on the object (or one of its ancestors) to reuse.
        sig { returns(T.nilable(String)) }
        def discount; end
        sig { params(_discount: T.nilable(String)).returns(T.nilable(String)) }
        def discount=(_discount); end
        # Details to determine how long the discount should be applied for.
        sig { returns(T.nilable(SubscriptionScheduleUpdateParams::Phase::Discount::DiscountEnd)) }
        def discount_end; end
        sig {
          params(_discount_end: T.nilable(SubscriptionScheduleUpdateParams::Phase::Discount::DiscountEnd)).returns(T.nilable(SubscriptionScheduleUpdateParams::Phase::Discount::DiscountEnd))
         }
        def discount_end=(_discount_end); end
        # ID of the promotion code to create a new discount for.
        sig { returns(T.nilable(String)) }
        def promotion_code; end
        sig { params(_promotion_code: T.nilable(String)).returns(T.nilable(String)) }
        def promotion_code=(_promotion_code); end
        sig {
          params(coupon: T.nilable(String), discount: T.nilable(String), discount_end: T.nilable(SubscriptionScheduleUpdateParams::Phase::Discount::DiscountEnd), promotion_code: T.nilable(String)).void
         }
        def initialize(coupon: nil, discount: nil, discount_end: nil, promotion_code: nil); end
      end
      class Duration < ::Stripe::RequestParams
        # Specifies phase duration. Either `day`, `week`, `month` or `year`.
        sig { returns(String) }
        def interval; end
        sig { params(_interval: String).returns(String) }
        def interval=(_interval); end
        # The multiplier applied to the interval.
        sig { returns(T.nilable(Integer)) }
        def interval_count; end
        sig { params(_interval_count: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def interval_count=(_interval_count); end
        sig { params(interval: String, interval_count: T.nilable(Integer)).void }
        def initialize(interval: nil, interval_count: nil); end
      end
      class InvoiceSettings < ::Stripe::RequestParams
        class Issuer < ::Stripe::RequestParams
          # The connected account being referenced when `type` is `account`.
          sig { returns(T.nilable(String)) }
          def account; end
          sig { params(_account: T.nilable(String)).returns(T.nilable(String)) }
          def account=(_account); end
          # Type of the account referenced in the request.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig { params(account: T.nilable(String), type: String).void }
          def initialize(account: nil, type: nil); end
        end
        # The account tax IDs associated with this phase of the subscription schedule. Will be set on invoices generated by this phase of the subscription schedule.
        sig { returns(T.nilable(T.any(String, T::Array[String]))) }
        def account_tax_ids; end
        sig {
          params(_account_tax_ids: T.nilable(T.any(String, T::Array[String]))).returns(T.nilable(T.any(String, T::Array[String])))
         }
        def account_tax_ids=(_account_tax_ids); end
        # Number of days within which a customer must pay invoices generated by this subscription schedule. This value will be `null` for subscription schedules where `billing=charge_automatically`.
        sig { returns(T.nilable(Integer)) }
        def days_until_due; end
        sig { params(_days_until_due: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def days_until_due=(_days_until_due); end
        # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
        sig { returns(T.nilable(SubscriptionScheduleUpdateParams::Phase::InvoiceSettings::Issuer)) }
        def issuer; end
        sig {
          params(_issuer: T.nilable(SubscriptionScheduleUpdateParams::Phase::InvoiceSettings::Issuer)).returns(T.nilable(SubscriptionScheduleUpdateParams::Phase::InvoiceSettings::Issuer))
         }
        def issuer=(_issuer); end
        sig {
          params(account_tax_ids: T.nilable(T.any(String, T::Array[String])), days_until_due: T.nilable(Integer), issuer: T.nilable(SubscriptionScheduleUpdateParams::Phase::InvoiceSettings::Issuer)).void
         }
        def initialize(account_tax_ids: nil, days_until_due: nil, issuer: nil); end
      end
      class Item < ::Stripe::RequestParams
        class BillingThresholds < ::Stripe::RequestParams
          # Number of units that meets the billing threshold to advance the subscription to a new billing period (e.g., it takes 10 $5 units to meet a $50 [monetary threshold](https://docs.stripe.com/api/subscriptions/update#update_subscription-billing_thresholds-amount_gte))
          sig { returns(Integer) }
          def usage_gte; end
          sig { params(_usage_gte: Integer).returns(Integer) }
          def usage_gte=(_usage_gte); end
          sig { params(usage_gte: Integer).void }
          def initialize(usage_gte: nil); end
        end
        class Discount < ::Stripe::RequestParams
          class DiscountEnd < ::Stripe::RequestParams
            class Duration < ::Stripe::RequestParams
              # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
              sig { returns(String) }
              def interval; end
              sig { params(_interval: String).returns(String) }
              def interval=(_interval); end
              # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
              sig { returns(Integer) }
              def interval_count; end
              sig { params(_interval_count: Integer).returns(Integer) }
              def interval_count=(_interval_count); end
              sig { params(interval: String, interval_count: Integer).void }
              def initialize(interval: nil, interval_count: nil); end
            end
            # Time span for the redeemed discount.
            sig {
              returns(T.nilable(SubscriptionScheduleUpdateParams::Phase::Item::Discount::DiscountEnd::Duration))
             }
            def duration; end
            sig {
              params(_duration: T.nilable(SubscriptionScheduleUpdateParams::Phase::Item::Discount::DiscountEnd::Duration)).returns(T.nilable(SubscriptionScheduleUpdateParams::Phase::Item::Discount::DiscountEnd::Duration))
             }
            def duration=(_duration); end
            # A precise Unix timestamp for the discount to end. Must be in the future.
            sig { returns(T.nilable(Integer)) }
            def timestamp; end
            sig { params(_timestamp: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def timestamp=(_timestamp); end
            # The type of calculation made to determine when the discount ends.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(duration: T.nilable(SubscriptionScheduleUpdateParams::Phase::Item::Discount::DiscountEnd::Duration), timestamp: T.nilable(Integer), type: String).void
             }
            def initialize(duration: nil, timestamp: nil, type: nil); end
          end
          # ID of the coupon to create a new discount for.
          sig { returns(T.nilable(String)) }
          def coupon; end
          sig { params(_coupon: T.nilable(String)).returns(T.nilable(String)) }
          def coupon=(_coupon); end
          # ID of an existing discount on the object (or one of its ancestors) to reuse.
          sig { returns(T.nilable(String)) }
          def discount; end
          sig { params(_discount: T.nilable(String)).returns(T.nilable(String)) }
          def discount=(_discount); end
          # Details to determine how long the discount should be applied for.
          sig {
            returns(T.nilable(SubscriptionScheduleUpdateParams::Phase::Item::Discount::DiscountEnd))
           }
          def discount_end; end
          sig {
            params(_discount_end: T.nilable(SubscriptionScheduleUpdateParams::Phase::Item::Discount::DiscountEnd)).returns(T.nilable(SubscriptionScheduleUpdateParams::Phase::Item::Discount::DiscountEnd))
           }
          def discount_end=(_discount_end); end
          # ID of the promotion code to create a new discount for.
          sig { returns(T.nilable(String)) }
          def promotion_code; end
          sig { params(_promotion_code: T.nilable(String)).returns(T.nilable(String)) }
          def promotion_code=(_promotion_code); end
          sig {
            params(coupon: T.nilable(String), discount: T.nilable(String), discount_end: T.nilable(SubscriptionScheduleUpdateParams::Phase::Item::Discount::DiscountEnd), promotion_code: T.nilable(String)).void
           }
          def initialize(coupon: nil, discount: nil, discount_end: nil, promotion_code: nil); end
        end
        class PriceData < ::Stripe::RequestParams
          class Recurring < ::Stripe::RequestParams
            # Specifies billing frequency. Either `day`, `week`, `month` or `year`.
            sig { returns(String) }
            def interval; end
            sig { params(_interval: String).returns(String) }
            def interval=(_interval); end
            # The number of intervals between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months. Maximum of three years interval allowed (3 years, 36 months, or 156 weeks).
            sig { returns(T.nilable(Integer)) }
            def interval_count; end
            sig { params(_interval_count: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def interval_count=(_interval_count); end
            sig { params(interval: String, interval_count: T.nilable(Integer)).void }
            def initialize(interval: nil, interval_count: nil); end
          end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(String) }
          def currency; end
          sig { params(_currency: String).returns(String) }
          def currency=(_currency); end
          # The ID of the [Product](https://docs.stripe.com/api/products) that this [Price](https://docs.stripe.com/api/prices) will belong to.
          sig { returns(String) }
          def product; end
          sig { params(_product: String).returns(String) }
          def product=(_product); end
          # The recurring components of a price such as `interval` and `interval_count`.
          sig { returns(SubscriptionScheduleUpdateParams::Phase::Item::PriceData::Recurring) }
          def recurring; end
          sig {
            params(_recurring: SubscriptionScheduleUpdateParams::Phase::Item::PriceData::Recurring).returns(SubscriptionScheduleUpdateParams::Phase::Item::PriceData::Recurring)
           }
          def recurring=(_recurring); end
          # Only required if a [default tax behavior](https://docs.stripe.com/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
          sig { returns(T.nilable(String)) }
          def tax_behavior; end
          sig { params(_tax_behavior: T.nilable(String)).returns(T.nilable(String)) }
          def tax_behavior=(_tax_behavior); end
          # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge.
          sig { returns(T.nilable(Integer)) }
          def unit_amount; end
          sig { params(_unit_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def unit_amount=(_unit_amount); end
          # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
          sig { returns(T.nilable(String)) }
          def unit_amount_decimal; end
          sig { params(_unit_amount_decimal: T.nilable(String)).returns(T.nilable(String)) }
          def unit_amount_decimal=(_unit_amount_decimal); end
          sig {
            params(currency: String, product: String, recurring: SubscriptionScheduleUpdateParams::Phase::Item::PriceData::Recurring, tax_behavior: T.nilable(String), unit_amount: T.nilable(Integer), unit_amount_decimal: T.nilable(String)).void
           }
          def initialize(
            currency: nil,
            product: nil,
            recurring: nil,
            tax_behavior: nil,
            unit_amount: nil,
            unit_amount_decimal: nil
          ); end
        end
        class Trial < ::Stripe::RequestParams
          # List of price IDs which, if present on the subscription following a paid trial, constitute opting-in to the paid trial. Currently only supports at most 1 price ID.
          sig { returns(T.nilable(T::Array[String])) }
          def converts_to; end
          sig {
            params(_converts_to: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def converts_to=(_converts_to); end
          # Determines the type of trial for this item.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig { params(converts_to: T.nilable(T::Array[String]), type: String).void }
          def initialize(converts_to: nil, type: nil); end
        end
        # Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period. Pass an empty string to remove previously-defined thresholds.
        sig {
          returns(T.nilable(T.any(String, SubscriptionScheduleUpdateParams::Phase::Item::BillingThresholds)))
         }
        def billing_thresholds; end
        sig {
          params(_billing_thresholds: T.nilable(T.any(String, SubscriptionScheduleUpdateParams::Phase::Item::BillingThresholds))).returns(T.nilable(T.any(String, SubscriptionScheduleUpdateParams::Phase::Item::BillingThresholds)))
         }
        def billing_thresholds=(_billing_thresholds); end
        # The coupons to redeem into discounts for the subscription item.
        sig {
          returns(T.nilable(T.any(String, T::Array[SubscriptionScheduleUpdateParams::Phase::Item::Discount])))
         }
        def discounts; end
        sig {
          params(_discounts: T.nilable(T.any(String, T::Array[SubscriptionScheduleUpdateParams::Phase::Item::Discount]))).returns(T.nilable(T.any(String, T::Array[SubscriptionScheduleUpdateParams::Phase::Item::Discount])))
         }
        def discounts=(_discounts); end
        # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to a configuration item. Metadata on a configuration item will update the underlying subscription item's `metadata` when the phase is entered, adding new keys and replacing existing keys. Individual keys in the subscription item's `metadata` can be unset by posting an empty value to them in the configuration item's `metadata`. To unset all keys in the subscription item's `metadata`, update the subscription item directly or unset every key individually from the configuration item's `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        # The plan ID to subscribe to. You may specify the same ID in `plan` and `price`.
        sig { returns(T.nilable(String)) }
        def plan; end
        sig { params(_plan: T.nilable(String)).returns(T.nilable(String)) }
        def plan=(_plan); end
        # The ID of the price object.
        sig { returns(T.nilable(String)) }
        def price; end
        sig { params(_price: T.nilable(String)).returns(T.nilable(String)) }
        def price=(_price); end
        # Data used to generate a new [Price](https://docs.stripe.com/api/prices) object inline.
        sig { returns(T.nilable(SubscriptionScheduleUpdateParams::Phase::Item::PriceData)) }
        def price_data; end
        sig {
          params(_price_data: T.nilable(SubscriptionScheduleUpdateParams::Phase::Item::PriceData)).returns(T.nilable(SubscriptionScheduleUpdateParams::Phase::Item::PriceData))
         }
        def price_data=(_price_data); end
        # Quantity for the given price. Can be set only if the price's `usage_type` is `licensed` and not `metered`.
        sig { returns(T.nilable(Integer)) }
        def quantity; end
        sig { params(_quantity: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def quantity=(_quantity); end
        # A list of [Tax Rate](https://docs.stripe.com/api/tax_rates) ids. These Tax Rates will override the [`default_tax_rates`](https://docs.stripe.com/api/subscriptions/create#create_subscription-default_tax_rates) on the Subscription. When updating, pass an empty string to remove previously-defined tax rates.
        sig { returns(T.nilable(T.any(String, T::Array[String]))) }
        def tax_rates; end
        sig {
          params(_tax_rates: T.nilable(T.any(String, T::Array[String]))).returns(T.nilable(T.any(String, T::Array[String])))
         }
        def tax_rates=(_tax_rates); end
        # Options that configure the trial on the subscription item.
        sig { returns(T.nilable(SubscriptionScheduleUpdateParams::Phase::Item::Trial)) }
        def trial; end
        sig {
          params(_trial: T.nilable(SubscriptionScheduleUpdateParams::Phase::Item::Trial)).returns(T.nilable(SubscriptionScheduleUpdateParams::Phase::Item::Trial))
         }
        def trial=(_trial); end
        # The ID of the trial offer to apply to the configuration item.
        sig { returns(T.nilable(String)) }
        def trial_offer; end
        sig { params(_trial_offer: T.nilable(String)).returns(T.nilable(String)) }
        def trial_offer=(_trial_offer); end
        sig {
          params(billing_thresholds: T.nilable(T.any(String, SubscriptionScheduleUpdateParams::Phase::Item::BillingThresholds)), discounts: T.nilable(T.any(String, T::Array[SubscriptionScheduleUpdateParams::Phase::Item::Discount])), metadata: T.nilable(T::Hash[String, String]), plan: T.nilable(String), price: T.nilable(String), price_data: T.nilable(SubscriptionScheduleUpdateParams::Phase::Item::PriceData), quantity: T.nilable(Integer), tax_rates: T.nilable(T.any(String, T::Array[String])), trial: T.nilable(SubscriptionScheduleUpdateParams::Phase::Item::Trial), trial_offer: T.nilable(String)).void
         }
        def initialize(
          billing_thresholds: nil,
          discounts: nil,
          metadata: nil,
          plan: nil,
          price: nil,
          price_data: nil,
          quantity: nil,
          tax_rates: nil,
          trial: nil,
          trial_offer: nil
        ); end
      end
      class PauseCollection < ::Stripe::RequestParams
        # The payment collection behavior for this subscription while paused. One of `keep_as_draft`, `mark_uncollectible`, or `void`.
        sig { returns(String) }
        def behavior; end
        sig { params(_behavior: String).returns(String) }
        def behavior=(_behavior); end
        sig { params(behavior: String).void }
        def initialize(behavior: nil); end
      end
      class TransferData < ::Stripe::RequestParams
        # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the destination account. By default, the entire amount is transferred to the destination.
        sig { returns(T.nilable(Float)) }
        def amount_percent; end
        sig { params(_amount_percent: T.nilable(Float)).returns(T.nilable(Float)) }
        def amount_percent=(_amount_percent); end
        # ID of an existing, connected Stripe account.
        sig { returns(String) }
        def destination; end
        sig { params(_destination: String).returns(String) }
        def destination=(_destination); end
        sig { params(amount_percent: T.nilable(Float), destination: String).void }
        def initialize(amount_percent: nil, destination: nil); end
      end
      class TrialSettings < ::Stripe::RequestParams
        class EndBehavior < ::Stripe::RequestParams
          # Configure how an opt-in following a paid trial is billed when using `billing_behavior: prorate_up_front`.
          sig { returns(T.nilable(String)) }
          def prorate_up_front; end
          sig { params(_prorate_up_front: T.nilable(String)).returns(T.nilable(String)) }
          def prorate_up_front=(_prorate_up_front); end
          sig { params(prorate_up_front: T.nilable(String)).void }
          def initialize(prorate_up_front: nil); end
        end
        # Defines how the subscription should behave when a trial ends.
        sig {
          returns(T.nilable(SubscriptionScheduleUpdateParams::Phase::TrialSettings::EndBehavior))
         }
        def end_behavior; end
        sig {
          params(_end_behavior: T.nilable(SubscriptionScheduleUpdateParams::Phase::TrialSettings::EndBehavior)).returns(T.nilable(SubscriptionScheduleUpdateParams::Phase::TrialSettings::EndBehavior))
         }
        def end_behavior=(_end_behavior); end
        sig {
          params(end_behavior: T.nilable(SubscriptionScheduleUpdateParams::Phase::TrialSettings::EndBehavior)).void
         }
        def initialize(end_behavior: nil); end
      end
      # A list of prices and quantities that will generate invoice items appended to the next invoice for this phase. You may pass up to 20 items.
      sig { returns(T.nilable(T::Array[SubscriptionScheduleUpdateParams::Phase::AddInvoiceItem])) }
      def add_invoice_items; end
      sig {
        params(_add_invoice_items: T.nilable(T::Array[SubscriptionScheduleUpdateParams::Phase::AddInvoiceItem])).returns(T.nilable(T::Array[SubscriptionScheduleUpdateParams::Phase::AddInvoiceItem]))
       }
      def add_invoice_items=(_add_invoice_items); end
      # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. The request must be made by a platform account on a connected account in order to set an application fee percentage. For more information, see the application fees [documentation](https://stripe.com/docs/connect/subscriptions#collecting-fees-on-subscriptions).
      sig { returns(T.nilable(Float)) }
      def application_fee_percent; end
      sig { params(_application_fee_percent: T.nilable(Float)).returns(T.nilable(Float)) }
      def application_fee_percent=(_application_fee_percent); end
      # Automatic tax settings for this phase.
      sig { returns(T.nilable(SubscriptionScheduleUpdateParams::Phase::AutomaticTax)) }
      def automatic_tax; end
      sig {
        params(_automatic_tax: T.nilable(SubscriptionScheduleUpdateParams::Phase::AutomaticTax)).returns(T.nilable(SubscriptionScheduleUpdateParams::Phase::AutomaticTax))
       }
      def automatic_tax=(_automatic_tax); end
      # Can be set to `phase_start` to set the anchor to the start of the phase or `automatic` to automatically change it if needed. Cannot be set to `phase_start` if this phase specifies a trial. For more information, see the billing cycle [documentation](https://docs.stripe.com/billing/subscriptions/billing-cycle).
      sig { returns(T.nilable(String)) }
      def billing_cycle_anchor; end
      sig { params(_billing_cycle_anchor: T.nilable(String)).returns(T.nilable(String)) }
      def billing_cycle_anchor=(_billing_cycle_anchor); end
      # Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period. Pass an empty string to remove previously-defined thresholds.
      sig {
        returns(T.nilable(T.any(String, SubscriptionScheduleUpdateParams::Phase::BillingThresholds)))
       }
      def billing_thresholds; end
      sig {
        params(_billing_thresholds: T.nilable(T.any(String, SubscriptionScheduleUpdateParams::Phase::BillingThresholds))).returns(T.nilable(T.any(String, SubscriptionScheduleUpdateParams::Phase::BillingThresholds)))
       }
      def billing_thresholds=(_billing_thresholds); end
      # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay the underlying subscription at the end of each billing cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`. Defaults to `charge_automatically` on creation.
      sig { returns(T.nilable(String)) }
      def collection_method; end
      sig { params(_collection_method: T.nilable(String)).returns(T.nilable(String)) }
      def collection_method=(_collection_method); end
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(T.nilable(String)) }
      def currency; end
      sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
      def currency=(_currency); end
      # ID of the default payment method for the subscription schedule. It must belong to the customer associated with the subscription schedule. If not set, invoices will use the default payment method in the customer's invoice settings.
      sig { returns(T.nilable(String)) }
      def default_payment_method; end
      sig { params(_default_payment_method: T.nilable(String)).returns(T.nilable(String)) }
      def default_payment_method=(_default_payment_method); end
      # A list of [Tax Rate](https://docs.stripe.com/api/tax_rates) ids. These Tax Rates will set the Subscription's [`default_tax_rates`](https://docs.stripe.com/api/subscriptions/create#create_subscription-default_tax_rates), which means they will be the Invoice's [`default_tax_rates`](https://docs.stripe.com/api/invoices/create#create_invoice-default_tax_rates) for any Invoices issued by the Subscription during this Phase.
      sig { returns(T.nilable(T.any(String, T::Array[String]))) }
      def default_tax_rates; end
      sig {
        params(_default_tax_rates: T.nilable(T.any(String, T::Array[String]))).returns(T.nilable(T.any(String, T::Array[String])))
       }
      def default_tax_rates=(_default_tax_rates); end
      # Subscription description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
      sig { returns(T.nilable(String)) }
      def description; end
      sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_description); end
      # The coupons to redeem into discounts for the schedule phase. If not specified, inherits the discount from the subscription's customer. Pass an empty string to avoid inheriting any discounts.
      sig {
        returns(T.nilable(T.any(String, T::Array[SubscriptionScheduleUpdateParams::Phase::Discount])))
       }
      def discounts; end
      sig {
        params(_discounts: T.nilable(T.any(String, T::Array[SubscriptionScheduleUpdateParams::Phase::Discount]))).returns(T.nilable(T.any(String, T::Array[SubscriptionScheduleUpdateParams::Phase::Discount])))
       }
      def discounts=(_discounts); end
      # The number of intervals the phase should last. If set, `end_date` must not be set.
      sig { returns(T.nilable(SubscriptionScheduleUpdateParams::Phase::Duration)) }
      def duration; end
      sig {
        params(_duration: T.nilable(SubscriptionScheduleUpdateParams::Phase::Duration)).returns(T.nilable(SubscriptionScheduleUpdateParams::Phase::Duration))
       }
      def duration=(_duration); end
      # Configures how the subscription schedule handles billing for phase transitions.
      sig { returns(T.nilable(String)) }
      def effective_at; end
      sig { params(_effective_at: T.nilable(String)).returns(T.nilable(String)) }
      def effective_at=(_effective_at); end
      # The date at which this phase of the subscription schedule ends. If set, `duration` must not be set.
      sig { returns(T.nilable(T.any(Integer, String))) }
      def end_date; end
      sig {
        params(_end_date: T.nilable(T.any(Integer, String))).returns(T.nilable(T.any(Integer, String)))
       }
      def end_date=(_end_date); end
      # All invoices will be billed using the specified settings.
      sig { returns(T.nilable(SubscriptionScheduleUpdateParams::Phase::InvoiceSettings)) }
      def invoice_settings; end
      sig {
        params(_invoice_settings: T.nilable(SubscriptionScheduleUpdateParams::Phase::InvoiceSettings)).returns(T.nilable(SubscriptionScheduleUpdateParams::Phase::InvoiceSettings))
       }
      def invoice_settings=(_invoice_settings); end
      # List of configuration items, each with an attached price, to apply during this phase of the subscription schedule.
      sig { returns(T::Array[SubscriptionScheduleUpdateParams::Phase::Item]) }
      def items; end
      sig {
        params(_items: T::Array[SubscriptionScheduleUpdateParams::Phase::Item]).returns(T::Array[SubscriptionScheduleUpdateParams::Phase::Item])
       }
      def items=(_items); end
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to a phase. Metadata on a schedule's phase will update the underlying subscription's `metadata` when the phase is entered, adding new keys and replacing existing keys in the subscription's `metadata`. Individual keys in the subscription's `metadata` can be unset by posting an empty value to them in the phase's `metadata`. To unset all keys in the subscription's `metadata`, update the subscription directly or unset every key individually from the phase's `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
       }
      def metadata=(_metadata); end
      # The account on behalf of which to charge, for each of the associated subscription's invoices.
      sig { returns(T.nilable(String)) }
      def on_behalf_of; end
      sig { params(_on_behalf_of: T.nilable(String)).returns(T.nilable(String)) }
      def on_behalf_of=(_on_behalf_of); end
      # If specified, payment collection for this subscription will be paused. Note that the subscription status will be unchanged and will not be updated to `paused`. Learn more about [pausing collection](https://docs.stripe.com/billing/subscriptions/pause-payment).
      sig { returns(T.nilable(SubscriptionScheduleUpdateParams::Phase::PauseCollection)) }
      def pause_collection; end
      sig {
        params(_pause_collection: T.nilable(SubscriptionScheduleUpdateParams::Phase::PauseCollection)).returns(T.nilable(SubscriptionScheduleUpdateParams::Phase::PauseCollection))
       }
      def pause_collection=(_pause_collection); end
      # Controls whether the subscription schedule should create [prorations](https://docs.stripe.com/billing/subscriptions/prorations) when transitioning to this phase if there is a difference in billing configuration. It's different from the request-level [proration_behavior](https://docs.stripe.com/api/subscription_schedules/update#update_subscription_schedule-proration_behavior) parameter which controls what happens if the update request affects the billing configuration (item price, quantity, etc.) of the current phase.
      sig { returns(T.nilable(String)) }
      def proration_behavior; end
      sig { params(_proration_behavior: T.nilable(String)).returns(T.nilable(String)) }
      def proration_behavior=(_proration_behavior); end
      # The date at which this phase of the subscription schedule starts or `now`. Must be set on the first phase.
      sig { returns(T.nilable(T.any(Integer, String))) }
      def start_date; end
      sig {
        params(_start_date: T.nilable(T.any(Integer, String))).returns(T.nilable(T.any(Integer, String)))
       }
      def start_date=(_start_date); end
      # The data with which to automatically create a Transfer for each of the associated subscription's invoices.
      sig { returns(T.nilable(SubscriptionScheduleUpdateParams::Phase::TransferData)) }
      def transfer_data; end
      sig {
        params(_transfer_data: T.nilable(SubscriptionScheduleUpdateParams::Phase::TransferData)).returns(T.nilable(SubscriptionScheduleUpdateParams::Phase::TransferData))
       }
      def transfer_data=(_transfer_data); end
      # If set to true the entire phase is counted as a trial and the customer will not be charged for any fees.
      sig { returns(T.nilable(T::Boolean)) }
      def trial; end
      sig { params(_trial: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def trial=(_trial); end
      # Specify trial behavior when crossing phase boundaries
      sig { returns(T.nilable(String)) }
      def trial_continuation; end
      sig { params(_trial_continuation: T.nilable(String)).returns(T.nilable(String)) }
      def trial_continuation=(_trial_continuation); end
      # Sets the phase to trialing from the start date to this date. Must be before the phase end date, can not be combined with `trial`
      sig { returns(T.nilable(T.any(Integer, String))) }
      def trial_end; end
      sig {
        params(_trial_end: T.nilable(T.any(Integer, String))).returns(T.nilable(T.any(Integer, String)))
       }
      def trial_end=(_trial_end); end
      # Settings related to subscription trials.
      sig { returns(T.nilable(SubscriptionScheduleUpdateParams::Phase::TrialSettings)) }
      def trial_settings; end
      sig {
        params(_trial_settings: T.nilable(SubscriptionScheduleUpdateParams::Phase::TrialSettings)).returns(T.nilable(SubscriptionScheduleUpdateParams::Phase::TrialSettings))
       }
      def trial_settings=(_trial_settings); end
      sig {
        params(add_invoice_items: T.nilable(T::Array[SubscriptionScheduleUpdateParams::Phase::AddInvoiceItem]), application_fee_percent: T.nilable(Float), automatic_tax: T.nilable(SubscriptionScheduleUpdateParams::Phase::AutomaticTax), billing_cycle_anchor: T.nilable(String), billing_thresholds: T.nilable(T.any(String, SubscriptionScheduleUpdateParams::Phase::BillingThresholds)), collection_method: T.nilable(String), currency: T.nilable(String), default_payment_method: T.nilable(String), default_tax_rates: T.nilable(T.any(String, T::Array[String])), description: T.nilable(String), discounts: T.nilable(T.any(String, T::Array[SubscriptionScheduleUpdateParams::Phase::Discount])), duration: T.nilable(SubscriptionScheduleUpdateParams::Phase::Duration), effective_at: T.nilable(String), end_date: T.nilable(T.any(Integer, String)), invoice_settings: T.nilable(SubscriptionScheduleUpdateParams::Phase::InvoiceSettings), items: T::Array[SubscriptionScheduleUpdateParams::Phase::Item], metadata: T.nilable(T::Hash[String, String]), on_behalf_of: T.nilable(String), pause_collection: T.nilable(SubscriptionScheduleUpdateParams::Phase::PauseCollection), proration_behavior: T.nilable(String), start_date: T.nilable(T.any(Integer, String)), transfer_data: T.nilable(SubscriptionScheduleUpdateParams::Phase::TransferData), trial: T.nilable(T::Boolean), trial_continuation: T.nilable(String), trial_end: T.nilable(T.any(Integer, String)), trial_settings: T.nilable(SubscriptionScheduleUpdateParams::Phase::TrialSettings)).void
       }
      def initialize(
        add_invoice_items: nil,
        application_fee_percent: nil,
        automatic_tax: nil,
        billing_cycle_anchor: nil,
        billing_thresholds: nil,
        collection_method: nil,
        currency: nil,
        default_payment_method: nil,
        default_tax_rates: nil,
        description: nil,
        discounts: nil,
        duration: nil,
        effective_at: nil,
        end_date: nil,
        invoice_settings: nil,
        items: nil,
        metadata: nil,
        on_behalf_of: nil,
        pause_collection: nil,
        proration_behavior: nil,
        start_date: nil,
        transfer_data: nil,
        trial: nil,
        trial_continuation: nil,
        trial_end: nil,
        trial_settings: nil
      ); end
    end
    class Prebilling < ::Stripe::RequestParams
      # This is used to determine the number of billing cycles to prebill.
      sig { returns(Integer) }
      def iterations; end
      sig { params(_iterations: Integer).returns(Integer) }
      def iterations=(_iterations); end
      # Whether to cancel or preserve `prebilling` if the subscription is updated during the prebilled period. The default value is `reset`.
      sig { returns(T.nilable(String)) }
      def update_behavior; end
      sig { params(_update_behavior: T.nilable(String)).returns(T.nilable(String)) }
      def update_behavior=(_update_behavior); end
      sig { params(iterations: Integer, update_behavior: T.nilable(String)).void }
      def initialize(iterations: nil, update_behavior: nil); end
    end
    # Configures when the subscription schedule generates prorations for phase transitions. Possible values are `prorate_on_next_phase` or `prorate_up_front` with the default being `prorate_on_next_phase`. `prorate_on_next_phase` will apply phase changes and generate prorations at transition time. `prorate_up_front` will bill for all phases within the current billing cycle up front.
    sig { returns(T.nilable(String)) }
    def billing_behavior; end
    sig { params(_billing_behavior: T.nilable(String)).returns(T.nilable(String)) }
    def billing_behavior=(_billing_behavior); end
    # Sets the billing schedules for the subscription schedule.
    sig {
      returns(T.nilable(T.any(String, T::Array[SubscriptionScheduleUpdateParams::BillingSchedule])))
     }
    def billing_schedules; end
    sig {
      params(_billing_schedules: T.nilable(T.any(String, T::Array[SubscriptionScheduleUpdateParams::BillingSchedule]))).returns(T.nilable(T.any(String, T::Array[SubscriptionScheduleUpdateParams::BillingSchedule])))
     }
    def billing_schedules=(_billing_schedules); end
    # Object representing the subscription schedule's default settings.
    sig { returns(T.nilable(SubscriptionScheduleUpdateParams::DefaultSettings)) }
    def default_settings; end
    sig {
      params(_default_settings: T.nilable(SubscriptionScheduleUpdateParams::DefaultSettings)).returns(T.nilable(SubscriptionScheduleUpdateParams::DefaultSettings))
     }
    def default_settings=(_default_settings); end
    # Behavior of the subscription schedule and underlying subscription when it ends. Possible values are `release` or `cancel` with the default being `release`. `release` will end the subscription schedule and keep the underlying subscription running. `cancel` will end the subscription schedule and cancel the underlying subscription.
    sig { returns(T.nilable(String)) }
    def end_behavior; end
    sig { params(_end_behavior: T.nilable(String)).returns(T.nilable(String)) }
    def end_behavior=(_end_behavior); end
    # Specifies which fields in the response should be expanded.
    sig { returns(T.nilable(T::Array[String])) }
    def expand; end
    sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
    def expand=(_expand); end
    # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
    def metadata; end
    sig {
      params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
     }
    def metadata=(_metadata); end
    # List representing phases of the subscription schedule. Each phase can be customized to have different durations, plans, and coupons. If there are multiple phases, the `end_date` of one phase will always equal the `start_date` of the next phase. Note that past phases can be omitted.
    sig { returns(T.nilable(T::Array[SubscriptionScheduleUpdateParams::Phase])) }
    def phases; end
    sig {
      params(_phases: T.nilable(T::Array[SubscriptionScheduleUpdateParams::Phase])).returns(T.nilable(T::Array[SubscriptionScheduleUpdateParams::Phase]))
     }
    def phases=(_phases); end
    # If specified, the invoicing for the given billing cycle iterations will be processed now.
    sig { returns(T.nilable(SubscriptionScheduleUpdateParams::Prebilling)) }
    def prebilling; end
    sig {
      params(_prebilling: T.nilable(SubscriptionScheduleUpdateParams::Prebilling)).returns(T.nilable(SubscriptionScheduleUpdateParams::Prebilling))
     }
    def prebilling=(_prebilling); end
    # If the update changes the billing configuration (item price, quantity, etc.) of the current phase, indicates how prorations from this change should be handled. The default value is `create_prorations`.
    sig { returns(T.nilable(String)) }
    def proration_behavior; end
    sig { params(_proration_behavior: T.nilable(String)).returns(T.nilable(String)) }
    def proration_behavior=(_proration_behavior); end
    sig {
      params(billing_behavior: T.nilable(String), billing_schedules: T.nilable(T.any(String, T::Array[SubscriptionScheduleUpdateParams::BillingSchedule])), default_settings: T.nilable(SubscriptionScheduleUpdateParams::DefaultSettings), end_behavior: T.nilable(String), expand: T.nilable(T::Array[String]), metadata: T.nilable(T.any(String, T::Hash[String, String])), phases: T.nilable(T::Array[SubscriptionScheduleUpdateParams::Phase]), prebilling: T.nilable(SubscriptionScheduleUpdateParams::Prebilling), proration_behavior: T.nilable(String)).void
     }
    def initialize(
      billing_behavior: nil,
      billing_schedules: nil,
      default_settings: nil,
      end_behavior: nil,
      expand: nil,
      metadata: nil,
      phases: nil,
      prebilling: nil,
      proration_behavior: nil
    ); end
  end
end