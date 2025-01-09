# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class SubscriptionScheduleService < StripeService
    class ListParams < Stripe::RequestParams
      class CanceledAt < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        sig { returns(Integer) }
        attr_accessor :gt
        # Minimum value to filter by (inclusive)
        sig { returns(Integer) }
        attr_accessor :gte
        # Maximum value to filter by (exclusive)
        sig { returns(Integer) }
        attr_accessor :lt
        # Maximum value to filter by (inclusive)
        sig { returns(Integer) }
        attr_accessor :lte
        sig { params(gt: Integer, gte: Integer, lt: Integer, lte: Integer).void }
        def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
      end
      class CompletedAt < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        sig { returns(Integer) }
        attr_accessor :gt
        # Minimum value to filter by (inclusive)
        sig { returns(Integer) }
        attr_accessor :gte
        # Maximum value to filter by (exclusive)
        sig { returns(Integer) }
        attr_accessor :lt
        # Maximum value to filter by (inclusive)
        sig { returns(Integer) }
        attr_accessor :lte
        sig { params(gt: Integer, gte: Integer, lt: Integer, lte: Integer).void }
        def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
      end
      class Created < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        sig { returns(Integer) }
        attr_accessor :gt
        # Minimum value to filter by (inclusive)
        sig { returns(Integer) }
        attr_accessor :gte
        # Maximum value to filter by (exclusive)
        sig { returns(Integer) }
        attr_accessor :lt
        # Maximum value to filter by (inclusive)
        sig { returns(Integer) }
        attr_accessor :lte
        sig { params(gt: Integer, gte: Integer, lt: Integer, lte: Integer).void }
        def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
      end
      class ReleasedAt < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        sig { returns(Integer) }
        attr_accessor :gt
        # Minimum value to filter by (inclusive)
        sig { returns(Integer) }
        attr_accessor :gte
        # Maximum value to filter by (exclusive)
        sig { returns(Integer) }
        attr_accessor :lt
        # Maximum value to filter by (inclusive)
        sig { returns(Integer) }
        attr_accessor :lte
        sig { params(gt: Integer, gte: Integer, lt: Integer, lte: Integer).void }
        def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
      end
      # Only return subscription schedules that were created canceled the given date interval.
      sig { returns(T.any(::Stripe::SubscriptionScheduleService::ListParams::CanceledAt, Integer)) }
      attr_accessor :canceled_at
      # Only return subscription schedules that completed during the given date interval.
      sig {
        returns(T.any(::Stripe::SubscriptionScheduleService::ListParams::CompletedAt, Integer))
       }
      attr_accessor :completed_at
      # Only return subscription schedules that were created during the given date interval.
      sig { returns(T.any(::Stripe::SubscriptionScheduleService::ListParams::Created, Integer)) }
      attr_accessor :created
      # Only return subscription schedules for the given customer.
      sig { returns(String) }
      attr_accessor :customer
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(String) }
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(Integer) }
      attr_accessor :limit
      # Only return subscription schedules that were released during the given date interval.
      sig { returns(T.any(::Stripe::SubscriptionScheduleService::ListParams::ReleasedAt, Integer)) }
      attr_accessor :released_at
      # Only return subscription schedules that have not started yet.
      sig { returns(T::Boolean) }
      attr_accessor :scheduled
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(String) }
      attr_accessor :starting_after
      sig {
        params(canceled_at: T.any(::Stripe::SubscriptionScheduleService::ListParams::CanceledAt, Integer), completed_at: T.any(::Stripe::SubscriptionScheduleService::ListParams::CompletedAt, Integer), created: T.any(::Stripe::SubscriptionScheduleService::ListParams::Created, Integer), customer: String, ending_before: String, expand: T::Array[String], limit: Integer, released_at: T.any(::Stripe::SubscriptionScheduleService::ListParams::ReleasedAt, Integer), scheduled: T::Boolean, starting_after: String).void
       }
      def initialize(
        canceled_at: nil,
        completed_at: nil,
        created: nil,
        customer: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        released_at: nil,
        scheduled: nil,
        starting_after: nil
      ); end
    end
    class CreateParams < Stripe::RequestParams
      class DefaultSettings < Stripe::RequestParams
        class AutomaticTax < Stripe::RequestParams
          class Liability < Stripe::RequestParams
            # The connected account being referenced when `type` is `account`.
            sig { returns(String) }
            attr_accessor :account
            # Type of the account referenced in the request.
            sig { returns(String) }
            attr_accessor :type
            sig { params(account: String, type: String).void }
            def initialize(account: nil, type: nil); end
          end
          # Enabled automatic tax calculation which will automatically compute tax rates on all invoices generated by the subscription.
          sig { returns(T::Boolean) }
          attr_accessor :enabled
          # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
          sig {
            returns(::Stripe::SubscriptionScheduleService::CreateParams::DefaultSettings::AutomaticTax::Liability)
           }
          attr_accessor :liability
          sig {
            params(enabled: T::Boolean, liability: ::Stripe::SubscriptionScheduleService::CreateParams::DefaultSettings::AutomaticTax::Liability).void
           }
          def initialize(enabled: nil, liability: nil); end
        end
        class BillingThresholds < Stripe::RequestParams
          # Monetary threshold that triggers the subscription to advance to a new billing period
          sig { returns(Integer) }
          attr_accessor :amount_gte
          # Indicates if the `billing_cycle_anchor` should be reset when a threshold is reached. If true, `billing_cycle_anchor` will be updated to the date/time the threshold was last reached; otherwise, the value will remain unchanged.
          sig { returns(T::Boolean) }
          attr_accessor :reset_billing_cycle_anchor
          sig { params(amount_gte: Integer, reset_billing_cycle_anchor: T::Boolean).void }
          def initialize(amount_gte: nil, reset_billing_cycle_anchor: nil); end
        end
        class InvoiceSettings < Stripe::RequestParams
          class Issuer < Stripe::RequestParams
            # The connected account being referenced when `type` is `account`.
            sig { returns(String) }
            attr_accessor :account
            # Type of the account referenced in the request.
            sig { returns(String) }
            attr_accessor :type
            sig { params(account: String, type: String).void }
            def initialize(account: nil, type: nil); end
          end
          # The account tax IDs associated with the subscription schedule. Will be set on invoices generated by the subscription schedule.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :account_tax_ids
          # Number of days within which a customer must pay invoices generated by this subscription schedule. This value will be `null` for subscription schedules where `collection_method=charge_automatically`.
          sig { returns(Integer) }
          attr_accessor :days_until_due
          # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
          sig {
            returns(::Stripe::SubscriptionScheduleService::CreateParams::DefaultSettings::InvoiceSettings::Issuer)
           }
          attr_accessor :issuer
          sig {
            params(account_tax_ids: T.nilable(T::Array[String]), days_until_due: Integer, issuer: ::Stripe::SubscriptionScheduleService::CreateParams::DefaultSettings::InvoiceSettings::Issuer).void
           }
          def initialize(account_tax_ids: nil, days_until_due: nil, issuer: nil); end
        end
        class TransferData < Stripe::RequestParams
          # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the destination account. By default, the entire amount is transferred to the destination.
          sig { returns(Float) }
          attr_accessor :amount_percent
          # ID of an existing, connected Stripe account.
          sig { returns(String) }
          attr_accessor :destination
          sig { params(amount_percent: Float, destination: String).void }
          def initialize(amount_percent: nil, destination: nil); end
        end
        # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. The request must be made by a platform account on a connected account in order to set an application fee percentage. For more information, see the application fees [documentation](https://stripe.com/docs/connect/subscriptions#collecting-fees-on-subscriptions).
        sig { returns(Float) }
        attr_accessor :application_fee_percent
        # Default settings for automatic tax computation.
        sig {
          returns(::Stripe::SubscriptionScheduleService::CreateParams::DefaultSettings::AutomaticTax)
         }
        attr_accessor :automatic_tax
        # Can be set to `phase_start` to set the anchor to the start of the phase or `automatic` to automatically change it if needed. Cannot be set to `phase_start` if this phase specifies a trial. For more information, see the billing cycle [documentation](https://stripe.com/docs/billing/subscriptions/billing-cycle).
        sig { returns(String) }
        attr_accessor :billing_cycle_anchor
        # Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period. Pass an empty string to remove previously-defined thresholds.
        sig {
          returns(T.nilable(::Stripe::SubscriptionScheduleService::CreateParams::DefaultSettings::BillingThresholds))
         }
        attr_accessor :billing_thresholds
        # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay the underlying subscription at the end of each billing cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`. Defaults to `charge_automatically` on creation.
        sig { returns(String) }
        attr_accessor :collection_method
        # ID of the default payment method for the subscription schedule. It must belong to the customer associated with the subscription schedule. If not set, invoices will use the default payment method in the customer's invoice settings.
        sig { returns(String) }
        attr_accessor :default_payment_method
        # Subscription description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
        sig { returns(T.nilable(String)) }
        attr_accessor :description
        # All invoices will be billed using the specified settings.
        sig {
          returns(::Stripe::SubscriptionScheduleService::CreateParams::DefaultSettings::InvoiceSettings)
         }
        attr_accessor :invoice_settings
        # The account on behalf of which to charge, for each of the associated subscription's invoices.
        sig { returns(T.nilable(String)) }
        attr_accessor :on_behalf_of
        # The data with which to automatically create a Transfer for each of the associated subscription's invoices.
        sig {
          returns(T.nilable(::Stripe::SubscriptionScheduleService::CreateParams::DefaultSettings::TransferData))
         }
        attr_accessor :transfer_data
        sig {
          params(application_fee_percent: Float, automatic_tax: ::Stripe::SubscriptionScheduleService::CreateParams::DefaultSettings::AutomaticTax, billing_cycle_anchor: String, billing_thresholds: T.nilable(::Stripe::SubscriptionScheduleService::CreateParams::DefaultSettings::BillingThresholds), collection_method: String, default_payment_method: String, description: T.nilable(String), invoice_settings: ::Stripe::SubscriptionScheduleService::CreateParams::DefaultSettings::InvoiceSettings, on_behalf_of: T.nilable(String), transfer_data: T.nilable(::Stripe::SubscriptionScheduleService::CreateParams::DefaultSettings::TransferData)).void
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
          transfer_data: nil
        ); end
      end
      class Phase < Stripe::RequestParams
        class AddInvoiceItem < Stripe::RequestParams
          class Discount < Stripe::RequestParams
            class DiscountEnd < Stripe::RequestParams
              class Duration < Stripe::RequestParams
                # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
                sig { returns(String) }
                attr_accessor :interval
                # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
                sig { returns(Integer) }
                attr_accessor :interval_count
                sig { params(interval: String, interval_count: Integer).void }
                def initialize(interval: nil, interval_count: nil); end
              end
              # Time span for the redeemed discount.
              sig {
                returns(::Stripe::SubscriptionScheduleService::CreateParams::Phase::AddInvoiceItem::Discount::DiscountEnd::Duration)
               }
              attr_accessor :duration
              # A precise Unix timestamp for the discount to end. Must be in the future.
              sig { returns(Integer) }
              attr_accessor :timestamp
              # The type of calculation made to determine when the discount ends.
              sig { returns(String) }
              attr_accessor :type
              sig {
                params(duration: ::Stripe::SubscriptionScheduleService::CreateParams::Phase::AddInvoiceItem::Discount::DiscountEnd::Duration, timestamp: Integer, type: String).void
               }
              def initialize(duration: nil, timestamp: nil, type: nil); end
            end
            # ID of the coupon to create a new discount for.
            sig { returns(String) }
            attr_accessor :coupon
            # ID of an existing discount on the object (or one of its ancestors) to reuse.
            sig { returns(String) }
            attr_accessor :discount
            # Details to determine how long the discount should be applied for.
            sig {
              returns(::Stripe::SubscriptionScheduleService::CreateParams::Phase::AddInvoiceItem::Discount::DiscountEnd)
             }
            attr_accessor :discount_end
            # ID of the promotion code to create a new discount for.
            sig { returns(String) }
            attr_accessor :promotion_code
            sig {
              params(coupon: String, discount: String, discount_end: ::Stripe::SubscriptionScheduleService::CreateParams::Phase::AddInvoiceItem::Discount::DiscountEnd, promotion_code: String).void
             }
            def initialize(coupon: nil, discount: nil, discount_end: nil, promotion_code: nil); end
          end
          class PriceData < Stripe::RequestParams
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(String) }
            attr_accessor :currency
            # The ID of the product that this price will belong to.
            sig { returns(String) }
            attr_accessor :product
            # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
            sig { returns(String) }
            attr_accessor :tax_behavior
            # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge or a negative integer representing the amount to credit to the customer.
            sig { returns(Integer) }
            attr_accessor :unit_amount
            # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
            sig { returns(String) }
            attr_accessor :unit_amount_decimal
            sig {
              params(currency: String, product: String, tax_behavior: String, unit_amount: Integer, unit_amount_decimal: String).void
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
            returns(T::Array[::Stripe::SubscriptionScheduleService::CreateParams::Phase::AddInvoiceItem::Discount])
           }
          attr_accessor :discounts
          # The ID of the price object. One of `price` or `price_data` is required.
          sig { returns(String) }
          attr_accessor :price
          # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline. One of `price` or `price_data` is required.
          sig {
            returns(::Stripe::SubscriptionScheduleService::CreateParams::Phase::AddInvoiceItem::PriceData)
           }
          attr_accessor :price_data
          # Quantity for this item. Defaults to 1.
          sig { returns(Integer) }
          attr_accessor :quantity
          # The tax rates which apply to the item. When set, the `default_tax_rates` do not apply to this item.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :tax_rates
          sig {
            params(discounts: T::Array[::Stripe::SubscriptionScheduleService::CreateParams::Phase::AddInvoiceItem::Discount], price: String, price_data: ::Stripe::SubscriptionScheduleService::CreateParams::Phase::AddInvoiceItem::PriceData, quantity: Integer, tax_rates: T.nilable(T::Array[String])).void
           }
          def initialize(
            discounts: nil,
            price: nil,
            price_data: nil,
            quantity: nil,
            tax_rates: nil
          ); end
        end
        class AutomaticTax < Stripe::RequestParams
          class Liability < Stripe::RequestParams
            # The connected account being referenced when `type` is `account`.
            sig { returns(String) }
            attr_accessor :account
            # Type of the account referenced in the request.
            sig { returns(String) }
            attr_accessor :type
            sig { params(account: String, type: String).void }
            def initialize(account: nil, type: nil); end
          end
          # Enabled automatic tax calculation which will automatically compute tax rates on all invoices generated by the subscription.
          sig { returns(T::Boolean) }
          attr_accessor :enabled
          # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
          sig {
            returns(::Stripe::SubscriptionScheduleService::CreateParams::Phase::AutomaticTax::Liability)
           }
          attr_accessor :liability
          sig {
            params(enabled: T::Boolean, liability: ::Stripe::SubscriptionScheduleService::CreateParams::Phase::AutomaticTax::Liability).void
           }
          def initialize(enabled: nil, liability: nil); end
        end
        class BillingThresholds < Stripe::RequestParams
          # Monetary threshold that triggers the subscription to advance to a new billing period
          sig { returns(Integer) }
          attr_accessor :amount_gte
          # Indicates if the `billing_cycle_anchor` should be reset when a threshold is reached. If true, `billing_cycle_anchor` will be updated to the date/time the threshold was last reached; otherwise, the value will remain unchanged.
          sig { returns(T::Boolean) }
          attr_accessor :reset_billing_cycle_anchor
          sig { params(amount_gte: Integer, reset_billing_cycle_anchor: T::Boolean).void }
          def initialize(amount_gte: nil, reset_billing_cycle_anchor: nil); end
        end
        class Discount < Stripe::RequestParams
          class DiscountEnd < Stripe::RequestParams
            class Duration < Stripe::RequestParams
              # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
              sig { returns(String) }
              attr_accessor :interval
              # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
              sig { returns(Integer) }
              attr_accessor :interval_count
              sig { params(interval: String, interval_count: Integer).void }
              def initialize(interval: nil, interval_count: nil); end
            end
            # Time span for the redeemed discount.
            sig {
              returns(::Stripe::SubscriptionScheduleService::CreateParams::Phase::Discount::DiscountEnd::Duration)
             }
            attr_accessor :duration
            # A precise Unix timestamp for the discount to end. Must be in the future.
            sig { returns(Integer) }
            attr_accessor :timestamp
            # The type of calculation made to determine when the discount ends.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(duration: ::Stripe::SubscriptionScheduleService::CreateParams::Phase::Discount::DiscountEnd::Duration, timestamp: Integer, type: String).void
             }
            def initialize(duration: nil, timestamp: nil, type: nil); end
          end
          # ID of the coupon to create a new discount for.
          sig { returns(String) }
          attr_accessor :coupon
          # ID of an existing discount on the object (or one of its ancestors) to reuse.
          sig { returns(String) }
          attr_accessor :discount
          # Details to determine how long the discount should be applied for.
          sig {
            returns(::Stripe::SubscriptionScheduleService::CreateParams::Phase::Discount::DiscountEnd)
           }
          attr_accessor :discount_end
          # ID of the promotion code to create a new discount for.
          sig { returns(String) }
          attr_accessor :promotion_code
          sig {
            params(coupon: String, discount: String, discount_end: ::Stripe::SubscriptionScheduleService::CreateParams::Phase::Discount::DiscountEnd, promotion_code: String).void
           }
          def initialize(coupon: nil, discount: nil, discount_end: nil, promotion_code: nil); end
        end
        class InvoiceSettings < Stripe::RequestParams
          class Issuer < Stripe::RequestParams
            # The connected account being referenced when `type` is `account`.
            sig { returns(String) }
            attr_accessor :account
            # Type of the account referenced in the request.
            sig { returns(String) }
            attr_accessor :type
            sig { params(account: String, type: String).void }
            def initialize(account: nil, type: nil); end
          end
          # The account tax IDs associated with this phase of the subscription schedule. Will be set on invoices generated by this phase of the subscription schedule.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :account_tax_ids
          # Number of days within which a customer must pay invoices generated by this subscription schedule. This value will be `null` for subscription schedules where `billing=charge_automatically`.
          sig { returns(Integer) }
          attr_accessor :days_until_due
          # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
          sig {
            returns(::Stripe::SubscriptionScheduleService::CreateParams::Phase::InvoiceSettings::Issuer)
           }
          attr_accessor :issuer
          sig {
            params(account_tax_ids: T.nilable(T::Array[String]), days_until_due: Integer, issuer: ::Stripe::SubscriptionScheduleService::CreateParams::Phase::InvoiceSettings::Issuer).void
           }
          def initialize(account_tax_ids: nil, days_until_due: nil, issuer: nil); end
        end
        class Item < Stripe::RequestParams
          class BillingThresholds < Stripe::RequestParams
            # Number of units that meets the billing threshold to advance the subscription to a new billing period (e.g., it takes 10 $5 units to meet a $50 [monetary threshold](https://stripe.com/docs/api/subscriptions/update#update_subscription-billing_thresholds-amount_gte))
            sig { returns(Integer) }
            attr_accessor :usage_gte
            sig { params(usage_gte: Integer).void }
            def initialize(usage_gte: nil); end
          end
          class Discount < Stripe::RequestParams
            class DiscountEnd < Stripe::RequestParams
              class Duration < Stripe::RequestParams
                # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
                sig { returns(String) }
                attr_accessor :interval
                # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
                sig { returns(Integer) }
                attr_accessor :interval_count
                sig { params(interval: String, interval_count: Integer).void }
                def initialize(interval: nil, interval_count: nil); end
              end
              # Time span for the redeemed discount.
              sig {
                returns(::Stripe::SubscriptionScheduleService::CreateParams::Phase::Item::Discount::DiscountEnd::Duration)
               }
              attr_accessor :duration
              # A precise Unix timestamp for the discount to end. Must be in the future.
              sig { returns(Integer) }
              attr_accessor :timestamp
              # The type of calculation made to determine when the discount ends.
              sig { returns(String) }
              attr_accessor :type
              sig {
                params(duration: ::Stripe::SubscriptionScheduleService::CreateParams::Phase::Item::Discount::DiscountEnd::Duration, timestamp: Integer, type: String).void
               }
              def initialize(duration: nil, timestamp: nil, type: nil); end
            end
            # ID of the coupon to create a new discount for.
            sig { returns(String) }
            attr_accessor :coupon
            # ID of an existing discount on the object (or one of its ancestors) to reuse.
            sig { returns(String) }
            attr_accessor :discount
            # Details to determine how long the discount should be applied for.
            sig {
              returns(::Stripe::SubscriptionScheduleService::CreateParams::Phase::Item::Discount::DiscountEnd)
             }
            attr_accessor :discount_end
            # ID of the promotion code to create a new discount for.
            sig { returns(String) }
            attr_accessor :promotion_code
            sig {
              params(coupon: String, discount: String, discount_end: ::Stripe::SubscriptionScheduleService::CreateParams::Phase::Item::Discount::DiscountEnd, promotion_code: String).void
             }
            def initialize(coupon: nil, discount: nil, discount_end: nil, promotion_code: nil); end
          end
          class PriceData < Stripe::RequestParams
            class Recurring < Stripe::RequestParams
              # Specifies billing frequency. Either `day`, `week`, `month` or `year`.
              sig { returns(String) }
              attr_accessor :interval
              # The number of intervals between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months. Maximum of three years interval allowed (3 years, 36 months, or 156 weeks).
              sig { returns(Integer) }
              attr_accessor :interval_count
              sig { params(interval: String, interval_count: Integer).void }
              def initialize(interval: nil, interval_count: nil); end
            end
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(String) }
            attr_accessor :currency
            # The ID of the product that this price will belong to.
            sig { returns(String) }
            attr_accessor :product
            # The recurring components of a price such as `interval` and `interval_count`.
            sig {
              returns(::Stripe::SubscriptionScheduleService::CreateParams::Phase::Item::PriceData::Recurring)
             }
            attr_accessor :recurring
            # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
            sig { returns(String) }
            attr_accessor :tax_behavior
            # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge.
            sig { returns(Integer) }
            attr_accessor :unit_amount
            # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
            sig { returns(String) }
            attr_accessor :unit_amount_decimal
            sig {
              params(currency: String, product: String, recurring: ::Stripe::SubscriptionScheduleService::CreateParams::Phase::Item::PriceData::Recurring, tax_behavior: String, unit_amount: Integer, unit_amount_decimal: String).void
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
          class Trial < Stripe::RequestParams
            # List of price IDs which, if present on the subscription following a paid trial, constitute opting-in to the paid trial. Currently only supports at most 1 price ID.
            sig { returns(T::Array[String]) }
            attr_accessor :converts_to
            # Determines the type of trial for this item.
            sig { returns(String) }
            attr_accessor :type
            sig { params(converts_to: T::Array[String], type: String).void }
            def initialize(converts_to: nil, type: nil); end
          end
          # Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period. When updating, pass an empty string to remove previously-defined thresholds.
          sig {
            returns(T.nilable(::Stripe::SubscriptionScheduleService::CreateParams::Phase::Item::BillingThresholds))
           }
          attr_accessor :billing_thresholds
          # The coupons to redeem into discounts for the subscription item.
          sig {
            returns(T.nilable(T::Array[::Stripe::SubscriptionScheduleService::CreateParams::Phase::Item::Discount]))
           }
          attr_accessor :discounts
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to a configuration item. Metadata on a configuration item will update the underlying subscription item's `metadata` when the phase is entered, adding new keys and replacing existing keys. Individual keys in the subscription item's `metadata` can be unset by posting an empty value to them in the configuration item's `metadata`. To unset all keys in the subscription item's `metadata`, update the subscription item directly or unset every key individually from the configuration item's `metadata`.
          sig { returns(T::Hash[String, String]) }
          attr_accessor :metadata
          # The plan ID to subscribe to. You may specify the same ID in `plan` and `price`.
          sig { returns(String) }
          attr_accessor :plan
          # The ID of the price object.
          sig { returns(String) }
          attr_accessor :price
          # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline.
          sig {
            returns(::Stripe::SubscriptionScheduleService::CreateParams::Phase::Item::PriceData)
           }
          attr_accessor :price_data
          # Quantity for the given price. Can be set only if the price's `usage_type` is `licensed` and not `metered`.
          sig { returns(Integer) }
          attr_accessor :quantity
          # A list of [Tax Rate](https://stripe.com/docs/api/tax_rates) ids. These Tax Rates will override the [`default_tax_rates`](https://stripe.com/docs/api/subscriptions/create#create_subscription-default_tax_rates) on the Subscription. When updating, pass an empty string to remove previously-defined tax rates.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :tax_rates
          # Options that configure the trial on the subscription item.
          sig { returns(::Stripe::SubscriptionScheduleService::CreateParams::Phase::Item::Trial) }
          attr_accessor :trial
          sig {
            params(billing_thresholds: T.nilable(::Stripe::SubscriptionScheduleService::CreateParams::Phase::Item::BillingThresholds), discounts: T.nilable(T::Array[::Stripe::SubscriptionScheduleService::CreateParams::Phase::Item::Discount]), metadata: T::Hash[String, String], plan: String, price: String, price_data: ::Stripe::SubscriptionScheduleService::CreateParams::Phase::Item::PriceData, quantity: Integer, tax_rates: T.nilable(T::Array[String]), trial: ::Stripe::SubscriptionScheduleService::CreateParams::Phase::Item::Trial).void
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
            trial: nil
          ); end
        end
        class PauseCollection < Stripe::RequestParams
          # The payment collection behavior for this subscription while paused. One of `keep_as_draft`, `mark_uncollectible`, or `void`.
          sig { returns(String) }
          attr_accessor :behavior
          sig { params(behavior: String).void }
          def initialize(behavior: nil); end
        end
        class TransferData < Stripe::RequestParams
          # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the destination account. By default, the entire amount is transferred to the destination.
          sig { returns(Float) }
          attr_accessor :amount_percent
          # ID of an existing, connected Stripe account.
          sig { returns(String) }
          attr_accessor :destination
          sig { params(amount_percent: Float, destination: String).void }
          def initialize(amount_percent: nil, destination: nil); end
        end
        class TrialSettings < Stripe::RequestParams
          class EndBehavior < Stripe::RequestParams
            # Configure how an opt-in following a paid trial is billed when using `billing_behavior: prorate_up_front`.
            sig { returns(String) }
            attr_accessor :prorate_up_front
            sig { params(prorate_up_front: String).void }
            def initialize(prorate_up_front: nil); end
          end
          # Defines how the subscription should behave when a trial ends.
          sig {
            returns(::Stripe::SubscriptionScheduleService::CreateParams::Phase::TrialSettings::EndBehavior)
           }
          attr_accessor :end_behavior
          sig {
            params(end_behavior: ::Stripe::SubscriptionScheduleService::CreateParams::Phase::TrialSettings::EndBehavior).void
           }
          def initialize(end_behavior: nil); end
        end
        # A list of prices and quantities that will generate invoice items appended to the next invoice for this phase. You may pass up to 20 items.
        sig {
          returns(T::Array[::Stripe::SubscriptionScheduleService::CreateParams::Phase::AddInvoiceItem])
         }
        attr_accessor :add_invoice_items
        # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. The request must be made by a platform account on a connected account in order to set an application fee percentage. For more information, see the application fees [documentation](https://stripe.com/docs/connect/subscriptions#collecting-fees-on-subscriptions).
        sig { returns(Float) }
        attr_accessor :application_fee_percent
        # Automatic tax settings for this phase.
        sig { returns(::Stripe::SubscriptionScheduleService::CreateParams::Phase::AutomaticTax) }
        attr_accessor :automatic_tax
        # Can be set to `phase_start` to set the anchor to the start of the phase or `automatic` to automatically change it if needed. Cannot be set to `phase_start` if this phase specifies a trial. For more information, see the billing cycle [documentation](https://stripe.com/docs/billing/subscriptions/billing-cycle).
        sig { returns(String) }
        attr_accessor :billing_cycle_anchor
        # Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period. Pass an empty string to remove previously-defined thresholds.
        sig {
          returns(T.nilable(::Stripe::SubscriptionScheduleService::CreateParams::Phase::BillingThresholds))
         }
        attr_accessor :billing_thresholds
        # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay the underlying subscription at the end of each billing cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`. Defaults to `charge_automatically` on creation.
        sig { returns(String) }
        attr_accessor :collection_method
        # The ID of the coupon to apply to this phase of the subscription schedule. This field has been deprecated and will be removed in a future API version. Use `discounts` instead.
        sig { returns(String) }
        attr_accessor :coupon
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(String) }
        attr_accessor :currency
        # ID of the default payment method for the subscription schedule. It must belong to the customer associated with the subscription schedule. If not set, invoices will use the default payment method in the customer's invoice settings.
        sig { returns(String) }
        attr_accessor :default_payment_method
        # A list of [Tax Rate](https://stripe.com/docs/api/tax_rates) ids. These Tax Rates will set the Subscription's [`default_tax_rates`](https://stripe.com/docs/api/subscriptions/create#create_subscription-default_tax_rates), which means they will be the Invoice's [`default_tax_rates`](https://stripe.com/docs/api/invoices/create#create_invoice-default_tax_rates) for any Invoices issued by the Subscription during this Phase.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :default_tax_rates
        # Subscription description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
        sig { returns(T.nilable(String)) }
        attr_accessor :description
        # The coupons to redeem into discounts for the schedule phase. If not specified, inherits the discount from the subscription's customer. Pass an empty string to avoid inheriting any discounts.
        sig {
          returns(T.nilable(T::Array[::Stripe::SubscriptionScheduleService::CreateParams::Phase::Discount]))
         }
        attr_accessor :discounts
        # The date at which this phase of the subscription schedule ends. If set, `iterations` must not be set.
        sig { returns(Integer) }
        attr_accessor :end_date
        # All invoices will be billed using the specified settings.
        sig { returns(::Stripe::SubscriptionScheduleService::CreateParams::Phase::InvoiceSettings) }
        attr_accessor :invoice_settings
        # List of configuration items, each with an attached price, to apply during this phase of the subscription schedule.
        sig { returns(T::Array[::Stripe::SubscriptionScheduleService::CreateParams::Phase::Item]) }
        attr_accessor :items
        # Integer representing the multiplier applied to the price interval. For example, `iterations=2` applied to a price with `interval=month` and `interval_count=3` results in a phase of duration `2 * 3 months = 6 months`. If set, `end_date` must not be set.
        sig { returns(Integer) }
        attr_accessor :iterations
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to a phase. Metadata on a schedule's phase will update the underlying subscription's `metadata` when the phase is entered, adding new keys and replacing existing keys in the subscription's `metadata`. Individual keys in the subscription's `metadata` can be unset by posting an empty value to them in the phase's `metadata`. To unset all keys in the subscription's `metadata`, update the subscription directly or unset every key individually from the phase's `metadata`.
        sig { returns(T::Hash[String, String]) }
        attr_accessor :metadata
        # The account on behalf of which to charge, for each of the associated subscription's invoices.
        sig { returns(String) }
        attr_accessor :on_behalf_of
        # If specified, payment collection for this subscription will be paused. Note that the subscription status will be unchanged and will not be updated to `paused`. Learn more about [pausing collection](https://stripe.com/docs/billing/subscriptions/pause-payment).
        sig { returns(::Stripe::SubscriptionScheduleService::CreateParams::Phase::PauseCollection) }
        attr_accessor :pause_collection
        # Whether the subscription schedule will create [prorations](https://stripe.com/docs/billing/subscriptions/prorations) when transitioning to this phase. The default value is `create_prorations`. This setting controls prorations when a phase is started asynchronously and it is persisted as a field on the phase. It's different from the request-level [proration_behavior](https://stripe.com/docs/api/subscription_schedules/update#update_subscription_schedule-proration_behavior) parameter which controls what happens if the update request affects the billing configuration of the current phase.
        sig { returns(String) }
        attr_accessor :proration_behavior
        # The data with which to automatically create a Transfer for each of the associated subscription's invoices.
        sig { returns(::Stripe::SubscriptionScheduleService::CreateParams::Phase::TransferData) }
        attr_accessor :transfer_data
        # If set to true the entire phase is counted as a trial and the customer will not be charged for any fees.
        sig { returns(T::Boolean) }
        attr_accessor :trial
        # Specify trial behavior when crossing phase boundaries
        sig { returns(String) }
        attr_accessor :trial_continuation
        # Sets the phase to trialing from the start date to this date. Must be before the phase end date, can not be combined with `trial`
        sig { returns(Integer) }
        attr_accessor :trial_end
        # Settings related to subscription trials.
        sig { returns(::Stripe::SubscriptionScheduleService::CreateParams::Phase::TrialSettings) }
        attr_accessor :trial_settings
        sig {
          params(add_invoice_items: T::Array[::Stripe::SubscriptionScheduleService::CreateParams::Phase::AddInvoiceItem], application_fee_percent: Float, automatic_tax: ::Stripe::SubscriptionScheduleService::CreateParams::Phase::AutomaticTax, billing_cycle_anchor: String, billing_thresholds: T.nilable(::Stripe::SubscriptionScheduleService::CreateParams::Phase::BillingThresholds), collection_method: String, coupon: String, currency: String, default_payment_method: String, default_tax_rates: T.nilable(T::Array[String]), description: T.nilable(String), discounts: T.nilable(T::Array[::Stripe::SubscriptionScheduleService::CreateParams::Phase::Discount]), end_date: Integer, invoice_settings: ::Stripe::SubscriptionScheduleService::CreateParams::Phase::InvoiceSettings, items: T::Array[::Stripe::SubscriptionScheduleService::CreateParams::Phase::Item], iterations: Integer, metadata: T::Hash[String, String], on_behalf_of: String, pause_collection: ::Stripe::SubscriptionScheduleService::CreateParams::Phase::PauseCollection, proration_behavior: String, transfer_data: ::Stripe::SubscriptionScheduleService::CreateParams::Phase::TransferData, trial: T::Boolean, trial_continuation: String, trial_end: Integer, trial_settings: ::Stripe::SubscriptionScheduleService::CreateParams::Phase::TrialSettings).void
         }
        def initialize(
          add_invoice_items: nil,
          application_fee_percent: nil,
          automatic_tax: nil,
          billing_cycle_anchor: nil,
          billing_thresholds: nil,
          collection_method: nil,
          coupon: nil,
          currency: nil,
          default_payment_method: nil,
          default_tax_rates: nil,
          description: nil,
          discounts: nil,
          end_date: nil,
          invoice_settings: nil,
          items: nil,
          iterations: nil,
          metadata: nil,
          on_behalf_of: nil,
          pause_collection: nil,
          proration_behavior: nil,
          transfer_data: nil,
          trial: nil,
          trial_continuation: nil,
          trial_end: nil,
          trial_settings: nil
        ); end
      end
      class Prebilling < Stripe::RequestParams
        # This is used to determine the number of billing cycles to prebill.
        sig { returns(Integer) }
        attr_accessor :iterations
        # Whether to cancel or preserve `prebilling` if the subscription is updated during the prebilled period. The default value is `reset`.
        sig { returns(String) }
        attr_accessor :update_behavior
        sig { params(iterations: Integer, update_behavior: String).void }
        def initialize(iterations: nil, update_behavior: nil); end
      end
      # Configures when the subscription schedule generates prorations for phase transitions. Possible values are `prorate_on_next_phase` or `prorate_up_front` with the default being `prorate_on_next_phase`. `prorate_on_next_phase` will apply phase changes and generate prorations at transition time. `prorate_up_front` will bill for all phases within the current billing cycle up front.
      sig { returns(String) }
      attr_accessor :billing_behavior
      # The identifier of the customer to create the subscription schedule for.
      sig { returns(String) }
      attr_accessor :customer
      # Object representing the subscription schedule's default settings.
      sig { returns(::Stripe::SubscriptionScheduleService::CreateParams::DefaultSettings) }
      attr_accessor :default_settings
      # Behavior of the subscription schedule and underlying subscription when it ends. Possible values are `release` or `cancel` with the default being `release`. `release` will end the subscription schedule and keep the underlying subscription running. `cancel` will end the subscription schedule and cancel the underlying subscription.
      sig { returns(String) }
      attr_accessor :end_behavior
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # Migrate an existing subscription to be managed by a subscription schedule. If this parameter is set, a subscription schedule will be created using the subscription's item(s), set to auto-renew using the subscription's interval. When using this parameter, other parameters (such as phase values) cannot be set. To create a subscription schedule with other modifications, we recommend making two separate API calls.
      sig { returns(String) }
      attr_accessor :from_subscription
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_accessor :metadata
      # List representing phases of the subscription schedule. Each phase can be customized to have different durations, plans, and coupons. If there are multiple phases, the `end_date` of one phase will always equal the `start_date` of the next phase.
      sig { returns(T::Array[::Stripe::SubscriptionScheduleService::CreateParams::Phase]) }
      attr_accessor :phases
      # If specified, the invoicing for the given billing cycle iterations will be processed now.
      sig { returns(::Stripe::SubscriptionScheduleService::CreateParams::Prebilling) }
      attr_accessor :prebilling
      # When the subscription schedule starts. We recommend using `now` so that it starts the subscription immediately. You can also use a Unix timestamp to backdate the subscription so that it starts on a past date, or set a future date for the subscription to start on.
      sig { returns(T.any(Integer, String)) }
      attr_accessor :start_date
      sig {
        params(billing_behavior: String, customer: String, default_settings: ::Stripe::SubscriptionScheduleService::CreateParams::DefaultSettings, end_behavior: String, expand: T::Array[String], from_subscription: String, metadata: T.nilable(T::Hash[String, String]), phases: T::Array[::Stripe::SubscriptionScheduleService::CreateParams::Phase], prebilling: ::Stripe::SubscriptionScheduleService::CreateParams::Prebilling, start_date: T.any(Integer, String)).void
       }
      def initialize(
        billing_behavior: nil,
        customer: nil,
        default_settings: nil,
        end_behavior: nil,
        expand: nil,
        from_subscription: nil,
        metadata: nil,
        phases: nil,
        prebilling: nil,
        start_date: nil
      ); end
    end
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      sig { params(expand: T::Array[String]).void }
      def initialize(expand: nil); end
    end
    class UpdateParams < Stripe::RequestParams
      class DefaultSettings < Stripe::RequestParams
        class AutomaticTax < Stripe::RequestParams
          class Liability < Stripe::RequestParams
            # The connected account being referenced when `type` is `account`.
            sig { returns(String) }
            attr_accessor :account
            # Type of the account referenced in the request.
            sig { returns(String) }
            attr_accessor :type
            sig { params(account: String, type: String).void }
            def initialize(account: nil, type: nil); end
          end
          # Enabled automatic tax calculation which will automatically compute tax rates on all invoices generated by the subscription.
          sig { returns(T::Boolean) }
          attr_accessor :enabled
          # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
          sig {
            returns(::Stripe::SubscriptionScheduleService::UpdateParams::DefaultSettings::AutomaticTax::Liability)
           }
          attr_accessor :liability
          sig {
            params(enabled: T::Boolean, liability: ::Stripe::SubscriptionScheduleService::UpdateParams::DefaultSettings::AutomaticTax::Liability).void
           }
          def initialize(enabled: nil, liability: nil); end
        end
        class BillingThresholds < Stripe::RequestParams
          # Monetary threshold that triggers the subscription to advance to a new billing period
          sig { returns(Integer) }
          attr_accessor :amount_gte
          # Indicates if the `billing_cycle_anchor` should be reset when a threshold is reached. If true, `billing_cycle_anchor` will be updated to the date/time the threshold was last reached; otherwise, the value will remain unchanged.
          sig { returns(T::Boolean) }
          attr_accessor :reset_billing_cycle_anchor
          sig { params(amount_gte: Integer, reset_billing_cycle_anchor: T::Boolean).void }
          def initialize(amount_gte: nil, reset_billing_cycle_anchor: nil); end
        end
        class InvoiceSettings < Stripe::RequestParams
          class Issuer < Stripe::RequestParams
            # The connected account being referenced when `type` is `account`.
            sig { returns(String) }
            attr_accessor :account
            # Type of the account referenced in the request.
            sig { returns(String) }
            attr_accessor :type
            sig { params(account: String, type: String).void }
            def initialize(account: nil, type: nil); end
          end
          # The account tax IDs associated with the subscription schedule. Will be set on invoices generated by the subscription schedule.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :account_tax_ids
          # Number of days within which a customer must pay invoices generated by this subscription schedule. This value will be `null` for subscription schedules where `collection_method=charge_automatically`.
          sig { returns(Integer) }
          attr_accessor :days_until_due
          # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
          sig {
            returns(::Stripe::SubscriptionScheduleService::UpdateParams::DefaultSettings::InvoiceSettings::Issuer)
           }
          attr_accessor :issuer
          sig {
            params(account_tax_ids: T.nilable(T::Array[String]), days_until_due: Integer, issuer: ::Stripe::SubscriptionScheduleService::UpdateParams::DefaultSettings::InvoiceSettings::Issuer).void
           }
          def initialize(account_tax_ids: nil, days_until_due: nil, issuer: nil); end
        end
        class TransferData < Stripe::RequestParams
          # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the destination account. By default, the entire amount is transferred to the destination.
          sig { returns(Float) }
          attr_accessor :amount_percent
          # ID of an existing, connected Stripe account.
          sig { returns(String) }
          attr_accessor :destination
          sig { params(amount_percent: Float, destination: String).void }
          def initialize(amount_percent: nil, destination: nil); end
        end
        # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. The request must be made by a platform account on a connected account in order to set an application fee percentage. For more information, see the application fees [documentation](https://stripe.com/docs/connect/subscriptions#collecting-fees-on-subscriptions).
        sig { returns(Float) }
        attr_accessor :application_fee_percent
        # Default settings for automatic tax computation.
        sig {
          returns(::Stripe::SubscriptionScheduleService::UpdateParams::DefaultSettings::AutomaticTax)
         }
        attr_accessor :automatic_tax
        # Can be set to `phase_start` to set the anchor to the start of the phase or `automatic` to automatically change it if needed. Cannot be set to `phase_start` if this phase specifies a trial. For more information, see the billing cycle [documentation](https://stripe.com/docs/billing/subscriptions/billing-cycle).
        sig { returns(String) }
        attr_accessor :billing_cycle_anchor
        # Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period. Pass an empty string to remove previously-defined thresholds.
        sig {
          returns(T.nilable(::Stripe::SubscriptionScheduleService::UpdateParams::DefaultSettings::BillingThresholds))
         }
        attr_accessor :billing_thresholds
        # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay the underlying subscription at the end of each billing cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`. Defaults to `charge_automatically` on creation.
        sig { returns(String) }
        attr_accessor :collection_method
        # ID of the default payment method for the subscription schedule. It must belong to the customer associated with the subscription schedule. If not set, invoices will use the default payment method in the customer's invoice settings.
        sig { returns(String) }
        attr_accessor :default_payment_method
        # Subscription description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
        sig { returns(T.nilable(String)) }
        attr_accessor :description
        # All invoices will be billed using the specified settings.
        sig {
          returns(::Stripe::SubscriptionScheduleService::UpdateParams::DefaultSettings::InvoiceSettings)
         }
        attr_accessor :invoice_settings
        # The account on behalf of which to charge, for each of the associated subscription's invoices.
        sig { returns(T.nilable(String)) }
        attr_accessor :on_behalf_of
        # The data with which to automatically create a Transfer for each of the associated subscription's invoices.
        sig {
          returns(T.nilable(::Stripe::SubscriptionScheduleService::UpdateParams::DefaultSettings::TransferData))
         }
        attr_accessor :transfer_data
        sig {
          params(application_fee_percent: Float, automatic_tax: ::Stripe::SubscriptionScheduleService::UpdateParams::DefaultSettings::AutomaticTax, billing_cycle_anchor: String, billing_thresholds: T.nilable(::Stripe::SubscriptionScheduleService::UpdateParams::DefaultSettings::BillingThresholds), collection_method: String, default_payment_method: String, description: T.nilable(String), invoice_settings: ::Stripe::SubscriptionScheduleService::UpdateParams::DefaultSettings::InvoiceSettings, on_behalf_of: T.nilable(String), transfer_data: T.nilable(::Stripe::SubscriptionScheduleService::UpdateParams::DefaultSettings::TransferData)).void
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
          transfer_data: nil
        ); end
      end
      class Phase < Stripe::RequestParams
        class AddInvoiceItem < Stripe::RequestParams
          class Discount < Stripe::RequestParams
            class DiscountEnd < Stripe::RequestParams
              class Duration < Stripe::RequestParams
                # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
                sig { returns(String) }
                attr_accessor :interval
                # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
                sig { returns(Integer) }
                attr_accessor :interval_count
                sig { params(interval: String, interval_count: Integer).void }
                def initialize(interval: nil, interval_count: nil); end
              end
              # Time span for the redeemed discount.
              sig {
                returns(::Stripe::SubscriptionScheduleService::UpdateParams::Phase::AddInvoiceItem::Discount::DiscountEnd::Duration)
               }
              attr_accessor :duration
              # A precise Unix timestamp for the discount to end. Must be in the future.
              sig { returns(Integer) }
              attr_accessor :timestamp
              # The type of calculation made to determine when the discount ends.
              sig { returns(String) }
              attr_accessor :type
              sig {
                params(duration: ::Stripe::SubscriptionScheduleService::UpdateParams::Phase::AddInvoiceItem::Discount::DiscountEnd::Duration, timestamp: Integer, type: String).void
               }
              def initialize(duration: nil, timestamp: nil, type: nil); end
            end
            # ID of the coupon to create a new discount for.
            sig { returns(String) }
            attr_accessor :coupon
            # ID of an existing discount on the object (or one of its ancestors) to reuse.
            sig { returns(String) }
            attr_accessor :discount
            # Details to determine how long the discount should be applied for.
            sig {
              returns(::Stripe::SubscriptionScheduleService::UpdateParams::Phase::AddInvoiceItem::Discount::DiscountEnd)
             }
            attr_accessor :discount_end
            # ID of the promotion code to create a new discount for.
            sig { returns(String) }
            attr_accessor :promotion_code
            sig {
              params(coupon: String, discount: String, discount_end: ::Stripe::SubscriptionScheduleService::UpdateParams::Phase::AddInvoiceItem::Discount::DiscountEnd, promotion_code: String).void
             }
            def initialize(coupon: nil, discount: nil, discount_end: nil, promotion_code: nil); end
          end
          class PriceData < Stripe::RequestParams
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(String) }
            attr_accessor :currency
            # The ID of the product that this price will belong to.
            sig { returns(String) }
            attr_accessor :product
            # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
            sig { returns(String) }
            attr_accessor :tax_behavior
            # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge or a negative integer representing the amount to credit to the customer.
            sig { returns(Integer) }
            attr_accessor :unit_amount
            # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
            sig { returns(String) }
            attr_accessor :unit_amount_decimal
            sig {
              params(currency: String, product: String, tax_behavior: String, unit_amount: Integer, unit_amount_decimal: String).void
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
            returns(T::Array[::Stripe::SubscriptionScheduleService::UpdateParams::Phase::AddInvoiceItem::Discount])
           }
          attr_accessor :discounts
          # The ID of the price object. One of `price` or `price_data` is required.
          sig { returns(String) }
          attr_accessor :price
          # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline. One of `price` or `price_data` is required.
          sig {
            returns(::Stripe::SubscriptionScheduleService::UpdateParams::Phase::AddInvoiceItem::PriceData)
           }
          attr_accessor :price_data
          # Quantity for this item. Defaults to 1.
          sig { returns(Integer) }
          attr_accessor :quantity
          # The tax rates which apply to the item. When set, the `default_tax_rates` do not apply to this item.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :tax_rates
          sig {
            params(discounts: T::Array[::Stripe::SubscriptionScheduleService::UpdateParams::Phase::AddInvoiceItem::Discount], price: String, price_data: ::Stripe::SubscriptionScheduleService::UpdateParams::Phase::AddInvoiceItem::PriceData, quantity: Integer, tax_rates: T.nilable(T::Array[String])).void
           }
          def initialize(
            discounts: nil,
            price: nil,
            price_data: nil,
            quantity: nil,
            tax_rates: nil
          ); end
        end
        class AutomaticTax < Stripe::RequestParams
          class Liability < Stripe::RequestParams
            # The connected account being referenced when `type` is `account`.
            sig { returns(String) }
            attr_accessor :account
            # Type of the account referenced in the request.
            sig { returns(String) }
            attr_accessor :type
            sig { params(account: String, type: String).void }
            def initialize(account: nil, type: nil); end
          end
          # Enabled automatic tax calculation which will automatically compute tax rates on all invoices generated by the subscription.
          sig { returns(T::Boolean) }
          attr_accessor :enabled
          # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
          sig {
            returns(::Stripe::SubscriptionScheduleService::UpdateParams::Phase::AutomaticTax::Liability)
           }
          attr_accessor :liability
          sig {
            params(enabled: T::Boolean, liability: ::Stripe::SubscriptionScheduleService::UpdateParams::Phase::AutomaticTax::Liability).void
           }
          def initialize(enabled: nil, liability: nil); end
        end
        class BillingThresholds < Stripe::RequestParams
          # Monetary threshold that triggers the subscription to advance to a new billing period
          sig { returns(Integer) }
          attr_accessor :amount_gte
          # Indicates if the `billing_cycle_anchor` should be reset when a threshold is reached. If true, `billing_cycle_anchor` will be updated to the date/time the threshold was last reached; otherwise, the value will remain unchanged.
          sig { returns(T::Boolean) }
          attr_accessor :reset_billing_cycle_anchor
          sig { params(amount_gte: Integer, reset_billing_cycle_anchor: T::Boolean).void }
          def initialize(amount_gte: nil, reset_billing_cycle_anchor: nil); end
        end
        class Discount < Stripe::RequestParams
          class DiscountEnd < Stripe::RequestParams
            class Duration < Stripe::RequestParams
              # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
              sig { returns(String) }
              attr_accessor :interval
              # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
              sig { returns(Integer) }
              attr_accessor :interval_count
              sig { params(interval: String, interval_count: Integer).void }
              def initialize(interval: nil, interval_count: nil); end
            end
            # Time span for the redeemed discount.
            sig {
              returns(::Stripe::SubscriptionScheduleService::UpdateParams::Phase::Discount::DiscountEnd::Duration)
             }
            attr_accessor :duration
            # A precise Unix timestamp for the discount to end. Must be in the future.
            sig { returns(Integer) }
            attr_accessor :timestamp
            # The type of calculation made to determine when the discount ends.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(duration: ::Stripe::SubscriptionScheduleService::UpdateParams::Phase::Discount::DiscountEnd::Duration, timestamp: Integer, type: String).void
             }
            def initialize(duration: nil, timestamp: nil, type: nil); end
          end
          # ID of the coupon to create a new discount for.
          sig { returns(String) }
          attr_accessor :coupon
          # ID of an existing discount on the object (or one of its ancestors) to reuse.
          sig { returns(String) }
          attr_accessor :discount
          # Details to determine how long the discount should be applied for.
          sig {
            returns(::Stripe::SubscriptionScheduleService::UpdateParams::Phase::Discount::DiscountEnd)
           }
          attr_accessor :discount_end
          # ID of the promotion code to create a new discount for.
          sig { returns(String) }
          attr_accessor :promotion_code
          sig {
            params(coupon: String, discount: String, discount_end: ::Stripe::SubscriptionScheduleService::UpdateParams::Phase::Discount::DiscountEnd, promotion_code: String).void
           }
          def initialize(coupon: nil, discount: nil, discount_end: nil, promotion_code: nil); end
        end
        class InvoiceSettings < Stripe::RequestParams
          class Issuer < Stripe::RequestParams
            # The connected account being referenced when `type` is `account`.
            sig { returns(String) }
            attr_accessor :account
            # Type of the account referenced in the request.
            sig { returns(String) }
            attr_accessor :type
            sig { params(account: String, type: String).void }
            def initialize(account: nil, type: nil); end
          end
          # The account tax IDs associated with this phase of the subscription schedule. Will be set on invoices generated by this phase of the subscription schedule.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :account_tax_ids
          # Number of days within which a customer must pay invoices generated by this subscription schedule. This value will be `null` for subscription schedules where `billing=charge_automatically`.
          sig { returns(Integer) }
          attr_accessor :days_until_due
          # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
          sig {
            returns(::Stripe::SubscriptionScheduleService::UpdateParams::Phase::InvoiceSettings::Issuer)
           }
          attr_accessor :issuer
          sig {
            params(account_tax_ids: T.nilable(T::Array[String]), days_until_due: Integer, issuer: ::Stripe::SubscriptionScheduleService::UpdateParams::Phase::InvoiceSettings::Issuer).void
           }
          def initialize(account_tax_ids: nil, days_until_due: nil, issuer: nil); end
        end
        class Item < Stripe::RequestParams
          class BillingThresholds < Stripe::RequestParams
            # Number of units that meets the billing threshold to advance the subscription to a new billing period (e.g., it takes 10 $5 units to meet a $50 [monetary threshold](https://stripe.com/docs/api/subscriptions/update#update_subscription-billing_thresholds-amount_gte))
            sig { returns(Integer) }
            attr_accessor :usage_gte
            sig { params(usage_gte: Integer).void }
            def initialize(usage_gte: nil); end
          end
          class Discount < Stripe::RequestParams
            class DiscountEnd < Stripe::RequestParams
              class Duration < Stripe::RequestParams
                # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
                sig { returns(String) }
                attr_accessor :interval
                # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
                sig { returns(Integer) }
                attr_accessor :interval_count
                sig { params(interval: String, interval_count: Integer).void }
                def initialize(interval: nil, interval_count: nil); end
              end
              # Time span for the redeemed discount.
              sig {
                returns(::Stripe::SubscriptionScheduleService::UpdateParams::Phase::Item::Discount::DiscountEnd::Duration)
               }
              attr_accessor :duration
              # A precise Unix timestamp for the discount to end. Must be in the future.
              sig { returns(Integer) }
              attr_accessor :timestamp
              # The type of calculation made to determine when the discount ends.
              sig { returns(String) }
              attr_accessor :type
              sig {
                params(duration: ::Stripe::SubscriptionScheduleService::UpdateParams::Phase::Item::Discount::DiscountEnd::Duration, timestamp: Integer, type: String).void
               }
              def initialize(duration: nil, timestamp: nil, type: nil); end
            end
            # ID of the coupon to create a new discount for.
            sig { returns(String) }
            attr_accessor :coupon
            # ID of an existing discount on the object (or one of its ancestors) to reuse.
            sig { returns(String) }
            attr_accessor :discount
            # Details to determine how long the discount should be applied for.
            sig {
              returns(::Stripe::SubscriptionScheduleService::UpdateParams::Phase::Item::Discount::DiscountEnd)
             }
            attr_accessor :discount_end
            # ID of the promotion code to create a new discount for.
            sig { returns(String) }
            attr_accessor :promotion_code
            sig {
              params(coupon: String, discount: String, discount_end: ::Stripe::SubscriptionScheduleService::UpdateParams::Phase::Item::Discount::DiscountEnd, promotion_code: String).void
             }
            def initialize(coupon: nil, discount: nil, discount_end: nil, promotion_code: nil); end
          end
          class PriceData < Stripe::RequestParams
            class Recurring < Stripe::RequestParams
              # Specifies billing frequency. Either `day`, `week`, `month` or `year`.
              sig { returns(String) }
              attr_accessor :interval
              # The number of intervals between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months. Maximum of three years interval allowed (3 years, 36 months, or 156 weeks).
              sig { returns(Integer) }
              attr_accessor :interval_count
              sig { params(interval: String, interval_count: Integer).void }
              def initialize(interval: nil, interval_count: nil); end
            end
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(String) }
            attr_accessor :currency
            # The ID of the product that this price will belong to.
            sig { returns(String) }
            attr_accessor :product
            # The recurring components of a price such as `interval` and `interval_count`.
            sig {
              returns(::Stripe::SubscriptionScheduleService::UpdateParams::Phase::Item::PriceData::Recurring)
             }
            attr_accessor :recurring
            # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
            sig { returns(String) }
            attr_accessor :tax_behavior
            # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge.
            sig { returns(Integer) }
            attr_accessor :unit_amount
            # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
            sig { returns(String) }
            attr_accessor :unit_amount_decimal
            sig {
              params(currency: String, product: String, recurring: ::Stripe::SubscriptionScheduleService::UpdateParams::Phase::Item::PriceData::Recurring, tax_behavior: String, unit_amount: Integer, unit_amount_decimal: String).void
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
          class Trial < Stripe::RequestParams
            # List of price IDs which, if present on the subscription following a paid trial, constitute opting-in to the paid trial. Currently only supports at most 1 price ID.
            sig { returns(T::Array[String]) }
            attr_accessor :converts_to
            # Determines the type of trial for this item.
            sig { returns(String) }
            attr_accessor :type
            sig { params(converts_to: T::Array[String], type: String).void }
            def initialize(converts_to: nil, type: nil); end
          end
          # Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period. When updating, pass an empty string to remove previously-defined thresholds.
          sig {
            returns(T.nilable(::Stripe::SubscriptionScheduleService::UpdateParams::Phase::Item::BillingThresholds))
           }
          attr_accessor :billing_thresholds
          # The coupons to redeem into discounts for the subscription item.
          sig {
            returns(T.nilable(T::Array[::Stripe::SubscriptionScheduleService::UpdateParams::Phase::Item::Discount]))
           }
          attr_accessor :discounts
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to a configuration item. Metadata on a configuration item will update the underlying subscription item's `metadata` when the phase is entered, adding new keys and replacing existing keys. Individual keys in the subscription item's `metadata` can be unset by posting an empty value to them in the configuration item's `metadata`. To unset all keys in the subscription item's `metadata`, update the subscription item directly or unset every key individually from the configuration item's `metadata`.
          sig { returns(T::Hash[String, String]) }
          attr_accessor :metadata
          # The plan ID to subscribe to. You may specify the same ID in `plan` and `price`.
          sig { returns(String) }
          attr_accessor :plan
          # The ID of the price object.
          sig { returns(String) }
          attr_accessor :price
          # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline.
          sig {
            returns(::Stripe::SubscriptionScheduleService::UpdateParams::Phase::Item::PriceData)
           }
          attr_accessor :price_data
          # Quantity for the given price. Can be set only if the price's `usage_type` is `licensed` and not `metered`.
          sig { returns(Integer) }
          attr_accessor :quantity
          # A list of [Tax Rate](https://stripe.com/docs/api/tax_rates) ids. These Tax Rates will override the [`default_tax_rates`](https://stripe.com/docs/api/subscriptions/create#create_subscription-default_tax_rates) on the Subscription. When updating, pass an empty string to remove previously-defined tax rates.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :tax_rates
          # Options that configure the trial on the subscription item.
          sig { returns(::Stripe::SubscriptionScheduleService::UpdateParams::Phase::Item::Trial) }
          attr_accessor :trial
          sig {
            params(billing_thresholds: T.nilable(::Stripe::SubscriptionScheduleService::UpdateParams::Phase::Item::BillingThresholds), discounts: T.nilable(T::Array[::Stripe::SubscriptionScheduleService::UpdateParams::Phase::Item::Discount]), metadata: T::Hash[String, String], plan: String, price: String, price_data: ::Stripe::SubscriptionScheduleService::UpdateParams::Phase::Item::PriceData, quantity: Integer, tax_rates: T.nilable(T::Array[String]), trial: ::Stripe::SubscriptionScheduleService::UpdateParams::Phase::Item::Trial).void
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
            trial: nil
          ); end
        end
        class PauseCollection < Stripe::RequestParams
          # The payment collection behavior for this subscription while paused. One of `keep_as_draft`, `mark_uncollectible`, or `void`.
          sig { returns(String) }
          attr_accessor :behavior
          sig { params(behavior: String).void }
          def initialize(behavior: nil); end
        end
        class TransferData < Stripe::RequestParams
          # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the destination account. By default, the entire amount is transferred to the destination.
          sig { returns(Float) }
          attr_accessor :amount_percent
          # ID of an existing, connected Stripe account.
          sig { returns(String) }
          attr_accessor :destination
          sig { params(amount_percent: Float, destination: String).void }
          def initialize(amount_percent: nil, destination: nil); end
        end
        class TrialSettings < Stripe::RequestParams
          class EndBehavior < Stripe::RequestParams
            # Configure how an opt-in following a paid trial is billed when using `billing_behavior: prorate_up_front`.
            sig { returns(String) }
            attr_accessor :prorate_up_front
            sig { params(prorate_up_front: String).void }
            def initialize(prorate_up_front: nil); end
          end
          # Defines how the subscription should behave when a trial ends.
          sig {
            returns(::Stripe::SubscriptionScheduleService::UpdateParams::Phase::TrialSettings::EndBehavior)
           }
          attr_accessor :end_behavior
          sig {
            params(end_behavior: ::Stripe::SubscriptionScheduleService::UpdateParams::Phase::TrialSettings::EndBehavior).void
           }
          def initialize(end_behavior: nil); end
        end
        # A list of prices and quantities that will generate invoice items appended to the next invoice for this phase. You may pass up to 20 items.
        sig {
          returns(T::Array[::Stripe::SubscriptionScheduleService::UpdateParams::Phase::AddInvoiceItem])
         }
        attr_accessor :add_invoice_items
        # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. The request must be made by a platform account on a connected account in order to set an application fee percentage. For more information, see the application fees [documentation](https://stripe.com/docs/connect/subscriptions#collecting-fees-on-subscriptions).
        sig { returns(Float) }
        attr_accessor :application_fee_percent
        # Automatic tax settings for this phase.
        sig { returns(::Stripe::SubscriptionScheduleService::UpdateParams::Phase::AutomaticTax) }
        attr_accessor :automatic_tax
        # Can be set to `phase_start` to set the anchor to the start of the phase or `automatic` to automatically change it if needed. Cannot be set to `phase_start` if this phase specifies a trial. For more information, see the billing cycle [documentation](https://stripe.com/docs/billing/subscriptions/billing-cycle).
        sig { returns(String) }
        attr_accessor :billing_cycle_anchor
        # Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period. Pass an empty string to remove previously-defined thresholds.
        sig {
          returns(T.nilable(::Stripe::SubscriptionScheduleService::UpdateParams::Phase::BillingThresholds))
         }
        attr_accessor :billing_thresholds
        # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay the underlying subscription at the end of each billing cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`. Defaults to `charge_automatically` on creation.
        sig { returns(String) }
        attr_accessor :collection_method
        # The ID of the coupon to apply to this phase of the subscription schedule. This field has been deprecated and will be removed in a future API version. Use `discounts` instead.
        sig { returns(String) }
        attr_accessor :coupon
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(String) }
        attr_accessor :currency
        # ID of the default payment method for the subscription schedule. It must belong to the customer associated with the subscription schedule. If not set, invoices will use the default payment method in the customer's invoice settings.
        sig { returns(String) }
        attr_accessor :default_payment_method
        # A list of [Tax Rate](https://stripe.com/docs/api/tax_rates) ids. These Tax Rates will set the Subscription's [`default_tax_rates`](https://stripe.com/docs/api/subscriptions/create#create_subscription-default_tax_rates), which means they will be the Invoice's [`default_tax_rates`](https://stripe.com/docs/api/invoices/create#create_invoice-default_tax_rates) for any Invoices issued by the Subscription during this Phase.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :default_tax_rates
        # Subscription description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
        sig { returns(T.nilable(String)) }
        attr_accessor :description
        # The coupons to redeem into discounts for the schedule phase. If not specified, inherits the discount from the subscription's customer. Pass an empty string to avoid inheriting any discounts.
        sig {
          returns(T.nilable(T::Array[::Stripe::SubscriptionScheduleService::UpdateParams::Phase::Discount]))
         }
        attr_accessor :discounts
        # The date at which this phase of the subscription schedule ends. If set, `iterations` must not be set.
        sig { returns(T.any(Integer, String)) }
        attr_accessor :end_date
        # All invoices will be billed using the specified settings.
        sig { returns(::Stripe::SubscriptionScheduleService::UpdateParams::Phase::InvoiceSettings) }
        attr_accessor :invoice_settings
        # List of configuration items, each with an attached price, to apply during this phase of the subscription schedule.
        sig { returns(T::Array[::Stripe::SubscriptionScheduleService::UpdateParams::Phase::Item]) }
        attr_accessor :items
        # Integer representing the multiplier applied to the price interval. For example, `iterations=2` applied to a price with `interval=month` and `interval_count=3` results in a phase of duration `2 * 3 months = 6 months`. If set, `end_date` must not be set.
        sig { returns(Integer) }
        attr_accessor :iterations
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to a phase. Metadata on a schedule's phase will update the underlying subscription's `metadata` when the phase is entered, adding new keys and replacing existing keys in the subscription's `metadata`. Individual keys in the subscription's `metadata` can be unset by posting an empty value to them in the phase's `metadata`. To unset all keys in the subscription's `metadata`, update the subscription directly or unset every key individually from the phase's `metadata`.
        sig { returns(T::Hash[String, String]) }
        attr_accessor :metadata
        # The account on behalf of which to charge, for each of the associated subscription's invoices.
        sig { returns(String) }
        attr_accessor :on_behalf_of
        # If specified, payment collection for this subscription will be paused. Note that the subscription status will be unchanged and will not be updated to `paused`. Learn more about [pausing collection](https://stripe.com/docs/billing/subscriptions/pause-payment).
        sig { returns(::Stripe::SubscriptionScheduleService::UpdateParams::Phase::PauseCollection) }
        attr_accessor :pause_collection
        # Whether the subscription schedule will create [prorations](https://stripe.com/docs/billing/subscriptions/prorations) when transitioning to this phase. The default value is `create_prorations`. This setting controls prorations when a phase is started asynchronously and it is persisted as a field on the phase. It's different from the request-level [proration_behavior](https://stripe.com/docs/api/subscription_schedules/update#update_subscription_schedule-proration_behavior) parameter which controls what happens if the update request affects the billing configuration of the current phase.
        sig { returns(String) }
        attr_accessor :proration_behavior
        # The date at which this phase of the subscription schedule starts or `now`. Must be set on the first phase.
        sig { returns(T.any(Integer, String)) }
        attr_accessor :start_date
        # The data with which to automatically create a Transfer for each of the associated subscription's invoices.
        sig { returns(::Stripe::SubscriptionScheduleService::UpdateParams::Phase::TransferData) }
        attr_accessor :transfer_data
        # If set to true the entire phase is counted as a trial and the customer will not be charged for any fees.
        sig { returns(T::Boolean) }
        attr_accessor :trial
        # Specify trial behavior when crossing phase boundaries
        sig { returns(String) }
        attr_accessor :trial_continuation
        # Sets the phase to trialing from the start date to this date. Must be before the phase end date, can not be combined with `trial`
        sig { returns(T.any(Integer, String)) }
        attr_accessor :trial_end
        # Settings related to subscription trials.
        sig { returns(::Stripe::SubscriptionScheduleService::UpdateParams::Phase::TrialSettings) }
        attr_accessor :trial_settings
        sig {
          params(add_invoice_items: T::Array[::Stripe::SubscriptionScheduleService::UpdateParams::Phase::AddInvoiceItem], application_fee_percent: Float, automatic_tax: ::Stripe::SubscriptionScheduleService::UpdateParams::Phase::AutomaticTax, billing_cycle_anchor: String, billing_thresholds: T.nilable(::Stripe::SubscriptionScheduleService::UpdateParams::Phase::BillingThresholds), collection_method: String, coupon: String, currency: String, default_payment_method: String, default_tax_rates: T.nilable(T::Array[String]), description: T.nilable(String), discounts: T.nilable(T::Array[::Stripe::SubscriptionScheduleService::UpdateParams::Phase::Discount]), end_date: T.any(Integer, String), invoice_settings: ::Stripe::SubscriptionScheduleService::UpdateParams::Phase::InvoiceSettings, items: T::Array[::Stripe::SubscriptionScheduleService::UpdateParams::Phase::Item], iterations: Integer, metadata: T::Hash[String, String], on_behalf_of: String, pause_collection: ::Stripe::SubscriptionScheduleService::UpdateParams::Phase::PauseCollection, proration_behavior: String, start_date: T.any(Integer, String), transfer_data: ::Stripe::SubscriptionScheduleService::UpdateParams::Phase::TransferData, trial: T::Boolean, trial_continuation: String, trial_end: T.any(Integer, String), trial_settings: ::Stripe::SubscriptionScheduleService::UpdateParams::Phase::TrialSettings).void
         }
        def initialize(
          add_invoice_items: nil,
          application_fee_percent: nil,
          automatic_tax: nil,
          billing_cycle_anchor: nil,
          billing_thresholds: nil,
          collection_method: nil,
          coupon: nil,
          currency: nil,
          default_payment_method: nil,
          default_tax_rates: nil,
          description: nil,
          discounts: nil,
          end_date: nil,
          invoice_settings: nil,
          items: nil,
          iterations: nil,
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
      class Prebilling < Stripe::RequestParams
        # This is used to determine the number of billing cycles to prebill.
        sig { returns(Integer) }
        attr_accessor :iterations
        # Whether to cancel or preserve `prebilling` if the subscription is updated during the prebilled period. The default value is `reset`.
        sig { returns(String) }
        attr_accessor :update_behavior
        sig { params(iterations: Integer, update_behavior: String).void }
        def initialize(iterations: nil, update_behavior: nil); end
      end
      # Configures when the subscription schedule generates prorations for phase transitions. Possible values are `prorate_on_next_phase` or `prorate_up_front` with the default being `prorate_on_next_phase`. `prorate_on_next_phase` will apply phase changes and generate prorations at transition time. `prorate_up_front` will bill for all phases within the current billing cycle up front.
      sig { returns(String) }
      attr_accessor :billing_behavior
      # Object representing the subscription schedule's default settings.
      sig { returns(::Stripe::SubscriptionScheduleService::UpdateParams::DefaultSettings) }
      attr_accessor :default_settings
      # Behavior of the subscription schedule and underlying subscription when it ends. Possible values are `release` or `cancel` with the default being `release`. `release` will end the subscription schedule and keep the underlying subscription running. `cancel` will end the subscription schedule and cancel the underlying subscription.
      sig { returns(String) }
      attr_accessor :end_behavior
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_accessor :metadata
      # List representing phases of the subscription schedule. Each phase can be customized to have different durations, plans, and coupons. If there are multiple phases, the `end_date` of one phase will always equal the `start_date` of the next phase. Note that past phases can be omitted.
      sig { returns(T::Array[::Stripe::SubscriptionScheduleService::UpdateParams::Phase]) }
      attr_accessor :phases
      # If specified, the invoicing for the given billing cycle iterations will be processed now.
      sig { returns(::Stripe::SubscriptionScheduleService::UpdateParams::Prebilling) }
      attr_accessor :prebilling
      # If the update changes the current phase, indicates whether the changes should be prorated. The default value is `create_prorations`.
      sig { returns(String) }
      attr_accessor :proration_behavior
      sig {
        params(billing_behavior: String, default_settings: ::Stripe::SubscriptionScheduleService::UpdateParams::DefaultSettings, end_behavior: String, expand: T::Array[String], metadata: T.nilable(T::Hash[String, String]), phases: T::Array[::Stripe::SubscriptionScheduleService::UpdateParams::Phase], prebilling: ::Stripe::SubscriptionScheduleService::UpdateParams::Prebilling, proration_behavior: String).void
       }
      def initialize(
        billing_behavior: nil,
        default_settings: nil,
        end_behavior: nil,
        expand: nil,
        metadata: nil,
        phases: nil,
        prebilling: nil,
        proration_behavior: nil
      ); end
    end
    class AmendParams < Stripe::RequestParams
      class Amendment < Stripe::RequestParams
        class AmendmentEnd < Stripe::RequestParams
          class DiscountEnd < Stripe::RequestParams
            # The ID of a specific discount.
            sig { returns(String) }
            attr_accessor :discount
            sig { params(discount: String).void }
            def initialize(discount: nil); end
          end
          class Duration < Stripe::RequestParams
            # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
            sig { returns(String) }
            attr_accessor :interval
            # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
            sig { returns(Integer) }
            attr_accessor :interval_count
            sig { params(interval: String, interval_count: Integer).void }
            def initialize(interval: nil, interval_count: nil); end
          end
          # Use the `end` time of a given discount.
          sig {
            returns(::Stripe::SubscriptionScheduleService::AmendParams::Amendment::AmendmentEnd::DiscountEnd)
           }
          attr_accessor :discount_end
          # Time span for the amendment starting from the `amendment_start`.
          sig {
            returns(::Stripe::SubscriptionScheduleService::AmendParams::Amendment::AmendmentEnd::Duration)
           }
          attr_accessor :duration
          # A precise Unix timestamp for the amendment to end. Must be after the `amendment_start`.
          sig { returns(Integer) }
          attr_accessor :timestamp
          # Select one of three ways to pass the `amendment_end`.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(discount_end: ::Stripe::SubscriptionScheduleService::AmendParams::Amendment::AmendmentEnd::DiscountEnd, duration: ::Stripe::SubscriptionScheduleService::AmendParams::Amendment::AmendmentEnd::Duration, timestamp: Integer, type: String).void
           }
          def initialize(discount_end: nil, duration: nil, timestamp: nil, type: nil); end
        end
        class AmendmentStart < Stripe::RequestParams
          class AmendmentEnd < Stripe::RequestParams
            # The position of the previous amendment in the `amendments` array after which this amendment should begin. Indexes start from 0 and must be less than the index of the current amendment in the array.
            sig { returns(Integer) }
            attr_accessor :index
            sig { params(index: Integer).void }
            def initialize(index: nil); end
          end
          class DiscountEnd < Stripe::RequestParams
            # The ID of a specific discount.
            sig { returns(String) }
            attr_accessor :discount
            sig { params(discount: String).void }
            def initialize(discount: nil); end
          end
          # Details of another amendment in the same array, immediately after which this amendment should begin.
          sig {
            returns(::Stripe::SubscriptionScheduleService::AmendParams::Amendment::AmendmentStart::AmendmentEnd)
           }
          attr_accessor :amendment_end
          # Use the `end` time of a given discount.
          sig {
            returns(::Stripe::SubscriptionScheduleService::AmendParams::Amendment::AmendmentStart::DiscountEnd)
           }
          attr_accessor :discount_end
          # A precise Unix timestamp for the amendment to start.
          sig { returns(Integer) }
          attr_accessor :timestamp
          # Select one of three ways to pass the `amendment_start`.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(amendment_end: ::Stripe::SubscriptionScheduleService::AmendParams::Amendment::AmendmentStart::AmendmentEnd, discount_end: ::Stripe::SubscriptionScheduleService::AmendParams::Amendment::AmendmentStart::DiscountEnd, timestamp: Integer, type: String).void
           }
          def initialize(amendment_end: nil, discount_end: nil, timestamp: nil, type: nil); end
        end
        class DiscountAction < Stripe::RequestParams
          class Add < Stripe::RequestParams
            class DiscountEnd < Stripe::RequestParams
              # The type of calculation made to determine when the discount ends.
              sig { returns(String) }
              attr_accessor :type
              sig { params(type: String).void }
              def initialize(type: nil); end
            end
            # The coupon code to redeem.
            sig { returns(String) }
            attr_accessor :coupon
            # An ID of an existing discount for a coupon that was already redeemed.
            sig { returns(String) }
            attr_accessor :discount
            # Details to determine how long the discount should be applied for.
            sig {
              returns(::Stripe::SubscriptionScheduleService::AmendParams::Amendment::DiscountAction::Add::DiscountEnd)
             }
            attr_accessor :discount_end
            # The index, starting at 0, at which to position the new discount. When not supplied, Stripe defaults to appending the discount to the end of the `discounts` array.
            sig { returns(Integer) }
            attr_accessor :index
            # The promotion code to redeem.
            sig { returns(String) }
            attr_accessor :promotion_code
            sig {
              params(coupon: String, discount: String, discount_end: ::Stripe::SubscriptionScheduleService::AmendParams::Amendment::DiscountAction::Add::DiscountEnd, index: Integer, promotion_code: String).void
             }
            def initialize(
              coupon: nil,
              discount: nil,
              discount_end: nil,
              index: nil,
              promotion_code: nil
            ); end
          end
          class Remove < Stripe::RequestParams
            # The coupon code to remove from the `discounts` array.
            sig { returns(String) }
            attr_accessor :coupon
            # The ID of a discount to remove from the `discounts` array.
            sig { returns(String) }
            attr_accessor :discount
            # The ID of a promotion code to remove from the `discounts` array.
            sig { returns(String) }
            attr_accessor :promotion_code
            sig { params(coupon: String, discount: String, promotion_code: String).void }
            def initialize(coupon: nil, discount: nil, promotion_code: nil); end
          end
          class Set < Stripe::RequestParams
            # The coupon code to replace the `discounts` array with.
            sig { returns(String) }
            attr_accessor :coupon
            # An ID of an existing discount to replace the `discounts` array with.
            sig { returns(String) }
            attr_accessor :discount
            # An ID of an existing promotion code to replace the `discounts` array with.
            sig { returns(String) }
            attr_accessor :promotion_code
            sig { params(coupon: String, discount: String, promotion_code: String).void }
            def initialize(coupon: nil, discount: nil, promotion_code: nil); end
          end
          # Details of the discount to add.
          sig {
            returns(::Stripe::SubscriptionScheduleService::AmendParams::Amendment::DiscountAction::Add)
           }
          attr_accessor :add
          # Details of the discount to remove.
          sig {
            returns(::Stripe::SubscriptionScheduleService::AmendParams::Amendment::DiscountAction::Remove)
           }
          attr_accessor :remove
          # Details of the discount to replace the existing discounts with.
          sig {
            returns(::Stripe::SubscriptionScheduleService::AmendParams::Amendment::DiscountAction::Set)
           }
          attr_accessor :set
          # Determines the type of discount action.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(add: ::Stripe::SubscriptionScheduleService::AmendParams::Amendment::DiscountAction::Add, remove: ::Stripe::SubscriptionScheduleService::AmendParams::Amendment::DiscountAction::Remove, set: ::Stripe::SubscriptionScheduleService::AmendParams::Amendment::DiscountAction::Set, type: String).void
           }
          def initialize(add: nil, remove: nil, set: nil, type: nil); end
        end
        class ItemAction < Stripe::RequestParams
          class Add < Stripe::RequestParams
            class Discount < Stripe::RequestParams
              class DiscountEnd < Stripe::RequestParams
                class Duration < Stripe::RequestParams
                  # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
                  sig { returns(String) }
                  attr_accessor :interval
                  # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
                  sig { returns(Integer) }
                  attr_accessor :interval_count
                  sig { params(interval: String, interval_count: Integer).void }
                  def initialize(interval: nil, interval_count: nil); end
                end
                # Time span for the redeemed discount.
                sig {
                  returns(::Stripe::SubscriptionScheduleService::AmendParams::Amendment::ItemAction::Add::Discount::DiscountEnd::Duration)
                 }
                attr_accessor :duration
                # A precise Unix timestamp for the discount to end. Must be in the future.
                sig { returns(Integer) }
                attr_accessor :timestamp
                # The type of calculation made to determine when the discount ends.
                sig { returns(String) }
                attr_accessor :type
                sig {
                  params(duration: ::Stripe::SubscriptionScheduleService::AmendParams::Amendment::ItemAction::Add::Discount::DiscountEnd::Duration, timestamp: Integer, type: String).void
                 }
                def initialize(duration: nil, timestamp: nil, type: nil); end
              end
              # ID of the coupon to create a new discount for.
              sig { returns(String) }
              attr_accessor :coupon
              # ID of an existing discount on the object (or one of its ancestors) to reuse.
              sig { returns(String) }
              attr_accessor :discount
              # Details to determine how long the discount should be applied for.
              sig {
                returns(::Stripe::SubscriptionScheduleService::AmendParams::Amendment::ItemAction::Add::Discount::DiscountEnd)
               }
              attr_accessor :discount_end
              # ID of the promotion code to create a new discount for.
              sig { returns(String) }
              attr_accessor :promotion_code
              sig {
                params(coupon: String, discount: String, discount_end: ::Stripe::SubscriptionScheduleService::AmendParams::Amendment::ItemAction::Add::Discount::DiscountEnd, promotion_code: String).void
               }
              def initialize(
                coupon: nil,
                discount: nil,
                discount_end: nil,
                promotion_code: nil
              ); end
            end
            class Trial < Stripe::RequestParams
              # List of price IDs which, if present on the subscription following a paid trial, constitute opting-in to the paid trial. Currently only supports at most 1 price ID.
              sig { returns(T::Array[String]) }
              attr_accessor :converts_to
              # Determines the type of trial for this item.
              sig { returns(String) }
              attr_accessor :type
              sig { params(converts_to: T::Array[String], type: String).void }
              def initialize(converts_to: nil, type: nil); end
            end
            # The discounts applied to the item. Subscription item discounts are applied before subscription discounts.
            sig {
              returns(T::Array[::Stripe::SubscriptionScheduleService::AmendParams::Amendment::ItemAction::Add::Discount])
             }
            attr_accessor :discounts
            # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
            sig { returns(T::Hash[String, String]) }
            attr_accessor :metadata
            # The ID of the price object.
            sig { returns(String) }
            attr_accessor :price
            # Quantity for this item.
            sig { returns(Integer) }
            attr_accessor :quantity
            # The tax rates that apply to this subscription item. When set, the `default_tax_rates` on the subscription do not apply to this `subscription_item`.
            sig { returns(T::Array[String]) }
            attr_accessor :tax_rates
            # Options that configure the trial on the subscription item.
            sig {
              returns(::Stripe::SubscriptionScheduleService::AmendParams::Amendment::ItemAction::Add::Trial)
             }
            attr_accessor :trial
            sig {
              params(discounts: T::Array[::Stripe::SubscriptionScheduleService::AmendParams::Amendment::ItemAction::Add::Discount], metadata: T::Hash[String, String], price: String, quantity: Integer, tax_rates: T::Array[String], trial: ::Stripe::SubscriptionScheduleService::AmendParams::Amendment::ItemAction::Add::Trial).void
             }
            def initialize(
              discounts: nil,
              metadata: nil,
              price: nil,
              quantity: nil,
              tax_rates: nil,
              trial: nil
            ); end
          end
          class Remove < Stripe::RequestParams
            # ID of a price to remove.
            sig { returns(String) }
            attr_accessor :price
            sig { params(price: String).void }
            def initialize(price: nil); end
          end
          class Set < Stripe::RequestParams
            class Discount < Stripe::RequestParams
              class DiscountEnd < Stripe::RequestParams
                class Duration < Stripe::RequestParams
                  # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
                  sig { returns(String) }
                  attr_accessor :interval
                  # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
                  sig { returns(Integer) }
                  attr_accessor :interval_count
                  sig { params(interval: String, interval_count: Integer).void }
                  def initialize(interval: nil, interval_count: nil); end
                end
                # Time span for the redeemed discount.
                sig {
                  returns(::Stripe::SubscriptionScheduleService::AmendParams::Amendment::ItemAction::Set::Discount::DiscountEnd::Duration)
                 }
                attr_accessor :duration
                # A precise Unix timestamp for the discount to end. Must be in the future.
                sig { returns(Integer) }
                attr_accessor :timestamp
                # The type of calculation made to determine when the discount ends.
                sig { returns(String) }
                attr_accessor :type
                sig {
                  params(duration: ::Stripe::SubscriptionScheduleService::AmendParams::Amendment::ItemAction::Set::Discount::DiscountEnd::Duration, timestamp: Integer, type: String).void
                 }
                def initialize(duration: nil, timestamp: nil, type: nil); end
              end
              # ID of the coupon to create a new discount for.
              sig { returns(String) }
              attr_accessor :coupon
              # ID of an existing discount on the object (or one of its ancestors) to reuse.
              sig { returns(String) }
              attr_accessor :discount
              # Details to determine how long the discount should be applied for.
              sig {
                returns(::Stripe::SubscriptionScheduleService::AmendParams::Amendment::ItemAction::Set::Discount::DiscountEnd)
               }
              attr_accessor :discount_end
              # ID of the promotion code to create a new discount for.
              sig { returns(String) }
              attr_accessor :promotion_code
              sig {
                params(coupon: String, discount: String, discount_end: ::Stripe::SubscriptionScheduleService::AmendParams::Amendment::ItemAction::Set::Discount::DiscountEnd, promotion_code: String).void
               }
              def initialize(
                coupon: nil,
                discount: nil,
                discount_end: nil,
                promotion_code: nil
              ); end
            end
            class Trial < Stripe::RequestParams
              # List of price IDs which, if present on the subscription following a paid trial, constitute opting-in to the paid trial. Currently only supports at most 1 price ID.
              sig { returns(T::Array[String]) }
              attr_accessor :converts_to
              # Determines the type of trial for this item.
              sig { returns(String) }
              attr_accessor :type
              sig { params(converts_to: T::Array[String], type: String).void }
              def initialize(converts_to: nil, type: nil); end
            end
            # If an item with the `price` already exists, passing this will override the `discounts` array on the subscription item that matches that price. Otherwise, the `items` array is cleared and a single new item is added with the supplied `discounts`.
            sig {
              returns(T::Array[::Stripe::SubscriptionScheduleService::AmendParams::Amendment::ItemAction::Set::Discount])
             }
            attr_accessor :discounts
            # If an item with the `price` already exists, passing this will override the `metadata` on the subscription item that matches that price. Otherwise, the `items` array is cleared and a single new item is added with the supplied `metadata`.
            sig { returns(T::Hash[String, String]) }
            attr_accessor :metadata
            # The ID of the price object.
            sig { returns(String) }
            attr_accessor :price
            # If an item with the `price` already exists, passing this will override the quantity on the subscription item that matches that price. Otherwise, the `items` array is cleared and a single new item is added with the supplied `quantity`.
            sig { returns(Integer) }
            attr_accessor :quantity
            # If an item with the `price` already exists, passing this will override the `tax_rates` array on the subscription item that matches that price. Otherwise, the `items` array is cleared and a single new item is added with the supplied `tax_rates`.
            sig { returns(T::Array[String]) }
            attr_accessor :tax_rates
            # If an item with the `price` already exists, passing this will override the `trial` configuration on the subscription item that matches that price. Otherwise, the `items` array is cleared and a single new item is added with the supplied `trial`.
            sig {
              returns(::Stripe::SubscriptionScheduleService::AmendParams::Amendment::ItemAction::Set::Trial)
             }
            attr_accessor :trial
            sig {
              params(discounts: T::Array[::Stripe::SubscriptionScheduleService::AmendParams::Amendment::ItemAction::Set::Discount], metadata: T::Hash[String, String], price: String, quantity: Integer, tax_rates: T::Array[String], trial: ::Stripe::SubscriptionScheduleService::AmendParams::Amendment::ItemAction::Set::Trial).void
             }
            def initialize(
              discounts: nil,
              metadata: nil,
              price: nil,
              quantity: nil,
              tax_rates: nil,
              trial: nil
            ); end
          end
          # Details of the subscription item to add. If an item with the same `price` exists, it will be replaced by this new item. Otherwise, it adds the new item.
          sig {
            returns(::Stripe::SubscriptionScheduleService::AmendParams::Amendment::ItemAction::Add)
           }
          attr_accessor :add
          # Details of the subscription item to remove.
          sig {
            returns(::Stripe::SubscriptionScheduleService::AmendParams::Amendment::ItemAction::Remove)
           }
          attr_accessor :remove
          # Details of the subscription item to replace the existing items with. If an item with the `set[price]` already exists, the `items` array is not cleared. Instead, all of the other `set` properties that are passed in this request will replace the existing values for the configuration item.
          sig {
            returns(::Stripe::SubscriptionScheduleService::AmendParams::Amendment::ItemAction::Set)
           }
          attr_accessor :set
          # Determines the type of item action.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(add: ::Stripe::SubscriptionScheduleService::AmendParams::Amendment::ItemAction::Add, remove: ::Stripe::SubscriptionScheduleService::AmendParams::Amendment::ItemAction::Remove, set: ::Stripe::SubscriptionScheduleService::AmendParams::Amendment::ItemAction::Set, type: String).void
           }
          def initialize(add: nil, remove: nil, set: nil, type: nil); end
        end
        class MetadataAction < Stripe::RequestParams
          # Key-value pairs to add to schedule phase metadata. These values will merge with existing schedule phase metadata.
          sig { returns(T::Hash[String, String]) }
          attr_accessor :add
          # Keys to remove from schedule phase metadata.
          sig { returns(T::Array[String]) }
          attr_accessor :remove
          # Key-value pairs to set as schedule phase metadata. Existing schedule phase metadata will be overwritten.
          sig { returns(T.nilable(T::Hash[String, String])) }
          attr_accessor :set
          # Select one of three ways to update phase-level `metadata` on subscription schedules.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(add: T::Hash[String, String], remove: T::Array[String], set: T.nilable(T::Hash[String, String]), type: String).void
           }
          def initialize(add: nil, remove: nil, set: nil, type: nil); end
        end
        class SetPauseCollection < Stripe::RequestParams
          class Set < Stripe::RequestParams
            # The payment collection behavior for this subscription while paused. One of `keep_as_draft`, `mark_uncollectible`, or `void`.
            sig { returns(String) }
            attr_accessor :behavior
            sig { params(behavior: String).void }
            def initialize(behavior: nil); end
          end
          # Details of the pause_collection behavior to apply to the amendment.
          sig {
            returns(::Stripe::SubscriptionScheduleService::AmendParams::Amendment::SetPauseCollection::Set)
           }
          attr_accessor :set
          # Determines the type of the pause_collection amendment.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(set: ::Stripe::SubscriptionScheduleService::AmendParams::Amendment::SetPauseCollection::Set, type: String).void
           }
          def initialize(set: nil, type: nil); end
        end
        class TrialSettings < Stripe::RequestParams
          class EndBehavior < Stripe::RequestParams
            # Configure how an opt-in following a paid trial is billed when using `billing_behavior: prorate_up_front`.
            sig { returns(String) }
            attr_accessor :prorate_up_front
            sig { params(prorate_up_front: String).void }
            def initialize(prorate_up_front: nil); end
          end
          # Defines how the subscription should behave when a trial ends.
          sig {
            returns(::Stripe::SubscriptionScheduleService::AmendParams::Amendment::TrialSettings::EndBehavior)
           }
          attr_accessor :end_behavior
          sig {
            params(end_behavior: ::Stripe::SubscriptionScheduleService::AmendParams::Amendment::TrialSettings::EndBehavior).void
           }
          def initialize(end_behavior: nil); end
        end
        # Details to identify the end of the time range modified by the proposed change. If not supplied, the amendment is considered a point-in-time operation that only affects the exact timestamp at `amendment_start`, and a restricted set of attributes is supported on the amendment.
        sig { returns(::Stripe::SubscriptionScheduleService::AmendParams::Amendment::AmendmentEnd) }
        attr_accessor :amendment_end
        # Details to identify the earliest timestamp where the proposed change should take effect.
        sig {
          returns(::Stripe::SubscriptionScheduleService::AmendParams::Amendment::AmendmentStart)
         }
        attr_accessor :amendment_start
        # For point-in-time amendments (having no `amendment_end`), this attribute lets you set or remove whether the subscription's billing cycle anchor is reset at the `amendment_start` timestamp.For time-span based amendments (having both `amendment_start` and `amendment_end`), the only value valid is `automatic`, which removes any previously configured billing cycle anchor resets scheduled to occur during the window of time spanned by the amendment.
        sig { returns(String) }
        attr_accessor :billing_cycle_anchor
        # Changes to the coupons being redeemed or discounts being applied during the amendment time span.
        sig {
          returns(T::Array[::Stripe::SubscriptionScheduleService::AmendParams::Amendment::DiscountAction])
         }
        attr_accessor :discount_actions
        # Changes to the subscription items during the amendment time span.
        sig {
          returns(T::Array[::Stripe::SubscriptionScheduleService::AmendParams::Amendment::ItemAction])
         }
        attr_accessor :item_actions
        # Instructions for how to modify phase metadata
        sig {
          returns(T::Array[::Stripe::SubscriptionScheduleService::AmendParams::Amendment::MetadataAction])
         }
        attr_accessor :metadata_actions
        # Changes to how Stripe handles prorations during the amendment time span. Affects if and how prorations are created when a future phase starts. In cases where the amendment changes the currently active phase, it is used to determine whether or how to prorate now, at the time of the request. Also supported as a point-in-time operation when `amendment_end` is `null`.
        sig { returns(String) }
        attr_accessor :proration_behavior
        # Defines how to pause collection for the underlying subscription throughout the duration of the amendment.
        sig {
          returns(::Stripe::SubscriptionScheduleService::AmendParams::Amendment::SetPauseCollection)
         }
        attr_accessor :set_pause_collection
        # Ends the subscription schedule early as dictated by either the accompanying amendment's start or end.
        sig { returns(String) }
        attr_accessor :set_schedule_end
        # Settings related to subscription trials.
        sig {
          returns(::Stripe::SubscriptionScheduleService::AmendParams::Amendment::TrialSettings)
         }
        attr_accessor :trial_settings
        sig {
          params(amendment_end: ::Stripe::SubscriptionScheduleService::AmendParams::Amendment::AmendmentEnd, amendment_start: ::Stripe::SubscriptionScheduleService::AmendParams::Amendment::AmendmentStart, billing_cycle_anchor: String, discount_actions: T::Array[::Stripe::SubscriptionScheduleService::AmendParams::Amendment::DiscountAction], item_actions: T::Array[::Stripe::SubscriptionScheduleService::AmendParams::Amendment::ItemAction], metadata_actions: T::Array[::Stripe::SubscriptionScheduleService::AmendParams::Amendment::MetadataAction], proration_behavior: String, set_pause_collection: ::Stripe::SubscriptionScheduleService::AmendParams::Amendment::SetPauseCollection, set_schedule_end: String, trial_settings: ::Stripe::SubscriptionScheduleService::AmendParams::Amendment::TrialSettings).void
         }
        def initialize(
          amendment_end: nil,
          amendment_start: nil,
          billing_cycle_anchor: nil,
          discount_actions: nil,
          item_actions: nil,
          metadata_actions: nil,
          proration_behavior: nil,
          set_pause_collection: nil,
          set_schedule_end: nil,
          trial_settings: nil
        ); end
      end
      class Prebilling < Stripe::RequestParams
        class BillFrom < Stripe::RequestParams
          class AmendmentStart < Stripe::RequestParams
            # The position of the amendment in the `amendments` array with which prebilling should begin. Indexes start from 0 and must be less than the total number of supplied amendments.
            sig { returns(Integer) }
            attr_accessor :index
            sig { params(index: Integer).void }
            def initialize(index: nil); end
          end
          # Start the prebilled period when a specified amendment begins.
          sig {
            returns(::Stripe::SubscriptionScheduleService::AmendParams::Prebilling::BillFrom::AmendmentStart)
           }
          attr_accessor :amendment_start
          # Start the prebilled period at a precise integer timestamp, starting from the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :timestamp
          # Select one of several ways to pass the `bill_from` value.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(amendment_start: ::Stripe::SubscriptionScheduleService::AmendParams::Prebilling::BillFrom::AmendmentStart, timestamp: Integer, type: String).void
           }
          def initialize(amendment_start: nil, timestamp: nil, type: nil); end
        end
        class BillUntil < Stripe::RequestParams
          class AmendmentEnd < Stripe::RequestParams
            # The position of the amendment in the `amendments` array at which prebilling should end. Indexes start from 0 and must be less than the total number of supplied amendments.
            sig { returns(Integer) }
            attr_accessor :index
            sig { params(index: Integer).void }
            def initialize(index: nil); end
          end
          class Duration < Stripe::RequestParams
            # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
            sig { returns(String) }
            attr_accessor :interval
            # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
            sig { returns(Integer) }
            attr_accessor :interval_count
            sig { params(interval: String, interval_count: Integer).void }
            def initialize(interval: nil, interval_count: nil); end
          end
          # End the prebilled period when a specified amendment ends.
          sig {
            returns(::Stripe::SubscriptionScheduleService::AmendParams::Prebilling::BillUntil::AmendmentEnd)
           }
          attr_accessor :amendment_end
          # Time span for prebilling, starting from `bill_from`.
          sig {
            returns(::Stripe::SubscriptionScheduleService::AmendParams::Prebilling::BillUntil::Duration)
           }
          attr_accessor :duration
          # End the prebilled period at a precise integer timestamp, starting from the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :timestamp
          # Select one of several ways to pass the `bill_until` value.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(amendment_end: ::Stripe::SubscriptionScheduleService::AmendParams::Prebilling::BillUntil::AmendmentEnd, duration: ::Stripe::SubscriptionScheduleService::AmendParams::Prebilling::BillUntil::Duration, timestamp: Integer, type: String).void
           }
          def initialize(amendment_end: nil, duration: nil, timestamp: nil, type: nil); end
        end
        # The beginning of the prebilled time period. The default value is `now`.
        sig { returns(::Stripe::SubscriptionScheduleService::AmendParams::Prebilling::BillFrom) }
        attr_accessor :bill_from
        # The end of the prebilled time period.
        sig { returns(::Stripe::SubscriptionScheduleService::AmendParams::Prebilling::BillUntil) }
        attr_accessor :bill_until
        # When the prebilling invoice should be created. The default value is `now`.
        sig { returns(String) }
        attr_accessor :invoice_at
        # Whether to cancel or preserve `prebilling` if the subscription is updated during the prebilled period. The default value is `reset`.
        sig { returns(String) }
        attr_accessor :update_behavior
        sig {
          params(bill_from: ::Stripe::SubscriptionScheduleService::AmendParams::Prebilling::BillFrom, bill_until: ::Stripe::SubscriptionScheduleService::AmendParams::Prebilling::BillUntil, invoice_at: String, update_behavior: String).void
         }
        def initialize(bill_from: nil, bill_until: nil, invoice_at: nil, update_behavior: nil); end
      end
      class ScheduleSettings < Stripe::RequestParams
        # Behavior of the subscription schedule and underlying subscription when it ends.
        sig { returns(String) }
        attr_accessor :end_behavior
        sig { params(end_behavior: String).void }
        def initialize(end_behavior: nil); end
      end
      # Changes to apply to the phases of the subscription schedule, in the order provided.
      sig { returns(T::Array[::Stripe::SubscriptionScheduleService::AmendParams::Amendment]) }
      attr_accessor :amendments
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # Provide any time periods to bill in advance.
      sig {
        returns(T.nilable(T::Array[::Stripe::SubscriptionScheduleService::AmendParams::Prebilling]))
       }
      attr_accessor :prebilling
      # In cases where the amendment changes the currently active phase,
      #  specifies if and how to prorate at the time of the request.
      sig { returns(String) }
      attr_accessor :proration_behavior
      # Changes to apply to the subscription schedule.
      sig { returns(::Stripe::SubscriptionScheduleService::AmendParams::ScheduleSettings) }
      attr_accessor :schedule_settings
      sig {
        params(amendments: T::Array[::Stripe::SubscriptionScheduleService::AmendParams::Amendment], expand: T::Array[String], prebilling: T.nilable(T::Array[::Stripe::SubscriptionScheduleService::AmendParams::Prebilling]), proration_behavior: String, schedule_settings: ::Stripe::SubscriptionScheduleService::AmendParams::ScheduleSettings).void
       }
      def initialize(
        amendments: nil,
        expand: nil,
        prebilling: nil,
        proration_behavior: nil,
        schedule_settings: nil
      ); end
    end
    class CancelParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # If the subscription schedule is `active`, indicates if a final invoice will be generated that contains any un-invoiced metered usage and new/pending proration invoice items. Defaults to `true`.
      sig { returns(T::Boolean) }
      attr_accessor :invoice_now
      # If the subscription schedule is `active`, indicates if the cancellation should be prorated. Defaults to `true`.
      sig { returns(T::Boolean) }
      attr_accessor :prorate
      sig { params(expand: T::Array[String], invoice_now: T::Boolean, prorate: T::Boolean).void }
      def initialize(expand: nil, invoice_now: nil, prorate: nil); end
    end
    class ReleaseParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # Keep any cancellation on the subscription that the schedule has set
      sig { returns(T::Boolean) }
      attr_accessor :preserve_cancel_date
      sig { params(expand: T::Array[String], preserve_cancel_date: T::Boolean).void }
      def initialize(expand: nil, preserve_cancel_date: nil); end
    end
    # Amends an existing subscription schedule.
    sig {
      params(schedule: String, params: T.any(::Stripe::SubscriptionScheduleService::AmendParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::SubscriptionSchedule)
     }
    def amend(schedule, params = {}, opts = {}); end

    # Cancels a subscription schedule and its associated subscription immediately (if the subscription schedule has an active subscription). A subscription schedule can only be canceled if its status is not_started or active.
    sig {
      params(schedule: String, params: T.any(::Stripe::SubscriptionScheduleService::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::SubscriptionSchedule)
     }
    def cancel(schedule, params = {}, opts = {}); end

    # Creates a new subscription schedule object. Each customer can have up to 500 active or scheduled subscriptions.
    sig {
      params(params: T.any(::Stripe::SubscriptionScheduleService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::SubscriptionSchedule)
     }
    def create(params = {}, opts = {}); end

    # Retrieves the list of your subscription schedules.
    sig {
      params(params: T.any(::Stripe::SubscriptionScheduleService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # Releases the subscription schedule immediately, which will stop scheduling of its phases, but leave any existing subscription in place. A schedule can only be released if its status is not_started or active. If the subscription schedule is currently associated with a subscription, releasing it will remove its subscription property and set the subscription's ID to the released_subscription property.
    sig {
      params(schedule: String, params: T.any(::Stripe::SubscriptionScheduleService::ReleaseParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::SubscriptionSchedule)
     }
    def release(schedule, params = {}, opts = {}); end

    # Retrieves the details of an existing subscription schedule. You only need to supply the unique subscription schedule identifier that was returned upon subscription schedule creation.
    sig {
      params(schedule: String, params: T.any(::Stripe::SubscriptionScheduleService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::SubscriptionSchedule)
     }
    def retrieve(schedule, params = {}, opts = {}); end

    # Updates an existing subscription schedule.
    sig {
      params(schedule: String, params: T.any(::Stripe::SubscriptionScheduleService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::SubscriptionSchedule)
     }
    def update(schedule, params = {}, opts = {}); end
  end
end