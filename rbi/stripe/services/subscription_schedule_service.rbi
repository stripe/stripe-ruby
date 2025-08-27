# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class SubscriptionScheduleService < StripeService
    class ListParams < Stripe::RequestParams
      class CanceledAt < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :gt
        # Minimum value to filter by (inclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :gte
        # Maximum value to filter by (exclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :lt
        # Maximum value to filter by (inclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :lte
        sig {
          params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
         }
        def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
      end
      class CompletedAt < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :gt
        # Minimum value to filter by (inclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :gte
        # Maximum value to filter by (exclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :lt
        # Maximum value to filter by (inclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :lte
        sig {
          params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
         }
        def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
      end
      class Created < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :gt
        # Minimum value to filter by (inclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :gte
        # Maximum value to filter by (exclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :lt
        # Maximum value to filter by (inclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :lte
        sig {
          params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
         }
        def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
      end
      class ReleasedAt < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :gt
        # Minimum value to filter by (inclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :gte
        # Maximum value to filter by (exclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :lt
        # Maximum value to filter by (inclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :lte
        sig {
          params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
         }
        def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
      end
      # Only return subscription schedules that were created canceled the given date interval.
      sig {
        returns(T.nilable(T.any(::Stripe::SubscriptionScheduleService::ListParams::CanceledAt, Integer)))
       }
      attr_accessor :canceled_at
      # Only return subscription schedules that completed during the given date interval.
      sig {
        returns(T.nilable(T.any(::Stripe::SubscriptionScheduleService::ListParams::CompletedAt, Integer)))
       }
      attr_accessor :completed_at
      # Only return subscription schedules that were created during the given date interval.
      sig {
        returns(T.nilable(T.any(::Stripe::SubscriptionScheduleService::ListParams::Created, Integer)))
       }
      attr_accessor :created
      # Only return subscription schedules for the given customer.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :limit
      # Only return subscription schedules that were released during the given date interval.
      sig {
        returns(T.nilable(T.any(::Stripe::SubscriptionScheduleService::ListParams::ReleasedAt, Integer)))
       }
      attr_accessor :released_at
      # Only return subscription schedules that have not started yet.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :scheduled
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :starting_after
      sig {
        params(canceled_at: T.nilable(T.any(::Stripe::SubscriptionScheduleService::ListParams::CanceledAt, Integer)), completed_at: T.nilable(T.any(::Stripe::SubscriptionScheduleService::ListParams::CompletedAt, Integer)), created: T.nilable(T.any(::Stripe::SubscriptionScheduleService::ListParams::Created, Integer)), customer: T.nilable(String), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), released_at: T.nilable(T.any(::Stripe::SubscriptionScheduleService::ListParams::ReleasedAt, Integer)), scheduled: T.nilable(T::Boolean), starting_after: T.nilable(String)).void
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
      class BillingMode < Stripe::RequestParams
        # Controls the calculation and orchestration of prorations and invoices for subscriptions.
        sig { returns(String) }
        attr_accessor :type
        sig { params(type: String).void }
        def initialize(type: nil); end
      end
      class DefaultSettings < Stripe::RequestParams
        class AutomaticTax < Stripe::RequestParams
          class Liability < Stripe::RequestParams
            # The connected account being referenced when `type` is `account`.
            sig { returns(T.nilable(String)) }
            attr_accessor :account
            # Type of the account referenced in the request.
            sig { returns(String) }
            attr_accessor :type
            sig { params(account: T.nilable(String), type: String).void }
            def initialize(account: nil, type: nil); end
          end
          # Enabled automatic tax calculation which will automatically compute tax rates on all invoices generated by the subscription.
          sig { returns(T::Boolean) }
          attr_accessor :enabled
          # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
          sig {
            returns(T.nilable(::Stripe::SubscriptionScheduleService::CreateParams::DefaultSettings::AutomaticTax::Liability))
           }
          attr_accessor :liability
          sig {
            params(enabled: T::Boolean, liability: T.nilable(::Stripe::SubscriptionScheduleService::CreateParams::DefaultSettings::AutomaticTax::Liability)).void
           }
          def initialize(enabled: nil, liability: nil); end
        end
        class BillingThresholds < Stripe::RequestParams
          # Monetary threshold that triggers the subscription to advance to a new billing period
          sig { returns(T.nilable(Integer)) }
          attr_accessor :amount_gte
          # Indicates if the `billing_cycle_anchor` should be reset when a threshold is reached. If true, `billing_cycle_anchor` will be updated to the date/time the threshold was last reached; otherwise, the value will remain unchanged.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :reset_billing_cycle_anchor
          sig {
            params(amount_gte: T.nilable(Integer), reset_billing_cycle_anchor: T.nilable(T::Boolean)).void
           }
          def initialize(amount_gte: nil, reset_billing_cycle_anchor: nil); end
        end
        class InvoiceSettings < Stripe::RequestParams
          class Issuer < Stripe::RequestParams
            # The connected account being referenced when `type` is `account`.
            sig { returns(T.nilable(String)) }
            attr_accessor :account
            # Type of the account referenced in the request.
            sig { returns(String) }
            attr_accessor :type
            sig { params(account: T.nilable(String), type: String).void }
            def initialize(account: nil, type: nil); end
          end
          # The account tax IDs associated with the subscription schedule. Will be set on invoices generated by the subscription schedule.
          sig { returns(T.nilable(T.any(String, T::Array[String]))) }
          attr_accessor :account_tax_ids
          # Number of days within which a customer must pay invoices generated by this subscription schedule. This value will be `null` for subscription schedules where `collection_method=charge_automatically`.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :days_until_due
          # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
          sig {
            returns(T.nilable(::Stripe::SubscriptionScheduleService::CreateParams::DefaultSettings::InvoiceSettings::Issuer))
           }
          attr_accessor :issuer
          sig {
            params(account_tax_ids: T.nilable(T.any(String, T::Array[String])), days_until_due: T.nilable(Integer), issuer: T.nilable(::Stripe::SubscriptionScheduleService::CreateParams::DefaultSettings::InvoiceSettings::Issuer)).void
           }
          def initialize(account_tax_ids: nil, days_until_due: nil, issuer: nil); end
        end
        class TransferData < Stripe::RequestParams
          # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the destination account. By default, the entire amount is transferred to the destination.
          sig { returns(T.nilable(Float)) }
          attr_accessor :amount_percent
          # ID of an existing, connected Stripe account.
          sig { returns(String) }
          attr_accessor :destination
          sig { params(amount_percent: T.nilable(Float), destination: String).void }
          def initialize(amount_percent: nil, destination: nil); end
        end
        # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. The request must be made by a platform account on a connected account in order to set an application fee percentage. For more information, see the application fees [documentation](https://stripe.com/docs/connect/subscriptions#collecting-fees-on-subscriptions).
        sig { returns(T.nilable(Float)) }
        attr_accessor :application_fee_percent
        # Default settings for automatic tax computation.
        sig {
          returns(T.nilable(::Stripe::SubscriptionScheduleService::CreateParams::DefaultSettings::AutomaticTax))
         }
        attr_accessor :automatic_tax
        # Can be set to `phase_start` to set the anchor to the start of the phase or `automatic` to automatically change it if needed. Cannot be set to `phase_start` if this phase specifies a trial. For more information, see the billing cycle [documentation](https://stripe.com/docs/billing/subscriptions/billing-cycle).
        sig { returns(T.nilable(String)) }
        attr_accessor :billing_cycle_anchor
        # Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period. Pass an empty string to remove previously-defined thresholds.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::SubscriptionScheduleService::CreateParams::DefaultSettings::BillingThresholds)))
         }
        attr_accessor :billing_thresholds
        # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay the underlying subscription at the end of each billing cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`. Defaults to `charge_automatically` on creation.
        sig { returns(T.nilable(String)) }
        attr_accessor :collection_method
        # ID of the default payment method for the subscription schedule. It must belong to the customer associated with the subscription schedule. If not set, invoices will use the default payment method in the customer's invoice settings.
        sig { returns(T.nilable(String)) }
        attr_accessor :default_payment_method
        # Subscription description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
        sig { returns(T.nilable(String)) }
        attr_accessor :description
        # All invoices will be billed using the specified settings.
        sig {
          returns(T.nilable(::Stripe::SubscriptionScheduleService::CreateParams::DefaultSettings::InvoiceSettings))
         }
        attr_accessor :invoice_settings
        # The account on behalf of which to charge, for each of the associated subscription's invoices.
        sig { returns(T.nilable(String)) }
        attr_accessor :on_behalf_of
        # The data with which to automatically create a Transfer for each of the associated subscription's invoices.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::SubscriptionScheduleService::CreateParams::DefaultSettings::TransferData)))
         }
        attr_accessor :transfer_data
        sig {
          params(application_fee_percent: T.nilable(Float), automatic_tax: T.nilable(::Stripe::SubscriptionScheduleService::CreateParams::DefaultSettings::AutomaticTax), billing_cycle_anchor: T.nilable(String), billing_thresholds: T.nilable(T.any(String, ::Stripe::SubscriptionScheduleService::CreateParams::DefaultSettings::BillingThresholds)), collection_method: T.nilable(String), default_payment_method: T.nilable(String), description: T.nilable(String), invoice_settings: T.nilable(::Stripe::SubscriptionScheduleService::CreateParams::DefaultSettings::InvoiceSettings), on_behalf_of: T.nilable(String), transfer_data: T.nilable(T.any(String, ::Stripe::SubscriptionScheduleService::CreateParams::DefaultSettings::TransferData))).void
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
            # ID of the coupon to create a new discount for.
            sig { returns(T.nilable(String)) }
            attr_accessor :coupon
            # ID of an existing discount on the object (or one of its ancestors) to reuse.
            sig { returns(T.nilable(String)) }
            attr_accessor :discount
            # ID of the promotion code to create a new discount for.
            sig { returns(T.nilable(String)) }
            attr_accessor :promotion_code
            sig {
              params(coupon: T.nilable(String), discount: T.nilable(String), promotion_code: T.nilable(String)).void
             }
            def initialize(coupon: nil, discount: nil, promotion_code: nil); end
          end
          class Period < Stripe::RequestParams
            class End < Stripe::RequestParams
              # A precise Unix timestamp for the end of the invoice item period. Must be greater than or equal to `period.start`.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :timestamp
              # Select how to calculate the end of the invoice item period.
              sig { returns(String) }
              attr_accessor :type
              sig { params(timestamp: T.nilable(Integer), type: String).void }
              def initialize(timestamp: nil, type: nil); end
            end
            class Start < Stripe::RequestParams
              # A precise Unix timestamp for the start of the invoice item period. Must be less than or equal to `period.end`.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :timestamp
              # Select how to calculate the start of the invoice item period.
              sig { returns(String) }
              attr_accessor :type
              sig { params(timestamp: T.nilable(Integer), type: String).void }
              def initialize(timestamp: nil, type: nil); end
            end
            # End of the invoice item period.
            sig {
              returns(::Stripe::SubscriptionScheduleService::CreateParams::Phase::AddInvoiceItem::Period::End)
             }
            attr_accessor :end
            # Start of the invoice item period.
            sig {
              returns(::Stripe::SubscriptionScheduleService::CreateParams::Phase::AddInvoiceItem::Period::Start)
             }
            attr_accessor :start
            sig {
              params(end_: ::Stripe::SubscriptionScheduleService::CreateParams::Phase::AddInvoiceItem::Period::End, start: ::Stripe::SubscriptionScheduleService::CreateParams::Phase::AddInvoiceItem::Period::Start).void
             }
            def initialize(end_: nil, start: nil); end
          end
          class PriceData < Stripe::RequestParams
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(String) }
            attr_accessor :currency
            # The ID of the [Product](https://docs.stripe.com/api/products) that this [Price](https://docs.stripe.com/api/prices) will belong to.
            sig { returns(String) }
            attr_accessor :product
            # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
            sig { returns(T.nilable(String)) }
            attr_accessor :tax_behavior
            # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge or a negative integer representing the amount to credit to the customer.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :unit_amount
            # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
            sig { returns(T.nilable(String)) }
            attr_accessor :unit_amount_decimal
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
            returns(T.nilable(T::Array[::Stripe::SubscriptionScheduleService::CreateParams::Phase::AddInvoiceItem::Discount]))
           }
          attr_accessor :discounts
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
          sig { returns(T.nilable(T::Hash[String, String])) }
          attr_accessor :metadata
          # The period associated with this invoice item. Defaults to the period of the underlying subscription that surrounds the start of the phase.
          sig {
            returns(T.nilable(::Stripe::SubscriptionScheduleService::CreateParams::Phase::AddInvoiceItem::Period))
           }
          attr_accessor :period
          # The ID of the price object. One of `price` or `price_data` is required.
          sig { returns(T.nilable(String)) }
          attr_accessor :price
          # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline. One of `price` or `price_data` is required.
          sig {
            returns(T.nilable(::Stripe::SubscriptionScheduleService::CreateParams::Phase::AddInvoiceItem::PriceData))
           }
          attr_accessor :price_data
          # Quantity for this item. Defaults to 1.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :quantity
          # The tax rates which apply to the item. When set, the `default_tax_rates` do not apply to this item.
          sig { returns(T.nilable(T.any(String, T::Array[String]))) }
          attr_accessor :tax_rates
          sig {
            params(discounts: T.nilable(T::Array[::Stripe::SubscriptionScheduleService::CreateParams::Phase::AddInvoiceItem::Discount]), metadata: T.nilable(T::Hash[String, String]), period: T.nilable(::Stripe::SubscriptionScheduleService::CreateParams::Phase::AddInvoiceItem::Period), price: T.nilable(String), price_data: T.nilable(::Stripe::SubscriptionScheduleService::CreateParams::Phase::AddInvoiceItem::PriceData), quantity: T.nilable(Integer), tax_rates: T.nilable(T.any(String, T::Array[String]))).void
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
        class AutomaticTax < Stripe::RequestParams
          class Liability < Stripe::RequestParams
            # The connected account being referenced when `type` is `account`.
            sig { returns(T.nilable(String)) }
            attr_accessor :account
            # Type of the account referenced in the request.
            sig { returns(String) }
            attr_accessor :type
            sig { params(account: T.nilable(String), type: String).void }
            def initialize(account: nil, type: nil); end
          end
          # Enabled automatic tax calculation which will automatically compute tax rates on all invoices generated by the subscription.
          sig { returns(T::Boolean) }
          attr_accessor :enabled
          # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
          sig {
            returns(T.nilable(::Stripe::SubscriptionScheduleService::CreateParams::Phase::AutomaticTax::Liability))
           }
          attr_accessor :liability
          sig {
            params(enabled: T::Boolean, liability: T.nilable(::Stripe::SubscriptionScheduleService::CreateParams::Phase::AutomaticTax::Liability)).void
           }
          def initialize(enabled: nil, liability: nil); end
        end
        class BillingThresholds < Stripe::RequestParams
          # Monetary threshold that triggers the subscription to advance to a new billing period
          sig { returns(T.nilable(Integer)) }
          attr_accessor :amount_gte
          # Indicates if the `billing_cycle_anchor` should be reset when a threshold is reached. If true, `billing_cycle_anchor` will be updated to the date/time the threshold was last reached; otherwise, the value will remain unchanged.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :reset_billing_cycle_anchor
          sig {
            params(amount_gte: T.nilable(Integer), reset_billing_cycle_anchor: T.nilable(T::Boolean)).void
           }
          def initialize(amount_gte: nil, reset_billing_cycle_anchor: nil); end
        end
        class Discount < Stripe::RequestParams
          # ID of the coupon to create a new discount for.
          sig { returns(T.nilable(String)) }
          attr_accessor :coupon
          # ID of an existing discount on the object (or one of its ancestors) to reuse.
          sig { returns(T.nilable(String)) }
          attr_accessor :discount
          # ID of the promotion code to create a new discount for.
          sig { returns(T.nilable(String)) }
          attr_accessor :promotion_code
          sig {
            params(coupon: T.nilable(String), discount: T.nilable(String), promotion_code: T.nilable(String)).void
           }
          def initialize(coupon: nil, discount: nil, promotion_code: nil); end
        end
        class Duration < Stripe::RequestParams
          # Specifies phase duration. Either `day`, `week`, `month` or `year`.
          sig { returns(String) }
          attr_accessor :interval
          # The multiplier applied to the interval.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :interval_count
          sig { params(interval: String, interval_count: T.nilable(Integer)).void }
          def initialize(interval: nil, interval_count: nil); end
        end
        class InvoiceSettings < Stripe::RequestParams
          class Issuer < Stripe::RequestParams
            # The connected account being referenced when `type` is `account`.
            sig { returns(T.nilable(String)) }
            attr_accessor :account
            # Type of the account referenced in the request.
            sig { returns(String) }
            attr_accessor :type
            sig { params(account: T.nilable(String), type: String).void }
            def initialize(account: nil, type: nil); end
          end
          # The account tax IDs associated with this phase of the subscription schedule. Will be set on invoices generated by this phase of the subscription schedule.
          sig { returns(T.nilable(T.any(String, T::Array[String]))) }
          attr_accessor :account_tax_ids
          # Number of days within which a customer must pay invoices generated by this subscription schedule. This value will be `null` for subscription schedules where `billing=charge_automatically`.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :days_until_due
          # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
          sig {
            returns(T.nilable(::Stripe::SubscriptionScheduleService::CreateParams::Phase::InvoiceSettings::Issuer))
           }
          attr_accessor :issuer
          sig {
            params(account_tax_ids: T.nilable(T.any(String, T::Array[String])), days_until_due: T.nilable(Integer), issuer: T.nilable(::Stripe::SubscriptionScheduleService::CreateParams::Phase::InvoiceSettings::Issuer)).void
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
            # ID of the coupon to create a new discount for.
            sig { returns(T.nilable(String)) }
            attr_accessor :coupon
            # ID of an existing discount on the object (or one of its ancestors) to reuse.
            sig { returns(T.nilable(String)) }
            attr_accessor :discount
            # ID of the promotion code to create a new discount for.
            sig { returns(T.nilable(String)) }
            attr_accessor :promotion_code
            sig {
              params(coupon: T.nilable(String), discount: T.nilable(String), promotion_code: T.nilable(String)).void
             }
            def initialize(coupon: nil, discount: nil, promotion_code: nil); end
          end
          class PriceData < Stripe::RequestParams
            class Recurring < Stripe::RequestParams
              # Specifies billing frequency. Either `day`, `week`, `month` or `year`.
              sig { returns(String) }
              attr_accessor :interval
              # The number of intervals between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months. Maximum of three years interval allowed (3 years, 36 months, or 156 weeks).
              sig { returns(T.nilable(Integer)) }
              attr_accessor :interval_count
              sig { params(interval: String, interval_count: T.nilable(Integer)).void }
              def initialize(interval: nil, interval_count: nil); end
            end
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(String) }
            attr_accessor :currency
            # The ID of the [Product](https://docs.stripe.com/api/products) that this [Price](https://docs.stripe.com/api/prices) will belong to.
            sig { returns(String) }
            attr_accessor :product
            # The recurring components of a price such as `interval` and `interval_count`.
            sig {
              returns(::Stripe::SubscriptionScheduleService::CreateParams::Phase::Item::PriceData::Recurring)
             }
            attr_accessor :recurring
            # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
            sig { returns(T.nilable(String)) }
            attr_accessor :tax_behavior
            # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :unit_amount
            # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
            sig { returns(T.nilable(String)) }
            attr_accessor :unit_amount_decimal
            sig {
              params(currency: String, product: String, recurring: ::Stripe::SubscriptionScheduleService::CreateParams::Phase::Item::PriceData::Recurring, tax_behavior: T.nilable(String), unit_amount: T.nilable(Integer), unit_amount_decimal: T.nilable(String)).void
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
          # Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period. Pass an empty string to remove previously-defined thresholds.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::SubscriptionScheduleService::CreateParams::Phase::Item::BillingThresholds)))
           }
          attr_accessor :billing_thresholds
          # The coupons to redeem into discounts for the subscription item.
          sig {
            returns(T.nilable(T.any(String, T::Array[::Stripe::SubscriptionScheduleService::CreateParams::Phase::Item::Discount])))
           }
          attr_accessor :discounts
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to a configuration item. Metadata on a configuration item will update the underlying subscription item's `metadata` when the phase is entered, adding new keys and replacing existing keys. Individual keys in the subscription item's `metadata` can be unset by posting an empty value to them in the configuration item's `metadata`. To unset all keys in the subscription item's `metadata`, update the subscription item directly or unset every key individually from the configuration item's `metadata`.
          sig { returns(T.nilable(T::Hash[String, String])) }
          attr_accessor :metadata
          # The plan ID to subscribe to. You may specify the same ID in `plan` and `price`.
          sig { returns(T.nilable(String)) }
          attr_accessor :plan
          # The ID of the price object.
          sig { returns(T.nilable(String)) }
          attr_accessor :price
          # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline.
          sig {
            returns(T.nilable(::Stripe::SubscriptionScheduleService::CreateParams::Phase::Item::PriceData))
           }
          attr_accessor :price_data
          # Quantity for the given price. Can be set only if the price's `usage_type` is `licensed` and not `metered`.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :quantity
          # A list of [Tax Rate](https://stripe.com/docs/api/tax_rates) ids. These Tax Rates will override the [`default_tax_rates`](https://stripe.com/docs/api/subscriptions/create#create_subscription-default_tax_rates) on the Subscription. When updating, pass an empty string to remove previously-defined tax rates.
          sig { returns(T.nilable(T.any(String, T::Array[String]))) }
          attr_accessor :tax_rates
          sig {
            params(billing_thresholds: T.nilable(T.any(String, ::Stripe::SubscriptionScheduleService::CreateParams::Phase::Item::BillingThresholds)), discounts: T.nilable(T.any(String, T::Array[::Stripe::SubscriptionScheduleService::CreateParams::Phase::Item::Discount])), metadata: T.nilable(T::Hash[String, String]), plan: T.nilable(String), price: T.nilable(String), price_data: T.nilable(::Stripe::SubscriptionScheduleService::CreateParams::Phase::Item::PriceData), quantity: T.nilable(Integer), tax_rates: T.nilable(T.any(String, T::Array[String]))).void
           }
          def initialize(
            billing_thresholds: nil,
            discounts: nil,
            metadata: nil,
            plan: nil,
            price: nil,
            price_data: nil,
            quantity: nil,
            tax_rates: nil
          ); end
        end
        class TransferData < Stripe::RequestParams
          # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the destination account. By default, the entire amount is transferred to the destination.
          sig { returns(T.nilable(Float)) }
          attr_accessor :amount_percent
          # ID of an existing, connected Stripe account.
          sig { returns(String) }
          attr_accessor :destination
          sig { params(amount_percent: T.nilable(Float), destination: String).void }
          def initialize(amount_percent: nil, destination: nil); end
        end
        # A list of prices and quantities that will generate invoice items appended to the next invoice for this phase. You may pass up to 20 items.
        sig {
          returns(T.nilable(T::Array[::Stripe::SubscriptionScheduleService::CreateParams::Phase::AddInvoiceItem]))
         }
        attr_accessor :add_invoice_items
        # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. The request must be made by a platform account on a connected account in order to set an application fee percentage. For more information, see the application fees [documentation](https://stripe.com/docs/connect/subscriptions#collecting-fees-on-subscriptions).
        sig { returns(T.nilable(Float)) }
        attr_accessor :application_fee_percent
        # Automatic tax settings for this phase.
        sig {
          returns(T.nilable(::Stripe::SubscriptionScheduleService::CreateParams::Phase::AutomaticTax))
         }
        attr_accessor :automatic_tax
        # Can be set to `phase_start` to set the anchor to the start of the phase or `automatic` to automatically change it if needed. Cannot be set to `phase_start` if this phase specifies a trial. For more information, see the billing cycle [documentation](https://stripe.com/docs/billing/subscriptions/billing-cycle).
        sig { returns(T.nilable(String)) }
        attr_accessor :billing_cycle_anchor
        # Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period. Pass an empty string to remove previously-defined thresholds.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::SubscriptionScheduleService::CreateParams::Phase::BillingThresholds)))
         }
        attr_accessor :billing_thresholds
        # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay the underlying subscription at the end of each billing cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`. Defaults to `charge_automatically` on creation.
        sig { returns(T.nilable(String)) }
        attr_accessor :collection_method
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(T.nilable(String)) }
        attr_accessor :currency
        # ID of the default payment method for the subscription schedule. It must belong to the customer associated with the subscription schedule. If not set, invoices will use the default payment method in the customer's invoice settings.
        sig { returns(T.nilable(String)) }
        attr_accessor :default_payment_method
        # A list of [Tax Rate](https://stripe.com/docs/api/tax_rates) ids. These Tax Rates will set the Subscription's [`default_tax_rates`](https://stripe.com/docs/api/subscriptions/create#create_subscription-default_tax_rates), which means they will be the Invoice's [`default_tax_rates`](https://stripe.com/docs/api/invoices/create#create_invoice-default_tax_rates) for any Invoices issued by the Subscription during this Phase.
        sig { returns(T.nilable(T.any(String, T::Array[String]))) }
        attr_accessor :default_tax_rates
        # Subscription description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
        sig { returns(T.nilable(String)) }
        attr_accessor :description
        # The coupons to redeem into discounts for the schedule phase. If not specified, inherits the discount from the subscription's customer. Pass an empty string to avoid inheriting any discounts.
        sig {
          returns(T.nilable(T.any(String, T::Array[::Stripe::SubscriptionScheduleService::CreateParams::Phase::Discount])))
         }
        attr_accessor :discounts
        # The number of intervals the phase should last. If set, `end_date` must not be set.
        sig {
          returns(T.nilable(::Stripe::SubscriptionScheduleService::CreateParams::Phase::Duration))
         }
        attr_accessor :duration
        # The date at which this phase of the subscription schedule ends. If set, `iterations` must not be set.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :end_date
        # All invoices will be billed using the specified settings.
        sig {
          returns(T.nilable(::Stripe::SubscriptionScheduleService::CreateParams::Phase::InvoiceSettings))
         }
        attr_accessor :invoice_settings
        # List of configuration items, each with an attached price, to apply during this phase of the subscription schedule.
        sig { returns(T::Array[::Stripe::SubscriptionScheduleService::CreateParams::Phase::Item]) }
        attr_accessor :items
        # Integer representing the multiplier applied to the price interval. For example, `iterations=2` applied to a price with `interval=month` and `interval_count=3` results in a phase of duration `2 * 3 months = 6 months`. If set, `end_date` must not be set. This parameter is deprecated and will be removed in a future version. Use `duration` instead.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :iterations
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to a phase. Metadata on a schedule's phase will update the underlying subscription's `metadata` when the phase is entered, adding new keys and replacing existing keys in the subscription's `metadata`. Individual keys in the subscription's `metadata` can be unset by posting an empty value to them in the phase's `metadata`. To unset all keys in the subscription's `metadata`, update the subscription directly or unset every key individually from the phase's `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        # The account on behalf of which to charge, for each of the associated subscription's invoices.
        sig { returns(T.nilable(String)) }
        attr_accessor :on_behalf_of
        # Controls whether the subscription schedule should create [prorations](https://stripe.com/docs/billing/subscriptions/prorations) when transitioning to this phase if there is a difference in billing configuration. It's different from the request-level [proration_behavior](https://stripe.com/docs/api/subscription_schedules/update#update_subscription_schedule-proration_behavior) parameter which controls what happens if the update request affects the billing configuration (item price, quantity, etc.) of the current phase.
        sig { returns(T.nilable(String)) }
        attr_accessor :proration_behavior
        # The data with which to automatically create a Transfer for each of the associated subscription's invoices.
        sig {
          returns(T.nilable(::Stripe::SubscriptionScheduleService::CreateParams::Phase::TransferData))
         }
        attr_accessor :transfer_data
        # If set to true the entire phase is counted as a trial and the customer will not be charged for any fees.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :trial
        # Sets the phase to trialing from the start date to this date. Must be before the phase end date, can not be combined with `trial`
        sig { returns(T.nilable(Integer)) }
        attr_accessor :trial_end
        sig {
          params(add_invoice_items: T.nilable(T::Array[::Stripe::SubscriptionScheduleService::CreateParams::Phase::AddInvoiceItem]), application_fee_percent: T.nilable(Float), automatic_tax: T.nilable(::Stripe::SubscriptionScheduleService::CreateParams::Phase::AutomaticTax), billing_cycle_anchor: T.nilable(String), billing_thresholds: T.nilable(T.any(String, ::Stripe::SubscriptionScheduleService::CreateParams::Phase::BillingThresholds)), collection_method: T.nilable(String), currency: T.nilable(String), default_payment_method: T.nilable(String), default_tax_rates: T.nilable(T.any(String, T::Array[String])), description: T.nilable(String), discounts: T.nilable(T.any(String, T::Array[::Stripe::SubscriptionScheduleService::CreateParams::Phase::Discount])), duration: T.nilable(::Stripe::SubscriptionScheduleService::CreateParams::Phase::Duration), end_date: T.nilable(Integer), invoice_settings: T.nilable(::Stripe::SubscriptionScheduleService::CreateParams::Phase::InvoiceSettings), items: T::Array[::Stripe::SubscriptionScheduleService::CreateParams::Phase::Item], iterations: T.nilable(Integer), metadata: T.nilable(T::Hash[String, String]), on_behalf_of: T.nilable(String), proration_behavior: T.nilable(String), transfer_data: T.nilable(::Stripe::SubscriptionScheduleService::CreateParams::Phase::TransferData), trial: T.nilable(T::Boolean), trial_end: T.nilable(Integer)).void
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
          end_date: nil,
          invoice_settings: nil,
          items: nil,
          iterations: nil,
          metadata: nil,
          on_behalf_of: nil,
          proration_behavior: nil,
          transfer_data: nil,
          trial: nil,
          trial_end: nil
        ); end
      end
      # Controls how prorations and invoices for subscriptions are calculated and orchestrated.
      sig { returns(T.nilable(::Stripe::SubscriptionScheduleService::CreateParams::BillingMode)) }
      attr_accessor :billing_mode
      # The identifier of the customer to create the subscription schedule for.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer
      # Object representing the subscription schedule's default settings.
      sig {
        returns(T.nilable(::Stripe::SubscriptionScheduleService::CreateParams::DefaultSettings))
       }
      attr_accessor :default_settings
      # Behavior of the subscription schedule and underlying subscription when it ends. Possible values are `release` or `cancel` with the default being `release`. `release` will end the subscription schedule and keep the underlying subscription running. `cancel` will end the subscription schedule and cancel the underlying subscription.
      sig { returns(T.nilable(String)) }
      attr_accessor :end_behavior
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # Migrate an existing subscription to be managed by a subscription schedule. If this parameter is set, a subscription schedule will be created using the subscription's item(s), set to auto-renew using the subscription's interval. When using this parameter, other parameters (such as phase values) cannot be set. To create a subscription schedule with other modifications, we recommend making two separate API calls.
      sig { returns(T.nilable(String)) }
      attr_accessor :from_subscription
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      attr_accessor :metadata
      # List representing phases of the subscription schedule. Each phase can be customized to have different durations, plans, and coupons. If there are multiple phases, the `end_date` of one phase will always equal the `start_date` of the next phase.
      sig {
        returns(T.nilable(T::Array[::Stripe::SubscriptionScheduleService::CreateParams::Phase]))
       }
      attr_accessor :phases
      # When the subscription schedule starts. We recommend using `now` so that it starts the subscription immediately. You can also use a Unix timestamp to backdate the subscription so that it starts on a past date, or set a future date for the subscription to start on.
      sig { returns(T.nilable(T.any(Integer, String))) }
      attr_accessor :start_date
      sig {
        params(billing_mode: T.nilable(::Stripe::SubscriptionScheduleService::CreateParams::BillingMode), customer: T.nilable(String), default_settings: T.nilable(::Stripe::SubscriptionScheduleService::CreateParams::DefaultSettings), end_behavior: T.nilable(String), expand: T.nilable(T::Array[String]), from_subscription: T.nilable(String), metadata: T.nilable(T.any(String, T::Hash[String, String])), phases: T.nilable(T::Array[::Stripe::SubscriptionScheduleService::CreateParams::Phase]), start_date: T.nilable(T.any(Integer, String))).void
       }
      def initialize(
        billing_mode: nil,
        customer: nil,
        default_settings: nil,
        end_behavior: nil,
        expand: nil,
        from_subscription: nil,
        metadata: nil,
        phases: nil,
        start_date: nil
      ); end
    end
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    class UpdateParams < Stripe::RequestParams
      class DefaultSettings < Stripe::RequestParams
        class AutomaticTax < Stripe::RequestParams
          class Liability < Stripe::RequestParams
            # The connected account being referenced when `type` is `account`.
            sig { returns(T.nilable(String)) }
            attr_accessor :account
            # Type of the account referenced in the request.
            sig { returns(String) }
            attr_accessor :type
            sig { params(account: T.nilable(String), type: String).void }
            def initialize(account: nil, type: nil); end
          end
          # Enabled automatic tax calculation which will automatically compute tax rates on all invoices generated by the subscription.
          sig { returns(T::Boolean) }
          attr_accessor :enabled
          # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
          sig {
            returns(T.nilable(::Stripe::SubscriptionScheduleService::UpdateParams::DefaultSettings::AutomaticTax::Liability))
           }
          attr_accessor :liability
          sig {
            params(enabled: T::Boolean, liability: T.nilable(::Stripe::SubscriptionScheduleService::UpdateParams::DefaultSettings::AutomaticTax::Liability)).void
           }
          def initialize(enabled: nil, liability: nil); end
        end
        class BillingThresholds < Stripe::RequestParams
          # Monetary threshold that triggers the subscription to advance to a new billing period
          sig { returns(T.nilable(Integer)) }
          attr_accessor :amount_gte
          # Indicates if the `billing_cycle_anchor` should be reset when a threshold is reached. If true, `billing_cycle_anchor` will be updated to the date/time the threshold was last reached; otherwise, the value will remain unchanged.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :reset_billing_cycle_anchor
          sig {
            params(amount_gte: T.nilable(Integer), reset_billing_cycle_anchor: T.nilable(T::Boolean)).void
           }
          def initialize(amount_gte: nil, reset_billing_cycle_anchor: nil); end
        end
        class InvoiceSettings < Stripe::RequestParams
          class Issuer < Stripe::RequestParams
            # The connected account being referenced when `type` is `account`.
            sig { returns(T.nilable(String)) }
            attr_accessor :account
            # Type of the account referenced in the request.
            sig { returns(String) }
            attr_accessor :type
            sig { params(account: T.nilable(String), type: String).void }
            def initialize(account: nil, type: nil); end
          end
          # The account tax IDs associated with the subscription schedule. Will be set on invoices generated by the subscription schedule.
          sig { returns(T.nilable(T.any(String, T::Array[String]))) }
          attr_accessor :account_tax_ids
          # Number of days within which a customer must pay invoices generated by this subscription schedule. This value will be `null` for subscription schedules where `collection_method=charge_automatically`.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :days_until_due
          # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
          sig {
            returns(T.nilable(::Stripe::SubscriptionScheduleService::UpdateParams::DefaultSettings::InvoiceSettings::Issuer))
           }
          attr_accessor :issuer
          sig {
            params(account_tax_ids: T.nilable(T.any(String, T::Array[String])), days_until_due: T.nilable(Integer), issuer: T.nilable(::Stripe::SubscriptionScheduleService::UpdateParams::DefaultSettings::InvoiceSettings::Issuer)).void
           }
          def initialize(account_tax_ids: nil, days_until_due: nil, issuer: nil); end
        end
        class TransferData < Stripe::RequestParams
          # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the destination account. By default, the entire amount is transferred to the destination.
          sig { returns(T.nilable(Float)) }
          attr_accessor :amount_percent
          # ID of an existing, connected Stripe account.
          sig { returns(String) }
          attr_accessor :destination
          sig { params(amount_percent: T.nilable(Float), destination: String).void }
          def initialize(amount_percent: nil, destination: nil); end
        end
        # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. The request must be made by a platform account on a connected account in order to set an application fee percentage. For more information, see the application fees [documentation](https://stripe.com/docs/connect/subscriptions#collecting-fees-on-subscriptions).
        sig { returns(T.nilable(Float)) }
        attr_accessor :application_fee_percent
        # Default settings for automatic tax computation.
        sig {
          returns(T.nilable(::Stripe::SubscriptionScheduleService::UpdateParams::DefaultSettings::AutomaticTax))
         }
        attr_accessor :automatic_tax
        # Can be set to `phase_start` to set the anchor to the start of the phase or `automatic` to automatically change it if needed. Cannot be set to `phase_start` if this phase specifies a trial. For more information, see the billing cycle [documentation](https://stripe.com/docs/billing/subscriptions/billing-cycle).
        sig { returns(T.nilable(String)) }
        attr_accessor :billing_cycle_anchor
        # Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period. Pass an empty string to remove previously-defined thresholds.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::SubscriptionScheduleService::UpdateParams::DefaultSettings::BillingThresholds)))
         }
        attr_accessor :billing_thresholds
        # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay the underlying subscription at the end of each billing cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`. Defaults to `charge_automatically` on creation.
        sig { returns(T.nilable(String)) }
        attr_accessor :collection_method
        # ID of the default payment method for the subscription schedule. It must belong to the customer associated with the subscription schedule. If not set, invoices will use the default payment method in the customer's invoice settings.
        sig { returns(T.nilable(String)) }
        attr_accessor :default_payment_method
        # Subscription description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
        sig { returns(T.nilable(String)) }
        attr_accessor :description
        # All invoices will be billed using the specified settings.
        sig {
          returns(T.nilable(::Stripe::SubscriptionScheduleService::UpdateParams::DefaultSettings::InvoiceSettings))
         }
        attr_accessor :invoice_settings
        # The account on behalf of which to charge, for each of the associated subscription's invoices.
        sig { returns(T.nilable(String)) }
        attr_accessor :on_behalf_of
        # The data with which to automatically create a Transfer for each of the associated subscription's invoices.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::SubscriptionScheduleService::UpdateParams::DefaultSettings::TransferData)))
         }
        attr_accessor :transfer_data
        sig {
          params(application_fee_percent: T.nilable(Float), automatic_tax: T.nilable(::Stripe::SubscriptionScheduleService::UpdateParams::DefaultSettings::AutomaticTax), billing_cycle_anchor: T.nilable(String), billing_thresholds: T.nilable(T.any(String, ::Stripe::SubscriptionScheduleService::UpdateParams::DefaultSettings::BillingThresholds)), collection_method: T.nilable(String), default_payment_method: T.nilable(String), description: T.nilable(String), invoice_settings: T.nilable(::Stripe::SubscriptionScheduleService::UpdateParams::DefaultSettings::InvoiceSettings), on_behalf_of: T.nilable(String), transfer_data: T.nilable(T.any(String, ::Stripe::SubscriptionScheduleService::UpdateParams::DefaultSettings::TransferData))).void
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
            # ID of the coupon to create a new discount for.
            sig { returns(T.nilable(String)) }
            attr_accessor :coupon
            # ID of an existing discount on the object (or one of its ancestors) to reuse.
            sig { returns(T.nilable(String)) }
            attr_accessor :discount
            # ID of the promotion code to create a new discount for.
            sig { returns(T.nilable(String)) }
            attr_accessor :promotion_code
            sig {
              params(coupon: T.nilable(String), discount: T.nilable(String), promotion_code: T.nilable(String)).void
             }
            def initialize(coupon: nil, discount: nil, promotion_code: nil); end
          end
          class Period < Stripe::RequestParams
            class End < Stripe::RequestParams
              # A precise Unix timestamp for the end of the invoice item period. Must be greater than or equal to `period.start`.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :timestamp
              # Select how to calculate the end of the invoice item period.
              sig { returns(String) }
              attr_accessor :type
              sig { params(timestamp: T.nilable(Integer), type: String).void }
              def initialize(timestamp: nil, type: nil); end
            end
            class Start < Stripe::RequestParams
              # A precise Unix timestamp for the start of the invoice item period. Must be less than or equal to `period.end`.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :timestamp
              # Select how to calculate the start of the invoice item period.
              sig { returns(String) }
              attr_accessor :type
              sig { params(timestamp: T.nilable(Integer), type: String).void }
              def initialize(timestamp: nil, type: nil); end
            end
            # End of the invoice item period.
            sig {
              returns(::Stripe::SubscriptionScheduleService::UpdateParams::Phase::AddInvoiceItem::Period::End)
             }
            attr_accessor :end
            # Start of the invoice item period.
            sig {
              returns(::Stripe::SubscriptionScheduleService::UpdateParams::Phase::AddInvoiceItem::Period::Start)
             }
            attr_accessor :start
            sig {
              params(end_: ::Stripe::SubscriptionScheduleService::UpdateParams::Phase::AddInvoiceItem::Period::End, start: ::Stripe::SubscriptionScheduleService::UpdateParams::Phase::AddInvoiceItem::Period::Start).void
             }
            def initialize(end_: nil, start: nil); end
          end
          class PriceData < Stripe::RequestParams
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(String) }
            attr_accessor :currency
            # The ID of the [Product](https://docs.stripe.com/api/products) that this [Price](https://docs.stripe.com/api/prices) will belong to.
            sig { returns(String) }
            attr_accessor :product
            # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
            sig { returns(T.nilable(String)) }
            attr_accessor :tax_behavior
            # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge or a negative integer representing the amount to credit to the customer.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :unit_amount
            # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
            sig { returns(T.nilable(String)) }
            attr_accessor :unit_amount_decimal
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
            returns(T.nilable(T::Array[::Stripe::SubscriptionScheduleService::UpdateParams::Phase::AddInvoiceItem::Discount]))
           }
          attr_accessor :discounts
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
          sig { returns(T.nilable(T::Hash[String, String])) }
          attr_accessor :metadata
          # The period associated with this invoice item. Defaults to the period of the underlying subscription that surrounds the start of the phase.
          sig {
            returns(T.nilable(::Stripe::SubscriptionScheduleService::UpdateParams::Phase::AddInvoiceItem::Period))
           }
          attr_accessor :period
          # The ID of the price object. One of `price` or `price_data` is required.
          sig { returns(T.nilable(String)) }
          attr_accessor :price
          # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline. One of `price` or `price_data` is required.
          sig {
            returns(T.nilable(::Stripe::SubscriptionScheduleService::UpdateParams::Phase::AddInvoiceItem::PriceData))
           }
          attr_accessor :price_data
          # Quantity for this item. Defaults to 1.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :quantity
          # The tax rates which apply to the item. When set, the `default_tax_rates` do not apply to this item.
          sig { returns(T.nilable(T.any(String, T::Array[String]))) }
          attr_accessor :tax_rates
          sig {
            params(discounts: T.nilable(T::Array[::Stripe::SubscriptionScheduleService::UpdateParams::Phase::AddInvoiceItem::Discount]), metadata: T.nilable(T::Hash[String, String]), period: T.nilable(::Stripe::SubscriptionScheduleService::UpdateParams::Phase::AddInvoiceItem::Period), price: T.nilable(String), price_data: T.nilable(::Stripe::SubscriptionScheduleService::UpdateParams::Phase::AddInvoiceItem::PriceData), quantity: T.nilable(Integer), tax_rates: T.nilable(T.any(String, T::Array[String]))).void
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
        class AutomaticTax < Stripe::RequestParams
          class Liability < Stripe::RequestParams
            # The connected account being referenced when `type` is `account`.
            sig { returns(T.nilable(String)) }
            attr_accessor :account
            # Type of the account referenced in the request.
            sig { returns(String) }
            attr_accessor :type
            sig { params(account: T.nilable(String), type: String).void }
            def initialize(account: nil, type: nil); end
          end
          # Enabled automatic tax calculation which will automatically compute tax rates on all invoices generated by the subscription.
          sig { returns(T::Boolean) }
          attr_accessor :enabled
          # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
          sig {
            returns(T.nilable(::Stripe::SubscriptionScheduleService::UpdateParams::Phase::AutomaticTax::Liability))
           }
          attr_accessor :liability
          sig {
            params(enabled: T::Boolean, liability: T.nilable(::Stripe::SubscriptionScheduleService::UpdateParams::Phase::AutomaticTax::Liability)).void
           }
          def initialize(enabled: nil, liability: nil); end
        end
        class BillingThresholds < Stripe::RequestParams
          # Monetary threshold that triggers the subscription to advance to a new billing period
          sig { returns(T.nilable(Integer)) }
          attr_accessor :amount_gte
          # Indicates if the `billing_cycle_anchor` should be reset when a threshold is reached. If true, `billing_cycle_anchor` will be updated to the date/time the threshold was last reached; otherwise, the value will remain unchanged.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :reset_billing_cycle_anchor
          sig {
            params(amount_gte: T.nilable(Integer), reset_billing_cycle_anchor: T.nilable(T::Boolean)).void
           }
          def initialize(amount_gte: nil, reset_billing_cycle_anchor: nil); end
        end
        class Discount < Stripe::RequestParams
          # ID of the coupon to create a new discount for.
          sig { returns(T.nilable(String)) }
          attr_accessor :coupon
          # ID of an existing discount on the object (or one of its ancestors) to reuse.
          sig { returns(T.nilable(String)) }
          attr_accessor :discount
          # ID of the promotion code to create a new discount for.
          sig { returns(T.nilable(String)) }
          attr_accessor :promotion_code
          sig {
            params(coupon: T.nilable(String), discount: T.nilable(String), promotion_code: T.nilable(String)).void
           }
          def initialize(coupon: nil, discount: nil, promotion_code: nil); end
        end
        class Duration < Stripe::RequestParams
          # Specifies phase duration. Either `day`, `week`, `month` or `year`.
          sig { returns(String) }
          attr_accessor :interval
          # The multiplier applied to the interval.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :interval_count
          sig { params(interval: String, interval_count: T.nilable(Integer)).void }
          def initialize(interval: nil, interval_count: nil); end
        end
        class InvoiceSettings < Stripe::RequestParams
          class Issuer < Stripe::RequestParams
            # The connected account being referenced when `type` is `account`.
            sig { returns(T.nilable(String)) }
            attr_accessor :account
            # Type of the account referenced in the request.
            sig { returns(String) }
            attr_accessor :type
            sig { params(account: T.nilable(String), type: String).void }
            def initialize(account: nil, type: nil); end
          end
          # The account tax IDs associated with this phase of the subscription schedule. Will be set on invoices generated by this phase of the subscription schedule.
          sig { returns(T.nilable(T.any(String, T::Array[String]))) }
          attr_accessor :account_tax_ids
          # Number of days within which a customer must pay invoices generated by this subscription schedule. This value will be `null` for subscription schedules where `billing=charge_automatically`.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :days_until_due
          # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
          sig {
            returns(T.nilable(::Stripe::SubscriptionScheduleService::UpdateParams::Phase::InvoiceSettings::Issuer))
           }
          attr_accessor :issuer
          sig {
            params(account_tax_ids: T.nilable(T.any(String, T::Array[String])), days_until_due: T.nilable(Integer), issuer: T.nilable(::Stripe::SubscriptionScheduleService::UpdateParams::Phase::InvoiceSettings::Issuer)).void
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
            # ID of the coupon to create a new discount for.
            sig { returns(T.nilable(String)) }
            attr_accessor :coupon
            # ID of an existing discount on the object (or one of its ancestors) to reuse.
            sig { returns(T.nilable(String)) }
            attr_accessor :discount
            # ID of the promotion code to create a new discount for.
            sig { returns(T.nilable(String)) }
            attr_accessor :promotion_code
            sig {
              params(coupon: T.nilable(String), discount: T.nilable(String), promotion_code: T.nilable(String)).void
             }
            def initialize(coupon: nil, discount: nil, promotion_code: nil); end
          end
          class PriceData < Stripe::RequestParams
            class Recurring < Stripe::RequestParams
              # Specifies billing frequency. Either `day`, `week`, `month` or `year`.
              sig { returns(String) }
              attr_accessor :interval
              # The number of intervals between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months. Maximum of three years interval allowed (3 years, 36 months, or 156 weeks).
              sig { returns(T.nilable(Integer)) }
              attr_accessor :interval_count
              sig { params(interval: String, interval_count: T.nilable(Integer)).void }
              def initialize(interval: nil, interval_count: nil); end
            end
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(String) }
            attr_accessor :currency
            # The ID of the [Product](https://docs.stripe.com/api/products) that this [Price](https://docs.stripe.com/api/prices) will belong to.
            sig { returns(String) }
            attr_accessor :product
            # The recurring components of a price such as `interval` and `interval_count`.
            sig {
              returns(::Stripe::SubscriptionScheduleService::UpdateParams::Phase::Item::PriceData::Recurring)
             }
            attr_accessor :recurring
            # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
            sig { returns(T.nilable(String)) }
            attr_accessor :tax_behavior
            # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :unit_amount
            # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
            sig { returns(T.nilable(String)) }
            attr_accessor :unit_amount_decimal
            sig {
              params(currency: String, product: String, recurring: ::Stripe::SubscriptionScheduleService::UpdateParams::Phase::Item::PriceData::Recurring, tax_behavior: T.nilable(String), unit_amount: T.nilable(Integer), unit_amount_decimal: T.nilable(String)).void
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
          # Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period. Pass an empty string to remove previously-defined thresholds.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::SubscriptionScheduleService::UpdateParams::Phase::Item::BillingThresholds)))
           }
          attr_accessor :billing_thresholds
          # The coupons to redeem into discounts for the subscription item.
          sig {
            returns(T.nilable(T.any(String, T::Array[::Stripe::SubscriptionScheduleService::UpdateParams::Phase::Item::Discount])))
           }
          attr_accessor :discounts
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to a configuration item. Metadata on a configuration item will update the underlying subscription item's `metadata` when the phase is entered, adding new keys and replacing existing keys. Individual keys in the subscription item's `metadata` can be unset by posting an empty value to them in the configuration item's `metadata`. To unset all keys in the subscription item's `metadata`, update the subscription item directly or unset every key individually from the configuration item's `metadata`.
          sig { returns(T.nilable(T::Hash[String, String])) }
          attr_accessor :metadata
          # The plan ID to subscribe to. You may specify the same ID in `plan` and `price`.
          sig { returns(T.nilable(String)) }
          attr_accessor :plan
          # The ID of the price object.
          sig { returns(T.nilable(String)) }
          attr_accessor :price
          # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline.
          sig {
            returns(T.nilable(::Stripe::SubscriptionScheduleService::UpdateParams::Phase::Item::PriceData))
           }
          attr_accessor :price_data
          # Quantity for the given price. Can be set only if the price's `usage_type` is `licensed` and not `metered`.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :quantity
          # A list of [Tax Rate](https://stripe.com/docs/api/tax_rates) ids. These Tax Rates will override the [`default_tax_rates`](https://stripe.com/docs/api/subscriptions/create#create_subscription-default_tax_rates) on the Subscription. When updating, pass an empty string to remove previously-defined tax rates.
          sig { returns(T.nilable(T.any(String, T::Array[String]))) }
          attr_accessor :tax_rates
          sig {
            params(billing_thresholds: T.nilable(T.any(String, ::Stripe::SubscriptionScheduleService::UpdateParams::Phase::Item::BillingThresholds)), discounts: T.nilable(T.any(String, T::Array[::Stripe::SubscriptionScheduleService::UpdateParams::Phase::Item::Discount])), metadata: T.nilable(T::Hash[String, String]), plan: T.nilable(String), price: T.nilable(String), price_data: T.nilable(::Stripe::SubscriptionScheduleService::UpdateParams::Phase::Item::PriceData), quantity: T.nilable(Integer), tax_rates: T.nilable(T.any(String, T::Array[String]))).void
           }
          def initialize(
            billing_thresholds: nil,
            discounts: nil,
            metadata: nil,
            plan: nil,
            price: nil,
            price_data: nil,
            quantity: nil,
            tax_rates: nil
          ); end
        end
        class TransferData < Stripe::RequestParams
          # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the destination account. By default, the entire amount is transferred to the destination.
          sig { returns(T.nilable(Float)) }
          attr_accessor :amount_percent
          # ID of an existing, connected Stripe account.
          sig { returns(String) }
          attr_accessor :destination
          sig { params(amount_percent: T.nilable(Float), destination: String).void }
          def initialize(amount_percent: nil, destination: nil); end
        end
        # A list of prices and quantities that will generate invoice items appended to the next invoice for this phase. You may pass up to 20 items.
        sig {
          returns(T.nilable(T::Array[::Stripe::SubscriptionScheduleService::UpdateParams::Phase::AddInvoiceItem]))
         }
        attr_accessor :add_invoice_items
        # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. The request must be made by a platform account on a connected account in order to set an application fee percentage. For more information, see the application fees [documentation](https://stripe.com/docs/connect/subscriptions#collecting-fees-on-subscriptions).
        sig { returns(T.nilable(Float)) }
        attr_accessor :application_fee_percent
        # Automatic tax settings for this phase.
        sig {
          returns(T.nilable(::Stripe::SubscriptionScheduleService::UpdateParams::Phase::AutomaticTax))
         }
        attr_accessor :automatic_tax
        # Can be set to `phase_start` to set the anchor to the start of the phase or `automatic` to automatically change it if needed. Cannot be set to `phase_start` if this phase specifies a trial. For more information, see the billing cycle [documentation](https://stripe.com/docs/billing/subscriptions/billing-cycle).
        sig { returns(T.nilable(String)) }
        attr_accessor :billing_cycle_anchor
        # Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period. Pass an empty string to remove previously-defined thresholds.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::SubscriptionScheduleService::UpdateParams::Phase::BillingThresholds)))
         }
        attr_accessor :billing_thresholds
        # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay the underlying subscription at the end of each billing cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`. Defaults to `charge_automatically` on creation.
        sig { returns(T.nilable(String)) }
        attr_accessor :collection_method
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(T.nilable(String)) }
        attr_accessor :currency
        # ID of the default payment method for the subscription schedule. It must belong to the customer associated with the subscription schedule. If not set, invoices will use the default payment method in the customer's invoice settings.
        sig { returns(T.nilable(String)) }
        attr_accessor :default_payment_method
        # A list of [Tax Rate](https://stripe.com/docs/api/tax_rates) ids. These Tax Rates will set the Subscription's [`default_tax_rates`](https://stripe.com/docs/api/subscriptions/create#create_subscription-default_tax_rates), which means they will be the Invoice's [`default_tax_rates`](https://stripe.com/docs/api/invoices/create#create_invoice-default_tax_rates) for any Invoices issued by the Subscription during this Phase.
        sig { returns(T.nilable(T.any(String, T::Array[String]))) }
        attr_accessor :default_tax_rates
        # Subscription description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
        sig { returns(T.nilable(String)) }
        attr_accessor :description
        # The coupons to redeem into discounts for the schedule phase. If not specified, inherits the discount from the subscription's customer. Pass an empty string to avoid inheriting any discounts.
        sig {
          returns(T.nilable(T.any(String, T::Array[::Stripe::SubscriptionScheduleService::UpdateParams::Phase::Discount])))
         }
        attr_accessor :discounts
        # The number of intervals the phase should last. If set, `end_date` must not be set.
        sig {
          returns(T.nilable(::Stripe::SubscriptionScheduleService::UpdateParams::Phase::Duration))
         }
        attr_accessor :duration
        # The date at which this phase of the subscription schedule ends. If set, `iterations` must not be set.
        sig { returns(T.nilable(T.any(Integer, String))) }
        attr_accessor :end_date
        # All invoices will be billed using the specified settings.
        sig {
          returns(T.nilable(::Stripe::SubscriptionScheduleService::UpdateParams::Phase::InvoiceSettings))
         }
        attr_accessor :invoice_settings
        # List of configuration items, each with an attached price, to apply during this phase of the subscription schedule.
        sig { returns(T::Array[::Stripe::SubscriptionScheduleService::UpdateParams::Phase::Item]) }
        attr_accessor :items
        # Integer representing the multiplier applied to the price interval. For example, `iterations=2` applied to a price with `interval=month` and `interval_count=3` results in a phase of duration `2 * 3 months = 6 months`. If set, `end_date` must not be set. This parameter is deprecated and will be removed in a future version. Use `duration` instead.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :iterations
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to a phase. Metadata on a schedule's phase will update the underlying subscription's `metadata` when the phase is entered, adding new keys and replacing existing keys in the subscription's `metadata`. Individual keys in the subscription's `metadata` can be unset by posting an empty value to them in the phase's `metadata`. To unset all keys in the subscription's `metadata`, update the subscription directly or unset every key individually from the phase's `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        # The account on behalf of which to charge, for each of the associated subscription's invoices.
        sig { returns(T.nilable(String)) }
        attr_accessor :on_behalf_of
        # Controls whether the subscription schedule should create [prorations](https://stripe.com/docs/billing/subscriptions/prorations) when transitioning to this phase if there is a difference in billing configuration. It's different from the request-level [proration_behavior](https://stripe.com/docs/api/subscription_schedules/update#update_subscription_schedule-proration_behavior) parameter which controls what happens if the update request affects the billing configuration (item price, quantity, etc.) of the current phase.
        sig { returns(T.nilable(String)) }
        attr_accessor :proration_behavior
        # The date at which this phase of the subscription schedule starts or `now`. Must be set on the first phase.
        sig { returns(T.nilable(T.any(Integer, String))) }
        attr_accessor :start_date
        # The data with which to automatically create a Transfer for each of the associated subscription's invoices.
        sig {
          returns(T.nilable(::Stripe::SubscriptionScheduleService::UpdateParams::Phase::TransferData))
         }
        attr_accessor :transfer_data
        # If set to true the entire phase is counted as a trial and the customer will not be charged for any fees.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :trial
        # Sets the phase to trialing from the start date to this date. Must be before the phase end date, can not be combined with `trial`
        sig { returns(T.nilable(T.any(Integer, String))) }
        attr_accessor :trial_end
        sig {
          params(add_invoice_items: T.nilable(T::Array[::Stripe::SubscriptionScheduleService::UpdateParams::Phase::AddInvoiceItem]), application_fee_percent: T.nilable(Float), automatic_tax: T.nilable(::Stripe::SubscriptionScheduleService::UpdateParams::Phase::AutomaticTax), billing_cycle_anchor: T.nilable(String), billing_thresholds: T.nilable(T.any(String, ::Stripe::SubscriptionScheduleService::UpdateParams::Phase::BillingThresholds)), collection_method: T.nilable(String), currency: T.nilable(String), default_payment_method: T.nilable(String), default_tax_rates: T.nilable(T.any(String, T::Array[String])), description: T.nilable(String), discounts: T.nilable(T.any(String, T::Array[::Stripe::SubscriptionScheduleService::UpdateParams::Phase::Discount])), duration: T.nilable(::Stripe::SubscriptionScheduleService::UpdateParams::Phase::Duration), end_date: T.nilable(T.any(Integer, String)), invoice_settings: T.nilable(::Stripe::SubscriptionScheduleService::UpdateParams::Phase::InvoiceSettings), items: T::Array[::Stripe::SubscriptionScheduleService::UpdateParams::Phase::Item], iterations: T.nilable(Integer), metadata: T.nilable(T::Hash[String, String]), on_behalf_of: T.nilable(String), proration_behavior: T.nilable(String), start_date: T.nilable(T.any(Integer, String)), transfer_data: T.nilable(::Stripe::SubscriptionScheduleService::UpdateParams::Phase::TransferData), trial: T.nilable(T::Boolean), trial_end: T.nilable(T.any(Integer, String))).void
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
          end_date: nil,
          invoice_settings: nil,
          items: nil,
          iterations: nil,
          metadata: nil,
          on_behalf_of: nil,
          proration_behavior: nil,
          start_date: nil,
          transfer_data: nil,
          trial: nil,
          trial_end: nil
        ); end
      end
      # Object representing the subscription schedule's default settings.
      sig {
        returns(T.nilable(::Stripe::SubscriptionScheduleService::UpdateParams::DefaultSettings))
       }
      attr_accessor :default_settings
      # Behavior of the subscription schedule and underlying subscription when it ends. Possible values are `release` or `cancel` with the default being `release`. `release` will end the subscription schedule and keep the underlying subscription running. `cancel` will end the subscription schedule and cancel the underlying subscription.
      sig { returns(T.nilable(String)) }
      attr_accessor :end_behavior
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      attr_accessor :metadata
      # List representing phases of the subscription schedule. Each phase can be customized to have different durations, plans, and coupons. If there are multiple phases, the `end_date` of one phase will always equal the `start_date` of the next phase. Note that past phases can be omitted.
      sig {
        returns(T.nilable(T::Array[::Stripe::SubscriptionScheduleService::UpdateParams::Phase]))
       }
      attr_accessor :phases
      # If the update changes the billing configuration (item price, quantity, etc.) of the current phase, indicates how prorations from this change should be handled. The default value is `create_prorations`.
      sig { returns(T.nilable(String)) }
      attr_accessor :proration_behavior
      sig {
        params(default_settings: T.nilable(::Stripe::SubscriptionScheduleService::UpdateParams::DefaultSettings), end_behavior: T.nilable(String), expand: T.nilable(T::Array[String]), metadata: T.nilable(T.any(String, T::Hash[String, String])), phases: T.nilable(T::Array[::Stripe::SubscriptionScheduleService::UpdateParams::Phase]), proration_behavior: T.nilable(String)).void
       }
      def initialize(
        default_settings: nil,
        end_behavior: nil,
        expand: nil,
        metadata: nil,
        phases: nil,
        proration_behavior: nil
      ); end
    end
    class CancelParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # If the subscription schedule is `active`, indicates if a final invoice will be generated that contains any un-invoiced metered usage and new/pending proration invoice items. Defaults to `true`.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :invoice_now
      # If the subscription schedule is `active`, indicates if the cancellation should be prorated. Defaults to `true`.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :prorate
      sig {
        params(expand: T.nilable(T::Array[String]), invoice_now: T.nilable(T::Boolean), prorate: T.nilable(T::Boolean)).void
       }
      def initialize(expand: nil, invoice_now: nil, prorate: nil); end
    end
    class ReleaseParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # Keep any cancellation on the subscription that the schedule has set
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :preserve_cancel_date
      sig {
        params(expand: T.nilable(T::Array[String]), preserve_cancel_date: T.nilable(T::Boolean)).void
       }
      def initialize(expand: nil, preserve_cancel_date: nil); end
    end
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