# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class SubscriptionService < StripeService
    class CancelParams < Stripe::RequestParams
      class CancellationDetails < Stripe::RequestParams
        # Additional comments about why the user canceled the subscription, if the subscription was canceled explicitly by the user.
        sig { returns(T.nilable(String)) }
        attr_accessor :comment
        # The customer submitted reason for why they canceled, if the subscription was canceled explicitly by the user.
        sig { returns(T.nilable(String)) }
        attr_accessor :feedback
        sig { params(comment: T.nilable(String), feedback: T.nilable(String)).void }
        def initialize(comment: nil, feedback: nil); end
      end
      # Details about why this subscription was cancelled
      sig { returns(::Stripe::SubscriptionService::CancelParams::CancellationDetails) }
      attr_accessor :cancellation_details
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # Will generate a final invoice that invoices for any un-invoiced metered usage and new/pending proration invoice items. Defaults to `false`.
      sig { returns(T::Boolean) }
      attr_accessor :invoice_now
      # Will generate a proration invoice item that credits remaining unused time until the subscription period end. Defaults to `false`.
      sig { returns(T::Boolean) }
      attr_accessor :prorate
      sig {
        params(cancellation_details: ::Stripe::SubscriptionService::CancelParams::CancellationDetails, expand: T::Array[String], invoice_now: T::Boolean, prorate: T::Boolean).void
       }
      def initialize(cancellation_details: nil, expand: nil, invoice_now: nil, prorate: nil); end
    end
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      sig { params(expand: T::Array[String]).void }
      def initialize(expand: nil); end
    end
    class UpdateParams < Stripe::RequestParams
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
              returns(::Stripe::SubscriptionService::UpdateParams::AddInvoiceItem::Discount::DiscountEnd::Duration)
             }
            attr_accessor :duration
            # A precise Unix timestamp for the discount to end. Must be in the future.
            sig { returns(Integer) }
            attr_accessor :timestamp
            # The type of calculation made to determine when the discount ends.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(duration: ::Stripe::SubscriptionService::UpdateParams::AddInvoiceItem::Discount::DiscountEnd::Duration, timestamp: Integer, type: String).void
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
            returns(::Stripe::SubscriptionService::UpdateParams::AddInvoiceItem::Discount::DiscountEnd)
           }
          attr_accessor :discount_end
          # ID of the promotion code to create a new discount for.
          sig { returns(String) }
          attr_accessor :promotion_code
          sig {
            params(coupon: String, discount: String, discount_end: ::Stripe::SubscriptionService::UpdateParams::AddInvoiceItem::Discount::DiscountEnd, promotion_code: String).void
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
          returns(T::Array[::Stripe::SubscriptionService::UpdateParams::AddInvoiceItem::Discount])
         }
        attr_accessor :discounts
        # The ID of the price object. One of `price` or `price_data` is required.
        sig { returns(String) }
        attr_accessor :price
        # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline. One of `price` or `price_data` is required.
        sig { returns(::Stripe::SubscriptionService::UpdateParams::AddInvoiceItem::PriceData) }
        attr_accessor :price_data
        # Quantity for this item. Defaults to 1.
        sig { returns(Integer) }
        attr_accessor :quantity
        # The tax rates which apply to the item. When set, the `default_tax_rates` do not apply to this item.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :tax_rates
        sig {
          params(discounts: T::Array[::Stripe::SubscriptionService::UpdateParams::AddInvoiceItem::Discount], price: String, price_data: ::Stripe::SubscriptionService::UpdateParams::AddInvoiceItem::PriceData, quantity: Integer, tax_rates: T.nilable(T::Array[String])).void
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
        sig { returns(::Stripe::SubscriptionService::UpdateParams::AutomaticTax::Liability) }
        attr_accessor :liability
        sig {
          params(enabled: T::Boolean, liability: ::Stripe::SubscriptionService::UpdateParams::AutomaticTax::Liability).void
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
      class CancellationDetails < Stripe::RequestParams
        # Additional comments about why the user canceled the subscription, if the subscription was canceled explicitly by the user.
        sig { returns(T.nilable(String)) }
        attr_accessor :comment
        # The customer submitted reason for why they canceled, if the subscription was canceled explicitly by the user.
        sig { returns(T.nilable(String)) }
        attr_accessor :feedback
        sig { params(comment: T.nilable(String), feedback: T.nilable(String)).void }
        def initialize(comment: nil, feedback: nil); end
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
            returns(::Stripe::SubscriptionService::UpdateParams::Discount::DiscountEnd::Duration)
           }
          attr_accessor :duration
          # A precise Unix timestamp for the discount to end. Must be in the future.
          sig { returns(Integer) }
          attr_accessor :timestamp
          # The type of calculation made to determine when the discount ends.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(duration: ::Stripe::SubscriptionService::UpdateParams::Discount::DiscountEnd::Duration, timestamp: Integer, type: String).void
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
        sig { returns(::Stripe::SubscriptionService::UpdateParams::Discount::DiscountEnd) }
        attr_accessor :discount_end
        # ID of the promotion code to create a new discount for.
        sig { returns(String) }
        attr_accessor :promotion_code
        sig {
          params(coupon: String, discount: String, discount_end: ::Stripe::SubscriptionService::UpdateParams::Discount::DiscountEnd, promotion_code: String).void
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
        # The account tax IDs associated with the subscription. Will be set on invoices generated by the subscription.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :account_tax_ids
        # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
        sig { returns(::Stripe::SubscriptionService::UpdateParams::InvoiceSettings::Issuer) }
        attr_accessor :issuer
        sig {
          params(account_tax_ids: T.nilable(T::Array[String]), issuer: ::Stripe::SubscriptionService::UpdateParams::InvoiceSettings::Issuer).void
         }
        def initialize(account_tax_ids: nil, issuer: nil); end
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
              returns(::Stripe::SubscriptionService::UpdateParams::Item::Discount::DiscountEnd::Duration)
             }
            attr_accessor :duration
            # A precise Unix timestamp for the discount to end. Must be in the future.
            sig { returns(Integer) }
            attr_accessor :timestamp
            # The type of calculation made to determine when the discount ends.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(duration: ::Stripe::SubscriptionService::UpdateParams::Item::Discount::DiscountEnd::Duration, timestamp: Integer, type: String).void
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
          sig { returns(::Stripe::SubscriptionService::UpdateParams::Item::Discount::DiscountEnd) }
          attr_accessor :discount_end
          # ID of the promotion code to create a new discount for.
          sig { returns(String) }
          attr_accessor :promotion_code
          sig {
            params(coupon: String, discount: String, discount_end: ::Stripe::SubscriptionService::UpdateParams::Item::Discount::DiscountEnd, promotion_code: String).void
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
          sig { returns(::Stripe::SubscriptionService::UpdateParams::Item::PriceData::Recurring) }
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
            params(currency: String, product: String, recurring: ::Stripe::SubscriptionService::UpdateParams::Item::PriceData::Recurring, tax_behavior: String, unit_amount: Integer, unit_amount_decimal: String).void
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
        # Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period. When updating, pass an empty string to remove previously-defined thresholds.
        sig {
          returns(T.nilable(::Stripe::SubscriptionService::UpdateParams::Item::BillingThresholds))
         }
        attr_accessor :billing_thresholds
        # Delete all usage for a given subscription item. You must pass this when deleting a usage records subscription item. `clear_usage` has no effect if the plan has a billing meter attached.
        sig { returns(T::Boolean) }
        attr_accessor :clear_usage
        # A flag that, if set to `true`, will delete the specified item.
        sig { returns(T::Boolean) }
        attr_accessor :deleted
        # The coupons to redeem into discounts for the subscription item.
        sig {
          returns(T.nilable(T::Array[::Stripe::SubscriptionService::UpdateParams::Item::Discount]))
         }
        attr_accessor :discounts
        # Subscription item to update.
        sig { returns(String) }
        attr_accessor :id
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        # Plan ID for this item, as a string.
        sig { returns(String) }
        attr_accessor :plan
        # The ID of the price object. One of `price` or `price_data` is required. When changing a subscription item's price, `quantity` is set to 1 unless a `quantity` parameter is provided.
        sig { returns(String) }
        attr_accessor :price
        # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline. One of `price` or `price_data` is required.
        sig { returns(::Stripe::SubscriptionService::UpdateParams::Item::PriceData) }
        attr_accessor :price_data
        # Quantity for this item.
        sig { returns(Integer) }
        attr_accessor :quantity
        # A list of [Tax Rate](https://stripe.com/docs/api/tax_rates) ids. These Tax Rates will override the [`default_tax_rates`](https://stripe.com/docs/api/subscriptions/create#create_subscription-default_tax_rates) on the Subscription. When updating, pass an empty string to remove previously-defined tax rates.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :tax_rates
        sig {
          params(billing_thresholds: T.nilable(::Stripe::SubscriptionService::UpdateParams::Item::BillingThresholds), clear_usage: T::Boolean, deleted: T::Boolean, discounts: T.nilable(T::Array[::Stripe::SubscriptionService::UpdateParams::Item::Discount]), id: String, metadata: T.nilable(T::Hash[String, String]), plan: String, price: String, price_data: ::Stripe::SubscriptionService::UpdateParams::Item::PriceData, quantity: Integer, tax_rates: T.nilable(T::Array[String])).void
         }
        def initialize(
          billing_thresholds: nil,
          clear_usage: nil,
          deleted: nil,
          discounts: nil,
          id: nil,
          metadata: nil,
          plan: nil,
          price: nil,
          price_data: nil,
          quantity: nil,
          tax_rates: nil
        ); end
      end
      class PauseCollection < Stripe::RequestParams
        # The payment collection behavior for this subscription while paused. One of `keep_as_draft`, `mark_uncollectible`, or `void`.
        sig { returns(String) }
        attr_accessor :behavior
        # The time after which the subscription will resume collecting payments.
        sig { returns(Integer) }
        attr_accessor :resumes_at
        sig { params(behavior: String, resumes_at: Integer).void }
        def initialize(behavior: nil, resumes_at: nil); end
      end
      class PaymentSettings < Stripe::RequestParams
        class PaymentMethodOptions < Stripe::RequestParams
          class AcssDebit < Stripe::RequestParams
            class MandateOptions < Stripe::RequestParams
              # Transaction type of the mandate.
              sig { returns(String) }
              attr_accessor :transaction_type
              sig { params(transaction_type: String).void }
              def initialize(transaction_type: nil); end
            end
            # Additional fields for Mandate creation
            sig {
              returns(::Stripe::SubscriptionService::UpdateParams::PaymentSettings::PaymentMethodOptions::AcssDebit::MandateOptions)
             }
            attr_accessor :mandate_options
            # Verification method for the intent
            sig { returns(String) }
            attr_accessor :verification_method
            sig {
              params(mandate_options: ::Stripe::SubscriptionService::UpdateParams::PaymentSettings::PaymentMethodOptions::AcssDebit::MandateOptions, verification_method: String).void
             }
            def initialize(mandate_options: nil, verification_method: nil); end
          end
          class Bancontact < Stripe::RequestParams
            # Preferred language of the Bancontact authorization page that the customer is redirected to.
            sig { returns(String) }
            attr_accessor :preferred_language
            sig { params(preferred_language: String).void }
            def initialize(preferred_language: nil); end
          end
          class Card < Stripe::RequestParams
            class MandateOptions < Stripe::RequestParams
              # Amount to be charged for future payments.
              sig { returns(Integer) }
              attr_accessor :amount
              # One of `fixed` or `maximum`. If `fixed`, the `amount` param refers to the exact amount to be charged in future payments. If `maximum`, the amount charged can be up to the value passed for the `amount` param.
              sig { returns(String) }
              attr_accessor :amount_type
              # A description of the mandate or subscription that is meant to be displayed to the customer.
              sig { returns(String) }
              attr_accessor :description
              sig { params(amount: Integer, amount_type: String, description: String).void }
              def initialize(amount: nil, amount_type: nil, description: nil); end
            end
            # Configuration options for setting up an eMandate for cards issued in India.
            sig {
              returns(::Stripe::SubscriptionService::UpdateParams::PaymentSettings::PaymentMethodOptions::Card::MandateOptions)
             }
            attr_accessor :mandate_options
            # Selected network to process this Subscription on. Depends on the available networks of the card attached to the Subscription. Can be only set confirm-time.
            sig { returns(String) }
            attr_accessor :network
            # We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://stripe.com/docs/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. Read our guide on [manually requesting 3D Secure](https://stripe.com/docs/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
            sig { returns(String) }
            attr_accessor :request_three_d_secure
            sig {
              params(mandate_options: ::Stripe::SubscriptionService::UpdateParams::PaymentSettings::PaymentMethodOptions::Card::MandateOptions, network: String, request_three_d_secure: String).void
             }
            def initialize(mandate_options: nil, network: nil, request_three_d_secure: nil); end
          end
          class CustomerBalance < Stripe::RequestParams
            class BankTransfer < Stripe::RequestParams
              class EuBankTransfer < Stripe::RequestParams
                # The desired country code of the bank account information. Permitted values include: `BE`, `DE`, `ES`, `FR`, `IE`, or `NL`.
                sig { returns(String) }
                attr_accessor :country
                sig { params(country: String).void }
                def initialize(country: nil); end
              end
              # Configuration for eu_bank_transfer funding type.
              sig {
                returns(::Stripe::SubscriptionService::UpdateParams::PaymentSettings::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer)
               }
              attr_accessor :eu_bank_transfer
              # The bank transfer type that can be used for funding. Permitted values include: `eu_bank_transfer`, `gb_bank_transfer`, `jp_bank_transfer`, `mx_bank_transfer`, or `us_bank_transfer`.
              sig { returns(String) }
              attr_accessor :type
              sig {
                params(eu_bank_transfer: ::Stripe::SubscriptionService::UpdateParams::PaymentSettings::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer, type: String).void
               }
              def initialize(eu_bank_transfer: nil, type: nil); end
            end
            # Configuration for the bank transfer funding type, if the `funding_type` is set to `bank_transfer`.
            sig {
              returns(::Stripe::SubscriptionService::UpdateParams::PaymentSettings::PaymentMethodOptions::CustomerBalance::BankTransfer)
             }
            attr_accessor :bank_transfer
            # The funding method type to be used when there are not enough funds in the customer balance. Permitted values include: `bank_transfer`.
            sig { returns(String) }
            attr_accessor :funding_type
            sig {
              params(bank_transfer: ::Stripe::SubscriptionService::UpdateParams::PaymentSettings::PaymentMethodOptions::CustomerBalance::BankTransfer, funding_type: String).void
             }
            def initialize(bank_transfer: nil, funding_type: nil); end
          end
          class IdBankTransfer < Stripe::RequestParams

          end
          class Konbini < Stripe::RequestParams

          end
          class SepaDebit < Stripe::RequestParams

          end
          class UsBankAccount < Stripe::RequestParams
            class FinancialConnections < Stripe::RequestParams
              class Filters < Stripe::RequestParams
                # The account subcategories to use to filter for selectable accounts. Valid subcategories are `checking` and `savings`.
                sig { returns(T::Array[String]) }
                attr_accessor :account_subcategories
                # ID of the institution to use to filter for selectable accounts.
                sig { returns(String) }
                attr_accessor :institution
                sig { params(account_subcategories: T::Array[String], institution: String).void }
                def initialize(account_subcategories: nil, institution: nil); end
              end
              # Provide filters for the linked accounts that the customer can select for the payment method.
              sig {
                returns(::Stripe::SubscriptionService::UpdateParams::PaymentSettings::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters)
               }
              attr_accessor :filters
              # The list of permissions to request. If this parameter is passed, the `payment_method` permission must be included. Valid permissions include: `balances`, `ownership`, `payment_method`, and `transactions`.
              sig { returns(T::Array[String]) }
              attr_accessor :permissions
              # List of data features that you would like to retrieve upon account creation.
              sig { returns(T::Array[String]) }
              attr_accessor :prefetch
              sig {
                params(filters: ::Stripe::SubscriptionService::UpdateParams::PaymentSettings::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters, permissions: T::Array[String], prefetch: T::Array[String]).void
               }
              def initialize(filters: nil, permissions: nil, prefetch: nil); end
            end
            # Additional fields for Financial Connections Session creation
            sig {
              returns(::Stripe::SubscriptionService::UpdateParams::PaymentSettings::PaymentMethodOptions::UsBankAccount::FinancialConnections)
             }
            attr_accessor :financial_connections
            # Verification method for the intent
            sig { returns(String) }
            attr_accessor :verification_method
            sig {
              params(financial_connections: ::Stripe::SubscriptionService::UpdateParams::PaymentSettings::PaymentMethodOptions::UsBankAccount::FinancialConnections, verification_method: String).void
             }
            def initialize(financial_connections: nil, verification_method: nil); end
          end
          # This sub-hash contains details about the Canadian pre-authorized debit payment method options to pass to the invoice’s PaymentIntent.
          sig {
            returns(T.nilable(::Stripe::SubscriptionService::UpdateParams::PaymentSettings::PaymentMethodOptions::AcssDebit))
           }
          attr_accessor :acss_debit
          # This sub-hash contains details about the Bancontact payment method options to pass to the invoice’s PaymentIntent.
          sig {
            returns(T.nilable(::Stripe::SubscriptionService::UpdateParams::PaymentSettings::PaymentMethodOptions::Bancontact))
           }
          attr_accessor :bancontact
          # This sub-hash contains details about the Card payment method options to pass to the invoice’s PaymentIntent.
          sig {
            returns(T.nilable(::Stripe::SubscriptionService::UpdateParams::PaymentSettings::PaymentMethodOptions::Card))
           }
          attr_accessor :card
          # This sub-hash contains details about the Bank transfer payment method options to pass to the invoice’s PaymentIntent.
          sig {
            returns(T.nilable(::Stripe::SubscriptionService::UpdateParams::PaymentSettings::PaymentMethodOptions::CustomerBalance))
           }
          attr_accessor :customer_balance
          # This sub-hash contains details about the Indonesia bank transfer payment method options to pass to the invoice’s PaymentIntent.
          sig {
            returns(T.nilable(::Stripe::SubscriptionService::UpdateParams::PaymentSettings::PaymentMethodOptions::IdBankTransfer))
           }
          attr_accessor :id_bank_transfer
          # This sub-hash contains details about the Konbini payment method options to pass to the invoice’s PaymentIntent.
          sig {
            returns(T.nilable(::Stripe::SubscriptionService::UpdateParams::PaymentSettings::PaymentMethodOptions::Konbini))
           }
          attr_accessor :konbini
          # This sub-hash contains details about the SEPA Direct Debit payment method options to pass to the invoice’s PaymentIntent.
          sig {
            returns(T.nilable(::Stripe::SubscriptionService::UpdateParams::PaymentSettings::PaymentMethodOptions::SepaDebit))
           }
          attr_accessor :sepa_debit
          # This sub-hash contains details about the ACH direct debit payment method options to pass to the invoice’s PaymentIntent.
          sig {
            returns(T.nilable(::Stripe::SubscriptionService::UpdateParams::PaymentSettings::PaymentMethodOptions::UsBankAccount))
           }
          attr_accessor :us_bank_account
          sig {
            params(acss_debit: T.nilable(::Stripe::SubscriptionService::UpdateParams::PaymentSettings::PaymentMethodOptions::AcssDebit), bancontact: T.nilable(::Stripe::SubscriptionService::UpdateParams::PaymentSettings::PaymentMethodOptions::Bancontact), card: T.nilable(::Stripe::SubscriptionService::UpdateParams::PaymentSettings::PaymentMethodOptions::Card), customer_balance: T.nilable(::Stripe::SubscriptionService::UpdateParams::PaymentSettings::PaymentMethodOptions::CustomerBalance), id_bank_transfer: T.nilable(::Stripe::SubscriptionService::UpdateParams::PaymentSettings::PaymentMethodOptions::IdBankTransfer), konbini: T.nilable(::Stripe::SubscriptionService::UpdateParams::PaymentSettings::PaymentMethodOptions::Konbini), sepa_debit: T.nilable(::Stripe::SubscriptionService::UpdateParams::PaymentSettings::PaymentMethodOptions::SepaDebit), us_bank_account: T.nilable(::Stripe::SubscriptionService::UpdateParams::PaymentSettings::PaymentMethodOptions::UsBankAccount)).void
           }
          def initialize(
            acss_debit: nil,
            bancontact: nil,
            card: nil,
            customer_balance: nil,
            id_bank_transfer: nil,
            konbini: nil,
            sepa_debit: nil,
            us_bank_account: nil
          ); end
        end
        # Payment-method-specific configuration to provide to invoices created by the subscription.
        sig {
          returns(::Stripe::SubscriptionService::UpdateParams::PaymentSettings::PaymentMethodOptions)
         }
        attr_accessor :payment_method_options
        # The list of payment method types (e.g. card) to provide to the invoice’s PaymentIntent. If not set, Stripe attempts to automatically determine the types to use by looking at the invoice’s default payment method, the subscription’s default payment method, the customer’s default payment method, and your [invoice template settings](https://dashboard.stripe.com/settings/billing/invoice). Should not be specified with payment_method_configuration
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :payment_method_types
        # Configure whether Stripe updates `subscription.default_payment_method` when payment succeeds. Defaults to `off` if unspecified.
        sig { returns(String) }
        attr_accessor :save_default_payment_method
        sig {
          params(payment_method_options: ::Stripe::SubscriptionService::UpdateParams::PaymentSettings::PaymentMethodOptions, payment_method_types: T.nilable(T::Array[String]), save_default_payment_method: String).void
         }
        def initialize(
          payment_method_options: nil,
          payment_method_types: nil,
          save_default_payment_method: nil
        ); end
      end
      class PendingInvoiceItemInterval < Stripe::RequestParams
        # Specifies invoicing frequency. Either `day`, `week`, `month` or `year`.
        sig { returns(String) }
        attr_accessor :interval
        # The number of intervals between invoices. For example, `interval=month` and `interval_count=3` bills every 3 months. Maximum of one year interval allowed (1 year, 12 months, or 52 weeks).
        sig { returns(Integer) }
        attr_accessor :interval_count
        sig { params(interval: String, interval_count: Integer).void }
        def initialize(interval: nil, interval_count: nil); end
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
          # Indicates how the subscription should change when the trial ends if the user did not provide a payment method.
          sig { returns(String) }
          attr_accessor :missing_payment_method
          sig { params(missing_payment_method: String).void }
          def initialize(missing_payment_method: nil); end
        end
        # Defines how the subscription should behave when the user's free trial ends.
        sig { returns(::Stripe::SubscriptionService::UpdateParams::TrialSettings::EndBehavior) }
        attr_accessor :end_behavior
        sig {
          params(end_behavior: ::Stripe::SubscriptionService::UpdateParams::TrialSettings::EndBehavior).void
         }
        def initialize(end_behavior: nil); end
      end
      # A list of prices and quantities that will generate invoice items appended to the next invoice for this subscription. You may pass up to 20 items.
      sig { returns(T::Array[::Stripe::SubscriptionService::UpdateParams::AddInvoiceItem]) }
      attr_accessor :add_invoice_items
      # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. The request must be made by a platform account on a connected account in order to set an application fee percentage. For more information, see the application fees [documentation](https://stripe.com/docs/connect/subscriptions#collecting-fees-on-subscriptions).
      sig { returns(T.nilable(Float)) }
      attr_accessor :application_fee_percent
      # Automatic tax settings for this subscription. We recommend you only include this parameter when the existing value is being changed.
      sig { returns(::Stripe::SubscriptionService::UpdateParams::AutomaticTax) }
      attr_accessor :automatic_tax
      # Either `now` or `unchanged`. Setting the value to `now` resets the subscription's billing cycle anchor to the current time (in UTC). For more information, see the billing cycle [documentation](https://stripe.com/docs/billing/subscriptions/billing-cycle).
      sig { returns(String) }
      attr_accessor :billing_cycle_anchor
      # Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period. Pass an empty string to remove previously-defined thresholds.
      sig { returns(T.nilable(::Stripe::SubscriptionService::UpdateParams::BillingThresholds)) }
      attr_accessor :billing_thresholds
      # A timestamp at which the subscription should cancel. If set to a date before the current period ends, this will cause a proration if prorations have been enabled using `proration_behavior`. If set during a future period, this will always cause a proration for that period.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :cancel_at
      # Indicate whether this subscription should cancel at the end of the current period (`current_period_end`). Defaults to `false`.
      sig { returns(T::Boolean) }
      attr_accessor :cancel_at_period_end
      # Details about why this subscription was cancelled
      sig { returns(::Stripe::SubscriptionService::UpdateParams::CancellationDetails) }
      attr_accessor :cancellation_details
      # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay this subscription at the end of the cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`. Defaults to `charge_automatically`.
      sig { returns(String) }
      attr_accessor :collection_method
      # The ID of the coupon to apply to this subscription. A coupon applied to a subscription will only affect invoices created for that particular subscription. This field has been deprecated and will be removed in a future API version. Use `discounts` instead.
      sig { returns(String) }
      attr_accessor :coupon
      # Number of days a customer has to pay invoices generated by this subscription. Valid only for subscriptions where `collection_method` is set to `send_invoice`.
      sig { returns(Integer) }
      attr_accessor :days_until_due
      # ID of the default payment method for the subscription. It must belong to the customer associated with the subscription. This takes precedence over `default_source`. If neither are set, invoices will use the customer's [invoice_settings.default_payment_method](https://stripe.com/docs/api/customers/object#customer_object-invoice_settings-default_payment_method) or [default_source](https://stripe.com/docs/api/customers/object#customer_object-default_source).
      sig { returns(String) }
      attr_accessor :default_payment_method
      # ID of the default payment source for the subscription. It must belong to the customer associated with the subscription and be in a chargeable state. If `default_payment_method` is also set, `default_payment_method` will take precedence. If neither are set, invoices will use the customer's [invoice_settings.default_payment_method](https://stripe.com/docs/api/customers/object#customer_object-invoice_settings-default_payment_method) or [default_source](https://stripe.com/docs/api/customers/object#customer_object-default_source).
      sig { returns(T.nilable(String)) }
      attr_accessor :default_source
      # The tax rates that will apply to any subscription item that does not have `tax_rates` set. Invoices created will have their `default_tax_rates` populated from the subscription. Pass an empty string to remove previously-defined tax rates.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :default_tax_rates
      # The subscription's description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
      sig { returns(T.nilable(String)) }
      attr_accessor :description
      # The coupons to redeem into discounts for the subscription. If not specified or empty, inherits the discount from the subscription's customer.
      sig { returns(T.nilable(T::Array[::Stripe::SubscriptionService::UpdateParams::Discount])) }
      attr_accessor :discounts
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # All invoices will be billed using the specified settings.
      sig { returns(::Stripe::SubscriptionService::UpdateParams::InvoiceSettings) }
      attr_accessor :invoice_settings
      # A list of up to 20 subscription items, each with an attached price.
      sig { returns(T::Array[::Stripe::SubscriptionService::UpdateParams::Item]) }
      attr_accessor :items
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_accessor :metadata
      # Indicates if a customer is on or off-session while an invoice payment is attempted. Defaults to `false` (on-session).
      sig { returns(T::Boolean) }
      attr_accessor :off_session
      # The account on behalf of which to charge, for each of the subscription's invoices.
      sig { returns(T.nilable(String)) }
      attr_accessor :on_behalf_of
      # If specified, payment collection for this subscription will be paused. Note that the subscription status will be unchanged and will not be updated to `paused`. Learn more about [pausing collection](https://stripe.com/docs/billing/subscriptions/pause-payment).
      sig { returns(T.nilable(::Stripe::SubscriptionService::UpdateParams::PauseCollection)) }
      attr_accessor :pause_collection
      # Use `allow_incomplete` to transition the subscription to `status=past_due` if a payment is required but cannot be paid. This allows you to manage scenarios where additional user actions are needed to pay a subscription's invoice. For example, SCA regulation may require 3DS authentication to complete payment. See the [SCA Migration Guide](https://stripe.com/docs/billing/migration/strong-customer-authentication) for Billing to learn more. This is the default behavior.
      #
      # Use `default_incomplete` to transition the subscription to `status=past_due` when payment is required and await explicit confirmation of the invoice's payment intent. This allows simpler management of scenarios where additional user actions are needed to pay a subscription’s invoice. Such as failed payments, [SCA regulation](https://stripe.com/docs/billing/migration/strong-customer-authentication), or collecting a mandate for a bank debit payment method.
      #
      # Use `pending_if_incomplete` to update the subscription using [pending updates](https://stripe.com/docs/billing/subscriptions/pending-updates). When you use `pending_if_incomplete` you can only pass the parameters [supported by pending updates](https://stripe.com/docs/billing/pending-updates-reference#supported-attributes).
      #
      # Use `error_if_incomplete` if you want Stripe to return an HTTP 402 status code if a subscription's invoice cannot be paid. For example, if a payment method requires 3DS authentication due to SCA regulation and further user action is needed, this parameter does not update the subscription and returns an error instead. This was the default behavior for API versions prior to 2019-03-14. See the [changelog](https://stripe.com/docs/upgrades#2019-03-14) to learn more.
      sig { returns(String) }
      attr_accessor :payment_behavior
      # Payment settings to pass to invoices created by the subscription.
      sig { returns(::Stripe::SubscriptionService::UpdateParams::PaymentSettings) }
      attr_accessor :payment_settings
      # Specifies an interval for how often to bill for any pending invoice items. It is analogous to calling [Create an invoice](https://stripe.com/docs/api#create_invoice) for the given subscription at the specified interval.
      sig {
        returns(T.nilable(::Stripe::SubscriptionService::UpdateParams::PendingInvoiceItemInterval))
       }
      attr_accessor :pending_invoice_item_interval
      # If specified, the invoicing for the given billing cycle iterations will be processed now.
      sig { returns(::Stripe::SubscriptionService::UpdateParams::Prebilling) }
      attr_accessor :prebilling
      # The promotion code to apply to this subscription. A promotion code applied to a subscription will only affect invoices created for that particular subscription. This field has been deprecated and will be removed in a future API version. Use `discounts` instead.
      sig { returns(String) }
      attr_accessor :promotion_code
      # Determines how to handle [prorations](https://stripe.com/docs/billing/subscriptions/prorations) when the billing cycle changes (e.g., when switching plans, resetting `billing_cycle_anchor=now`, or starting a trial), or if an item's `quantity` changes. The default value is `create_prorations`.
      sig { returns(String) }
      attr_accessor :proration_behavior
      # If set, the proration will be calculated as though the subscription was updated at the given time. This can be used to apply exactly the same proration that was previewed with [upcoming invoice](https://stripe.com/docs/api#upcoming_invoice) endpoint. It can also be used to implement custom proration logic, such as prorating by day instead of by second, by providing the time that you wish to use for proration calculations.
      sig { returns(Integer) }
      attr_accessor :proration_date
      # If specified, the funds from the subscription's invoices will be transferred to the destination and the ID of the resulting transfers will be found on the resulting charges. This will be unset if you POST an empty value.
      sig { returns(T.nilable(::Stripe::SubscriptionService::UpdateParams::TransferData)) }
      attr_accessor :transfer_data
      # Unix timestamp representing the end of the trial period the customer will get before being charged for the first time. This will always overwrite any trials that might apply via a subscribed plan. If set, trial_end will override the default trial period of the plan the customer is being subscribed to. The special value `now` can be provided to end the customer's trial immediately. Can be at most two years from `billing_cycle_anchor`.
      sig { returns(T.any(String, Integer)) }
      attr_accessor :trial_end
      # Indicates if a plan's `trial_period_days` should be applied to the subscription. Setting `trial_end` per subscription is preferred, and this defaults to `false`. Setting this flag to `true` together with `trial_end` is not allowed. See [Using trial periods on subscriptions](https://stripe.com/docs/billing/subscriptions/trials) to learn more.
      sig { returns(T::Boolean) }
      attr_accessor :trial_from_plan
      # Settings related to subscription trials.
      sig { returns(::Stripe::SubscriptionService::UpdateParams::TrialSettings) }
      attr_accessor :trial_settings
      sig {
        params(add_invoice_items: T::Array[::Stripe::SubscriptionService::UpdateParams::AddInvoiceItem], application_fee_percent: T.nilable(Float), automatic_tax: ::Stripe::SubscriptionService::UpdateParams::AutomaticTax, billing_cycle_anchor: String, billing_thresholds: T.nilable(::Stripe::SubscriptionService::UpdateParams::BillingThresholds), cancel_at: T.nilable(Integer), cancel_at_period_end: T::Boolean, cancellation_details: ::Stripe::SubscriptionService::UpdateParams::CancellationDetails, collection_method: String, coupon: String, days_until_due: Integer, default_payment_method: String, default_source: T.nilable(String), default_tax_rates: T.nilable(T::Array[String]), description: T.nilable(String), discounts: T.nilable(T::Array[::Stripe::SubscriptionService::UpdateParams::Discount]), expand: T::Array[String], invoice_settings: ::Stripe::SubscriptionService::UpdateParams::InvoiceSettings, items: T::Array[::Stripe::SubscriptionService::UpdateParams::Item], metadata: T.nilable(T::Hash[String, String]), off_session: T::Boolean, on_behalf_of: T.nilable(String), pause_collection: T.nilable(::Stripe::SubscriptionService::UpdateParams::PauseCollection), payment_behavior: String, payment_settings: ::Stripe::SubscriptionService::UpdateParams::PaymentSettings, pending_invoice_item_interval: T.nilable(::Stripe::SubscriptionService::UpdateParams::PendingInvoiceItemInterval), prebilling: ::Stripe::SubscriptionService::UpdateParams::Prebilling, promotion_code: String, proration_behavior: String, proration_date: Integer, transfer_data: T.nilable(::Stripe::SubscriptionService::UpdateParams::TransferData), trial_end: T.any(String, Integer), trial_from_plan: T::Boolean, trial_settings: ::Stripe::SubscriptionService::UpdateParams::TrialSettings).void
       }
      def initialize(
        add_invoice_items: nil,
        application_fee_percent: nil,
        automatic_tax: nil,
        billing_cycle_anchor: nil,
        billing_thresholds: nil,
        cancel_at: nil,
        cancel_at_period_end: nil,
        cancellation_details: nil,
        collection_method: nil,
        coupon: nil,
        days_until_due: nil,
        default_payment_method: nil,
        default_source: nil,
        default_tax_rates: nil,
        description: nil,
        discounts: nil,
        expand: nil,
        invoice_settings: nil,
        items: nil,
        metadata: nil,
        off_session: nil,
        on_behalf_of: nil,
        pause_collection: nil,
        payment_behavior: nil,
        payment_settings: nil,
        pending_invoice_item_interval: nil,
        prebilling: nil,
        promotion_code: nil,
        proration_behavior: nil,
        proration_date: nil,
        transfer_data: nil,
        trial_end: nil,
        trial_from_plan: nil,
        trial_settings: nil
      ); end
    end
    class DeleteDiscountParams < Stripe::RequestParams

    end
    class ListParams < Stripe::RequestParams
      class AutomaticTax < Stripe::RequestParams
        # Enabled automatic tax calculation which will automatically compute tax rates on all invoices generated by the subscription.
        sig { returns(T::Boolean) }
        attr_accessor :enabled
        sig { params(enabled: T::Boolean).void }
        def initialize(enabled: nil); end
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
      class CurrentPeriodEnd < Stripe::RequestParams
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
      class CurrentPeriodStart < Stripe::RequestParams
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
      # Filter subscriptions by their automatic tax settings.
      sig { returns(::Stripe::SubscriptionService::ListParams::AutomaticTax) }
      attr_accessor :automatic_tax
      # The collection method of the subscriptions to retrieve. Either `charge_automatically` or `send_invoice`.
      sig { returns(String) }
      attr_accessor :collection_method
      # Only return subscriptions that were created during the given date interval.
      sig { returns(T.any(::Stripe::SubscriptionService::ListParams::Created, Integer)) }
      attr_accessor :created
      # Only return subscriptions whose current_period_end falls within the given date interval.
      sig { returns(T.any(::Stripe::SubscriptionService::ListParams::CurrentPeriodEnd, Integer)) }
      attr_accessor :current_period_end
      # Only return subscriptions whose current_period_start falls within the given date interval.
      sig { returns(T.any(::Stripe::SubscriptionService::ListParams::CurrentPeriodStart, Integer)) }
      attr_accessor :current_period_start
      # The ID of the customer whose subscriptions will be retrieved.
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
      # The ID of the plan whose subscriptions will be retrieved.
      sig { returns(String) }
      attr_accessor :plan
      # Filter for subscriptions that contain this recurring price ID.
      sig { returns(String) }
      attr_accessor :price
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(String) }
      attr_accessor :starting_after
      # The status of the subscriptions to retrieve. Passing in a value of `canceled` will return all canceled subscriptions, including those belonging to deleted customers. Pass `ended` to find subscriptions that are canceled and subscriptions that are expired due to [incomplete payment](https://stripe.com/docs/billing/subscriptions/overview#subscription-statuses). Passing in a value of `all` will return subscriptions of all statuses. If no value is supplied, all subscriptions that have not been canceled are returned.
      sig { returns(String) }
      attr_accessor :status
      # Filter for subscriptions that are associated with the specified test clock. The response will not include subscriptions with test clocks if this and the customer parameter is not set.
      sig { returns(String) }
      attr_accessor :test_clock
      sig {
        params(automatic_tax: ::Stripe::SubscriptionService::ListParams::AutomaticTax, collection_method: String, created: T.any(::Stripe::SubscriptionService::ListParams::Created, Integer), current_period_end: T.any(::Stripe::SubscriptionService::ListParams::CurrentPeriodEnd, Integer), current_period_start: T.any(::Stripe::SubscriptionService::ListParams::CurrentPeriodStart, Integer), customer: String, ending_before: String, expand: T::Array[String], limit: Integer, plan: String, price: String, starting_after: String, status: String, test_clock: String).void
       }
      def initialize(
        automatic_tax: nil,
        collection_method: nil,
        created: nil,
        current_period_end: nil,
        current_period_start: nil,
        customer: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        plan: nil,
        price: nil,
        starting_after: nil,
        status: nil,
        test_clock: nil
      ); end
    end
    class CreateParams < Stripe::RequestParams
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
              returns(::Stripe::SubscriptionService::CreateParams::AddInvoiceItem::Discount::DiscountEnd::Duration)
             }
            attr_accessor :duration
            # A precise Unix timestamp for the discount to end. Must be in the future.
            sig { returns(Integer) }
            attr_accessor :timestamp
            # The type of calculation made to determine when the discount ends.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(duration: ::Stripe::SubscriptionService::CreateParams::AddInvoiceItem::Discount::DiscountEnd::Duration, timestamp: Integer, type: String).void
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
            returns(::Stripe::SubscriptionService::CreateParams::AddInvoiceItem::Discount::DiscountEnd)
           }
          attr_accessor :discount_end
          # ID of the promotion code to create a new discount for.
          sig { returns(String) }
          attr_accessor :promotion_code
          sig {
            params(coupon: String, discount: String, discount_end: ::Stripe::SubscriptionService::CreateParams::AddInvoiceItem::Discount::DiscountEnd, promotion_code: String).void
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
          returns(T::Array[::Stripe::SubscriptionService::CreateParams::AddInvoiceItem::Discount])
         }
        attr_accessor :discounts
        # The ID of the price object. One of `price` or `price_data` is required.
        sig { returns(String) }
        attr_accessor :price
        # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline. One of `price` or `price_data` is required.
        sig { returns(::Stripe::SubscriptionService::CreateParams::AddInvoiceItem::PriceData) }
        attr_accessor :price_data
        # Quantity for this item. Defaults to 1.
        sig { returns(Integer) }
        attr_accessor :quantity
        # The tax rates which apply to the item. When set, the `default_tax_rates` do not apply to this item.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :tax_rates
        sig {
          params(discounts: T::Array[::Stripe::SubscriptionService::CreateParams::AddInvoiceItem::Discount], price: String, price_data: ::Stripe::SubscriptionService::CreateParams::AddInvoiceItem::PriceData, quantity: Integer, tax_rates: T.nilable(T::Array[String])).void
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
        sig { returns(::Stripe::SubscriptionService::CreateParams::AutomaticTax::Liability) }
        attr_accessor :liability
        sig {
          params(enabled: T::Boolean, liability: ::Stripe::SubscriptionService::CreateParams::AutomaticTax::Liability).void
         }
        def initialize(enabled: nil, liability: nil); end
      end
      class BillingCycleAnchorConfig < Stripe::RequestParams
        # The day of the month the billing_cycle_anchor should be. Ranges from 1 to 31.
        sig { returns(Integer) }
        attr_accessor :day_of_month
        # The hour of the day the billing_cycle_anchor should be. Ranges from 0 to 23.
        sig { returns(Integer) }
        attr_accessor :hour
        # The minute of the hour the billing_cycle_anchor should be. Ranges from 0 to 59.
        sig { returns(Integer) }
        attr_accessor :minute
        # The month to start full cycle billing periods. Ranges from 1 to 12.
        sig { returns(Integer) }
        attr_accessor :month
        # The second of the minute the billing_cycle_anchor should be. Ranges from 0 to 59.
        sig { returns(Integer) }
        attr_accessor :second
        sig {
          params(day_of_month: Integer, hour: Integer, minute: Integer, month: Integer, second: Integer).void
         }
        def initialize(day_of_month: nil, hour: nil, minute: nil, month: nil, second: nil); end
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
            returns(::Stripe::SubscriptionService::CreateParams::Discount::DiscountEnd::Duration)
           }
          attr_accessor :duration
          # A precise Unix timestamp for the discount to end. Must be in the future.
          sig { returns(Integer) }
          attr_accessor :timestamp
          # The type of calculation made to determine when the discount ends.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(duration: ::Stripe::SubscriptionService::CreateParams::Discount::DiscountEnd::Duration, timestamp: Integer, type: String).void
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
        sig { returns(::Stripe::SubscriptionService::CreateParams::Discount::DiscountEnd) }
        attr_accessor :discount_end
        # ID of the promotion code to create a new discount for.
        sig { returns(String) }
        attr_accessor :promotion_code
        sig {
          params(coupon: String, discount: String, discount_end: ::Stripe::SubscriptionService::CreateParams::Discount::DiscountEnd, promotion_code: String).void
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
        # The account tax IDs associated with the subscription. Will be set on invoices generated by the subscription.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :account_tax_ids
        # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
        sig { returns(::Stripe::SubscriptionService::CreateParams::InvoiceSettings::Issuer) }
        attr_accessor :issuer
        sig {
          params(account_tax_ids: T.nilable(T::Array[String]), issuer: ::Stripe::SubscriptionService::CreateParams::InvoiceSettings::Issuer).void
         }
        def initialize(account_tax_ids: nil, issuer: nil); end
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
              returns(::Stripe::SubscriptionService::CreateParams::Item::Discount::DiscountEnd::Duration)
             }
            attr_accessor :duration
            # A precise Unix timestamp for the discount to end. Must be in the future.
            sig { returns(Integer) }
            attr_accessor :timestamp
            # The type of calculation made to determine when the discount ends.
            sig { returns(String) }
            attr_accessor :type
            sig {
              params(duration: ::Stripe::SubscriptionService::CreateParams::Item::Discount::DiscountEnd::Duration, timestamp: Integer, type: String).void
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
          sig { returns(::Stripe::SubscriptionService::CreateParams::Item::Discount::DiscountEnd) }
          attr_accessor :discount_end
          # ID of the promotion code to create a new discount for.
          sig { returns(String) }
          attr_accessor :promotion_code
          sig {
            params(coupon: String, discount: String, discount_end: ::Stripe::SubscriptionService::CreateParams::Item::Discount::DiscountEnd, promotion_code: String).void
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
          sig { returns(::Stripe::SubscriptionService::CreateParams::Item::PriceData::Recurring) }
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
            params(currency: String, product: String, recurring: ::Stripe::SubscriptionService::CreateParams::Item::PriceData::Recurring, tax_behavior: String, unit_amount: Integer, unit_amount_decimal: String).void
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
          returns(T.nilable(::Stripe::SubscriptionService::CreateParams::Item::BillingThresholds))
         }
        attr_accessor :billing_thresholds
        # The coupons to redeem into discounts for the subscription item.
        sig {
          returns(T.nilable(T::Array[::Stripe::SubscriptionService::CreateParams::Item::Discount]))
         }
        attr_accessor :discounts
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T::Hash[String, String]) }
        attr_accessor :metadata
        # Plan ID for this item, as a string.
        sig { returns(String) }
        attr_accessor :plan
        # The ID of the price object.
        sig { returns(String) }
        attr_accessor :price
        # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline.
        sig { returns(::Stripe::SubscriptionService::CreateParams::Item::PriceData) }
        attr_accessor :price_data
        # Quantity for this item.
        sig { returns(Integer) }
        attr_accessor :quantity
        # A list of [Tax Rate](https://stripe.com/docs/api/tax_rates) ids. These Tax Rates will override the [`default_tax_rates`](https://stripe.com/docs/api/subscriptions/create#create_subscription-default_tax_rates) on the Subscription. When updating, pass an empty string to remove previously-defined tax rates.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :tax_rates
        # Define options to configure the trial on the subscription item.
        sig { returns(::Stripe::SubscriptionService::CreateParams::Item::Trial) }
        attr_accessor :trial
        sig {
          params(billing_thresholds: T.nilable(::Stripe::SubscriptionService::CreateParams::Item::BillingThresholds), discounts: T.nilable(T::Array[::Stripe::SubscriptionService::CreateParams::Item::Discount]), metadata: T::Hash[String, String], plan: String, price: String, price_data: ::Stripe::SubscriptionService::CreateParams::Item::PriceData, quantity: Integer, tax_rates: T.nilable(T::Array[String]), trial: ::Stripe::SubscriptionService::CreateParams::Item::Trial).void
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
      class PaymentSettings < Stripe::RequestParams
        class PaymentMethodOptions < Stripe::RequestParams
          class AcssDebit < Stripe::RequestParams
            class MandateOptions < Stripe::RequestParams
              # Transaction type of the mandate.
              sig { returns(String) }
              attr_accessor :transaction_type
              sig { params(transaction_type: String).void }
              def initialize(transaction_type: nil); end
            end
            # Additional fields for Mandate creation
            sig {
              returns(::Stripe::SubscriptionService::CreateParams::PaymentSettings::PaymentMethodOptions::AcssDebit::MandateOptions)
             }
            attr_accessor :mandate_options
            # Verification method for the intent
            sig { returns(String) }
            attr_accessor :verification_method
            sig {
              params(mandate_options: ::Stripe::SubscriptionService::CreateParams::PaymentSettings::PaymentMethodOptions::AcssDebit::MandateOptions, verification_method: String).void
             }
            def initialize(mandate_options: nil, verification_method: nil); end
          end
          class Bancontact < Stripe::RequestParams
            # Preferred language of the Bancontact authorization page that the customer is redirected to.
            sig { returns(String) }
            attr_accessor :preferred_language
            sig { params(preferred_language: String).void }
            def initialize(preferred_language: nil); end
          end
          class Card < Stripe::RequestParams
            class MandateOptions < Stripe::RequestParams
              # Amount to be charged for future payments.
              sig { returns(Integer) }
              attr_accessor :amount
              # One of `fixed` or `maximum`. If `fixed`, the `amount` param refers to the exact amount to be charged in future payments. If `maximum`, the amount charged can be up to the value passed for the `amount` param.
              sig { returns(String) }
              attr_accessor :amount_type
              # A description of the mandate or subscription that is meant to be displayed to the customer.
              sig { returns(String) }
              attr_accessor :description
              sig { params(amount: Integer, amount_type: String, description: String).void }
              def initialize(amount: nil, amount_type: nil, description: nil); end
            end
            # Configuration options for setting up an eMandate for cards issued in India.
            sig {
              returns(::Stripe::SubscriptionService::CreateParams::PaymentSettings::PaymentMethodOptions::Card::MandateOptions)
             }
            attr_accessor :mandate_options
            # Selected network to process this Subscription on. Depends on the available networks of the card attached to the Subscription. Can be only set confirm-time.
            sig { returns(String) }
            attr_accessor :network
            # We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://stripe.com/docs/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. Read our guide on [manually requesting 3D Secure](https://stripe.com/docs/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
            sig { returns(String) }
            attr_accessor :request_three_d_secure
            sig {
              params(mandate_options: ::Stripe::SubscriptionService::CreateParams::PaymentSettings::PaymentMethodOptions::Card::MandateOptions, network: String, request_three_d_secure: String).void
             }
            def initialize(mandate_options: nil, network: nil, request_three_d_secure: nil); end
          end
          class CustomerBalance < Stripe::RequestParams
            class BankTransfer < Stripe::RequestParams
              class EuBankTransfer < Stripe::RequestParams
                # The desired country code of the bank account information. Permitted values include: `BE`, `DE`, `ES`, `FR`, `IE`, or `NL`.
                sig { returns(String) }
                attr_accessor :country
                sig { params(country: String).void }
                def initialize(country: nil); end
              end
              # Configuration for eu_bank_transfer funding type.
              sig {
                returns(::Stripe::SubscriptionService::CreateParams::PaymentSettings::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer)
               }
              attr_accessor :eu_bank_transfer
              # The bank transfer type that can be used for funding. Permitted values include: `eu_bank_transfer`, `gb_bank_transfer`, `jp_bank_transfer`, `mx_bank_transfer`, or `us_bank_transfer`.
              sig { returns(String) }
              attr_accessor :type
              sig {
                params(eu_bank_transfer: ::Stripe::SubscriptionService::CreateParams::PaymentSettings::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer, type: String).void
               }
              def initialize(eu_bank_transfer: nil, type: nil); end
            end
            # Configuration for the bank transfer funding type, if the `funding_type` is set to `bank_transfer`.
            sig {
              returns(::Stripe::SubscriptionService::CreateParams::PaymentSettings::PaymentMethodOptions::CustomerBalance::BankTransfer)
             }
            attr_accessor :bank_transfer
            # The funding method type to be used when there are not enough funds in the customer balance. Permitted values include: `bank_transfer`.
            sig { returns(String) }
            attr_accessor :funding_type
            sig {
              params(bank_transfer: ::Stripe::SubscriptionService::CreateParams::PaymentSettings::PaymentMethodOptions::CustomerBalance::BankTransfer, funding_type: String).void
             }
            def initialize(bank_transfer: nil, funding_type: nil); end
          end
          class IdBankTransfer < Stripe::RequestParams

          end
          class Konbini < Stripe::RequestParams

          end
          class SepaDebit < Stripe::RequestParams

          end
          class UsBankAccount < Stripe::RequestParams
            class FinancialConnections < Stripe::RequestParams
              class Filters < Stripe::RequestParams
                # The account subcategories to use to filter for selectable accounts. Valid subcategories are `checking` and `savings`.
                sig { returns(T::Array[String]) }
                attr_accessor :account_subcategories
                # ID of the institution to use to filter for selectable accounts.
                sig { returns(String) }
                attr_accessor :institution
                sig { params(account_subcategories: T::Array[String], institution: String).void }
                def initialize(account_subcategories: nil, institution: nil); end
              end
              # Provide filters for the linked accounts that the customer can select for the payment method.
              sig {
                returns(::Stripe::SubscriptionService::CreateParams::PaymentSettings::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters)
               }
              attr_accessor :filters
              # The list of permissions to request. If this parameter is passed, the `payment_method` permission must be included. Valid permissions include: `balances`, `ownership`, `payment_method`, and `transactions`.
              sig { returns(T::Array[String]) }
              attr_accessor :permissions
              # List of data features that you would like to retrieve upon account creation.
              sig { returns(T::Array[String]) }
              attr_accessor :prefetch
              sig {
                params(filters: ::Stripe::SubscriptionService::CreateParams::PaymentSettings::PaymentMethodOptions::UsBankAccount::FinancialConnections::Filters, permissions: T::Array[String], prefetch: T::Array[String]).void
               }
              def initialize(filters: nil, permissions: nil, prefetch: nil); end
            end
            # Additional fields for Financial Connections Session creation
            sig {
              returns(::Stripe::SubscriptionService::CreateParams::PaymentSettings::PaymentMethodOptions::UsBankAccount::FinancialConnections)
             }
            attr_accessor :financial_connections
            # Verification method for the intent
            sig { returns(String) }
            attr_accessor :verification_method
            sig {
              params(financial_connections: ::Stripe::SubscriptionService::CreateParams::PaymentSettings::PaymentMethodOptions::UsBankAccount::FinancialConnections, verification_method: String).void
             }
            def initialize(financial_connections: nil, verification_method: nil); end
          end
          # This sub-hash contains details about the Canadian pre-authorized debit payment method options to pass to the invoice’s PaymentIntent.
          sig {
            returns(T.nilable(::Stripe::SubscriptionService::CreateParams::PaymentSettings::PaymentMethodOptions::AcssDebit))
           }
          attr_accessor :acss_debit
          # This sub-hash contains details about the Bancontact payment method options to pass to the invoice’s PaymentIntent.
          sig {
            returns(T.nilable(::Stripe::SubscriptionService::CreateParams::PaymentSettings::PaymentMethodOptions::Bancontact))
           }
          attr_accessor :bancontact
          # This sub-hash contains details about the Card payment method options to pass to the invoice’s PaymentIntent.
          sig {
            returns(T.nilable(::Stripe::SubscriptionService::CreateParams::PaymentSettings::PaymentMethodOptions::Card))
           }
          attr_accessor :card
          # This sub-hash contains details about the Bank transfer payment method options to pass to the invoice’s PaymentIntent.
          sig {
            returns(T.nilable(::Stripe::SubscriptionService::CreateParams::PaymentSettings::PaymentMethodOptions::CustomerBalance))
           }
          attr_accessor :customer_balance
          # This sub-hash contains details about the Indonesia bank transfer payment method options to pass to the invoice’s PaymentIntent.
          sig {
            returns(T.nilable(::Stripe::SubscriptionService::CreateParams::PaymentSettings::PaymentMethodOptions::IdBankTransfer))
           }
          attr_accessor :id_bank_transfer
          # This sub-hash contains details about the Konbini payment method options to pass to the invoice’s PaymentIntent.
          sig {
            returns(T.nilable(::Stripe::SubscriptionService::CreateParams::PaymentSettings::PaymentMethodOptions::Konbini))
           }
          attr_accessor :konbini
          # This sub-hash contains details about the SEPA Direct Debit payment method options to pass to the invoice’s PaymentIntent.
          sig {
            returns(T.nilable(::Stripe::SubscriptionService::CreateParams::PaymentSettings::PaymentMethodOptions::SepaDebit))
           }
          attr_accessor :sepa_debit
          # This sub-hash contains details about the ACH direct debit payment method options to pass to the invoice’s PaymentIntent.
          sig {
            returns(T.nilable(::Stripe::SubscriptionService::CreateParams::PaymentSettings::PaymentMethodOptions::UsBankAccount))
           }
          attr_accessor :us_bank_account
          sig {
            params(acss_debit: T.nilable(::Stripe::SubscriptionService::CreateParams::PaymentSettings::PaymentMethodOptions::AcssDebit), bancontact: T.nilable(::Stripe::SubscriptionService::CreateParams::PaymentSettings::PaymentMethodOptions::Bancontact), card: T.nilable(::Stripe::SubscriptionService::CreateParams::PaymentSettings::PaymentMethodOptions::Card), customer_balance: T.nilable(::Stripe::SubscriptionService::CreateParams::PaymentSettings::PaymentMethodOptions::CustomerBalance), id_bank_transfer: T.nilable(::Stripe::SubscriptionService::CreateParams::PaymentSettings::PaymentMethodOptions::IdBankTransfer), konbini: T.nilable(::Stripe::SubscriptionService::CreateParams::PaymentSettings::PaymentMethodOptions::Konbini), sepa_debit: T.nilable(::Stripe::SubscriptionService::CreateParams::PaymentSettings::PaymentMethodOptions::SepaDebit), us_bank_account: T.nilable(::Stripe::SubscriptionService::CreateParams::PaymentSettings::PaymentMethodOptions::UsBankAccount)).void
           }
          def initialize(
            acss_debit: nil,
            bancontact: nil,
            card: nil,
            customer_balance: nil,
            id_bank_transfer: nil,
            konbini: nil,
            sepa_debit: nil,
            us_bank_account: nil
          ); end
        end
        # Payment-method-specific configuration to provide to invoices created by the subscription.
        sig {
          returns(::Stripe::SubscriptionService::CreateParams::PaymentSettings::PaymentMethodOptions)
         }
        attr_accessor :payment_method_options
        # The list of payment method types (e.g. card) to provide to the invoice’s PaymentIntent. If not set, Stripe attempts to automatically determine the types to use by looking at the invoice’s default payment method, the subscription’s default payment method, the customer’s default payment method, and your [invoice template settings](https://dashboard.stripe.com/settings/billing/invoice). Should not be specified with payment_method_configuration
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :payment_method_types
        # Configure whether Stripe updates `subscription.default_payment_method` when payment succeeds. Defaults to `off` if unspecified.
        sig { returns(String) }
        attr_accessor :save_default_payment_method
        sig {
          params(payment_method_options: ::Stripe::SubscriptionService::CreateParams::PaymentSettings::PaymentMethodOptions, payment_method_types: T.nilable(T::Array[String]), save_default_payment_method: String).void
         }
        def initialize(
          payment_method_options: nil,
          payment_method_types: nil,
          save_default_payment_method: nil
        ); end
      end
      class PendingInvoiceItemInterval < Stripe::RequestParams
        # Specifies invoicing frequency. Either `day`, `week`, `month` or `year`.
        sig { returns(String) }
        attr_accessor :interval
        # The number of intervals between invoices. For example, `interval=month` and `interval_count=3` bills every 3 months. Maximum of one year interval allowed (1 year, 12 months, or 52 weeks).
        sig { returns(Integer) }
        attr_accessor :interval_count
        sig { params(interval: String, interval_count: Integer).void }
        def initialize(interval: nil, interval_count: nil); end
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
          # Indicates how the subscription should change when the trial ends if the user did not provide a payment method.
          sig { returns(String) }
          attr_accessor :missing_payment_method
          sig { params(missing_payment_method: String).void }
          def initialize(missing_payment_method: nil); end
        end
        # Defines how the subscription should behave when the user's free trial ends.
        sig { returns(::Stripe::SubscriptionService::CreateParams::TrialSettings::EndBehavior) }
        attr_accessor :end_behavior
        sig {
          params(end_behavior: ::Stripe::SubscriptionService::CreateParams::TrialSettings::EndBehavior).void
         }
        def initialize(end_behavior: nil); end
      end
      # A list of prices and quantities that will generate invoice items appended to the next invoice for this subscription. You may pass up to 20 items.
      sig { returns(T::Array[::Stripe::SubscriptionService::CreateParams::AddInvoiceItem]) }
      attr_accessor :add_invoice_items
      # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. The request must be made by a platform account on a connected account in order to set an application fee percentage. For more information, see the application fees [documentation](https://stripe.com/docs/connect/subscriptions#collecting-fees-on-subscriptions).
      sig { returns(T.nilable(Float)) }
      attr_accessor :application_fee_percent
      # Automatic tax settings for this subscription. We recommend you only include this parameter when the existing value is being changed.
      sig { returns(::Stripe::SubscriptionService::CreateParams::AutomaticTax) }
      attr_accessor :automatic_tax
      # For new subscriptions, a past timestamp to backdate the subscription's start date to. If set, the first invoice will contain a proration for the timespan between the start date and the current time. Can be combined with trials and the billing cycle anchor.
      sig { returns(Integer) }
      attr_accessor :backdate_start_date
      # A future timestamp in UTC format to anchor the subscription's [billing cycle](https://stripe.com/docs/subscriptions/billing-cycle). The anchor is the reference point that aligns future billing cycle dates. It sets the day of week for `week` intervals, the day of month for `month` and `year` intervals, and the month of year for `year` intervals.
      sig { returns(Integer) }
      attr_accessor :billing_cycle_anchor
      # Mutually exclusive with billing_cycle_anchor and only valid with monthly and yearly price intervals. When provided, the billing_cycle_anchor is set to the next occurence of the day_of_month at the hour, minute, and second UTC.
      sig { returns(::Stripe::SubscriptionService::CreateParams::BillingCycleAnchorConfig) }
      attr_accessor :billing_cycle_anchor_config
      # Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period. Pass an empty string to remove previously-defined thresholds.
      sig { returns(T.nilable(::Stripe::SubscriptionService::CreateParams::BillingThresholds)) }
      attr_accessor :billing_thresholds
      # A timestamp at which the subscription should cancel. If set to a date before the current period ends, this will cause a proration if prorations have been enabled using `proration_behavior`. If set during a future period, this will always cause a proration for that period.
      sig { returns(Integer) }
      attr_accessor :cancel_at
      # Indicate whether this subscription should cancel at the end of the current period (`current_period_end`). Defaults to `false`.
      sig { returns(T::Boolean) }
      attr_accessor :cancel_at_period_end
      # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay this subscription at the end of the cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`. Defaults to `charge_automatically`.
      sig { returns(String) }
      attr_accessor :collection_method
      # The ID of the coupon to apply to this subscription. A coupon applied to a subscription will only affect invoices created for that particular subscription. This field has been deprecated and will be removed in a future API version. Use `discounts` instead.
      sig { returns(String) }
      attr_accessor :coupon
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      attr_accessor :currency
      # The identifier of the customer to subscribe.
      sig { returns(String) }
      attr_accessor :customer
      # Number of days a customer has to pay invoices generated by this subscription. Valid only for subscriptions where `collection_method` is set to `send_invoice`.
      sig { returns(Integer) }
      attr_accessor :days_until_due
      # ID of the default payment method for the subscription. It must belong to the customer associated with the subscription. This takes precedence over `default_source`. If neither are set, invoices will use the customer's [invoice_settings.default_payment_method](https://stripe.com/docs/api/customers/object#customer_object-invoice_settings-default_payment_method) or [default_source](https://stripe.com/docs/api/customers/object#customer_object-default_source).
      sig { returns(String) }
      attr_accessor :default_payment_method
      # ID of the default payment source for the subscription. It must belong to the customer associated with the subscription and be in a chargeable state. If `default_payment_method` is also set, `default_payment_method` will take precedence. If neither are set, invoices will use the customer's [invoice_settings.default_payment_method](https://stripe.com/docs/api/customers/object#customer_object-invoice_settings-default_payment_method) or [default_source](https://stripe.com/docs/api/customers/object#customer_object-default_source).
      sig { returns(String) }
      attr_accessor :default_source
      # The tax rates that will apply to any subscription item that does not have `tax_rates` set. Invoices created will have their `default_tax_rates` populated from the subscription.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :default_tax_rates
      # The subscription's description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
      sig { returns(String) }
      attr_accessor :description
      # The coupons to redeem into discounts for the subscription. If not specified or empty, inherits the discount from the subscription's customer.
      sig { returns(T.nilable(T::Array[::Stripe::SubscriptionService::CreateParams::Discount])) }
      attr_accessor :discounts
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # All invoices will be billed using the specified settings.
      sig { returns(::Stripe::SubscriptionService::CreateParams::InvoiceSettings) }
      attr_accessor :invoice_settings
      # A list of up to 20 subscription items, each with an attached price.
      sig { returns(T::Array[::Stripe::SubscriptionService::CreateParams::Item]) }
      attr_accessor :items
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_accessor :metadata
      # Indicates if a customer is on or off-session while an invoice payment is attempted. Defaults to `false` (on-session).
      sig { returns(T::Boolean) }
      attr_accessor :off_session
      # The account on behalf of which to charge, for each of the subscription's invoices.
      sig { returns(T.nilable(String)) }
      attr_accessor :on_behalf_of
      # Only applies to subscriptions with `collection_method=charge_automatically`.
      #
      # Use `allow_incomplete` to create Subscriptions with `status=incomplete` if the first invoice can't be paid. Creating Subscriptions with this status allows you to manage scenarios where additional customer actions are needed to pay a subscription's invoice. For example, SCA regulation may require 3DS authentication to complete payment. See the [SCA Migration Guide](https://stripe.com/docs/billing/migration/strong-customer-authentication) for Billing to learn more. This is the default behavior.
      #
      # Use `default_incomplete` to create Subscriptions with `status=incomplete` when the first invoice requires payment, otherwise start as active. Subscriptions transition to `status=active` when successfully confirming the PaymentIntent on the first invoice. This allows simpler management of scenarios where additional customer actions are needed to pay a subscription’s invoice, such as failed payments, [SCA regulation](https://stripe.com/docs/billing/migration/strong-customer-authentication), or collecting a mandate for a bank debit payment method. If the PaymentIntent is not confirmed within 23 hours Subscriptions transition to `status=incomplete_expired`, which is a terminal state.
      #
      # Use `error_if_incomplete` if you want Stripe to return an HTTP 402 status code if a subscription's first invoice can't be paid. For example, if a payment method requires 3DS authentication due to SCA regulation and further customer action is needed, this parameter doesn't create a Subscription and returns an error instead. This was the default behavior for API versions prior to 2019-03-14. See the [changelog](https://stripe.com/docs/upgrades#2019-03-14) to learn more.
      #
      # `pending_if_incomplete` is only used with updates and cannot be passed when creating a Subscription.
      #
      # Subscriptions with `collection_method=send_invoice` are automatically activated regardless of the first Invoice status.
      sig { returns(String) }
      attr_accessor :payment_behavior
      # Payment settings to pass to invoices created by the subscription.
      sig { returns(::Stripe::SubscriptionService::CreateParams::PaymentSettings) }
      attr_accessor :payment_settings
      # Specifies an interval for how often to bill for any pending invoice items. It is analogous to calling [Create an invoice](https://stripe.com/docs/api#create_invoice) for the given subscription at the specified interval.
      sig {
        returns(T.nilable(::Stripe::SubscriptionService::CreateParams::PendingInvoiceItemInterval))
       }
      attr_accessor :pending_invoice_item_interval
      # If specified, the invoicing for the given billing cycle iterations will be processed now.
      sig { returns(::Stripe::SubscriptionService::CreateParams::Prebilling) }
      attr_accessor :prebilling
      # The promotion code to apply to this subscription. A promotion code applied to a subscription will only affect invoices created for that particular subscription. This field has been deprecated and will be removed in a future API version. Use `discounts` instead.
      sig { returns(String) }
      attr_accessor :promotion_code
      # Determines how to handle [prorations](https://stripe.com/docs/billing/subscriptions/prorations) resulting from the `billing_cycle_anchor`. If no value is passed, the default is `create_prorations`.
      sig { returns(String) }
      attr_accessor :proration_behavior
      # If specified, the funds from the subscription's invoices will be transferred to the destination and the ID of the resulting transfers will be found on the resulting charges.
      sig { returns(::Stripe::SubscriptionService::CreateParams::TransferData) }
      attr_accessor :transfer_data
      # Unix timestamp representing the end of the trial period the customer will get before being charged for the first time. If set, trial_end will override the default trial period of the plan the customer is being subscribed to. The special value `now` can be provided to end the customer's trial immediately. Can be at most two years from `billing_cycle_anchor`. See [Using trial periods on subscriptions](https://stripe.com/docs/billing/subscriptions/trials) to learn more.
      sig { returns(T.any(String, Integer)) }
      attr_accessor :trial_end
      # Indicates if a plan's `trial_period_days` should be applied to the subscription. Setting `trial_end` per subscription is preferred, and this defaults to `false`. Setting this flag to `true` together with `trial_end` is not allowed. See [Using trial periods on subscriptions](https://stripe.com/docs/billing/subscriptions/trials) to learn more.
      sig { returns(T::Boolean) }
      attr_accessor :trial_from_plan
      # Integer representing the number of trial period days before the customer is charged for the first time. This will always overwrite any trials that might apply via a subscribed plan. See [Using trial periods on subscriptions](https://stripe.com/docs/billing/subscriptions/trials) to learn more.
      sig { returns(Integer) }
      attr_accessor :trial_period_days
      # Settings related to subscription trials.
      sig { returns(::Stripe::SubscriptionService::CreateParams::TrialSettings) }
      attr_accessor :trial_settings
      sig {
        params(add_invoice_items: T::Array[::Stripe::SubscriptionService::CreateParams::AddInvoiceItem], application_fee_percent: T.nilable(Float), automatic_tax: ::Stripe::SubscriptionService::CreateParams::AutomaticTax, backdate_start_date: Integer, billing_cycle_anchor: Integer, billing_cycle_anchor_config: ::Stripe::SubscriptionService::CreateParams::BillingCycleAnchorConfig, billing_thresholds: T.nilable(::Stripe::SubscriptionService::CreateParams::BillingThresholds), cancel_at: Integer, cancel_at_period_end: T::Boolean, collection_method: String, coupon: String, currency: String, customer: String, days_until_due: Integer, default_payment_method: String, default_source: String, default_tax_rates: T.nilable(T::Array[String]), description: String, discounts: T.nilable(T::Array[::Stripe::SubscriptionService::CreateParams::Discount]), expand: T::Array[String], invoice_settings: ::Stripe::SubscriptionService::CreateParams::InvoiceSettings, items: T::Array[::Stripe::SubscriptionService::CreateParams::Item], metadata: T.nilable(T::Hash[String, String]), off_session: T::Boolean, on_behalf_of: T.nilable(String), payment_behavior: String, payment_settings: ::Stripe::SubscriptionService::CreateParams::PaymentSettings, pending_invoice_item_interval: T.nilable(::Stripe::SubscriptionService::CreateParams::PendingInvoiceItemInterval), prebilling: ::Stripe::SubscriptionService::CreateParams::Prebilling, promotion_code: String, proration_behavior: String, transfer_data: ::Stripe::SubscriptionService::CreateParams::TransferData, trial_end: T.any(String, Integer), trial_from_plan: T::Boolean, trial_period_days: Integer, trial_settings: ::Stripe::SubscriptionService::CreateParams::TrialSettings).void
       }
      def initialize(
        add_invoice_items: nil,
        application_fee_percent: nil,
        automatic_tax: nil,
        backdate_start_date: nil,
        billing_cycle_anchor: nil,
        billing_cycle_anchor_config: nil,
        billing_thresholds: nil,
        cancel_at: nil,
        cancel_at_period_end: nil,
        collection_method: nil,
        coupon: nil,
        currency: nil,
        customer: nil,
        days_until_due: nil,
        default_payment_method: nil,
        default_source: nil,
        default_tax_rates: nil,
        description: nil,
        discounts: nil,
        expand: nil,
        invoice_settings: nil,
        items: nil,
        metadata: nil,
        off_session: nil,
        on_behalf_of: nil,
        payment_behavior: nil,
        payment_settings: nil,
        pending_invoice_item_interval: nil,
        prebilling: nil,
        promotion_code: nil,
        proration_behavior: nil,
        transfer_data: nil,
        trial_end: nil,
        trial_from_plan: nil,
        trial_period_days: nil,
        trial_settings: nil
      ); end
    end
    class SearchParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(Integer) }
      attr_accessor :limit
      # A cursor for pagination across multiple pages of results. Don't include this parameter on the first call. Use the next_page value returned in a previous response to request subsequent results.
      sig { returns(String) }
      attr_accessor :page
      # The search query string. See [search query language](https://stripe.com/docs/search#search-query-language) and the list of supported [query fields for subscriptions](https://stripe.com/docs/search#query-fields-for-subscriptions).
      sig { returns(String) }
      attr_accessor :query
      sig { params(expand: T::Array[String], limit: Integer, page: String, query: String).void }
      def initialize(expand: nil, limit: nil, page: nil, query: nil); end
    end
    class ResumeParams < Stripe::RequestParams
      # The billing cycle anchor that applies when the subscription is resumed. Either `now` or `unchanged`. The default is `now`. For more information, see the billing cycle [documentation](https://stripe.com/docs/billing/subscriptions/billing-cycle).
      sig { returns(String) }
      attr_accessor :billing_cycle_anchor
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # Determines how to handle [prorations](https://stripe.com/docs/billing/subscriptions/prorations) when the billing cycle changes (e.g., when switching plans, resetting `billing_cycle_anchor=now`, or starting a trial), or if an item's `quantity` changes. The default value is `create_prorations`.
      sig { returns(String) }
      attr_accessor :proration_behavior
      # If set, the proration will be calculated as though the subscription was resumed at the given time. This can be used to apply exactly the same proration that was previewed with [upcoming invoice](https://stripe.com/docs/api#retrieve_customer_invoice) endpoint.
      sig { returns(Integer) }
      attr_accessor :proration_date
      sig {
        params(billing_cycle_anchor: String, expand: T::Array[String], proration_behavior: String, proration_date: Integer).void
       }
      def initialize(
        billing_cycle_anchor: nil,
        expand: nil,
        proration_behavior: nil,
        proration_date: nil
      ); end
    end
    # Cancels a customer's subscription immediately. The customer won't be charged again for the subscription. After it's canceled, you can no longer update the subscription or its [metadata](https://stripe.com/metadata).
    #
    # Any pending invoice items that you've created are still charged at the end of the period, unless manually [deleted](https://stripe.com/docs/api#delete_invoiceitem). If you've set the subscription to cancel at the end of the period, any pending prorations are also left in place and collected at the end of the period. But if the subscription is set to cancel immediately, pending prorations are removed.
    #
    # By default, upon subscription cancellation, Stripe stops automatic collection of all finalized invoices for the customer. This is intended to prevent unexpected payment attempts after the customer has canceled a subscription. However, you can resume automatic collection of the invoices manually after subscription cancellation to have us proceed. Or, you could check for unpaid invoices before allowing the customer to cancel the subscription at all.
    sig {
      params(subscription_exposed_id: String, params: T.any(::Stripe::SubscriptionService::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Subscription)
     }
    def cancel(subscription_exposed_id, params = {}, opts = {}); end

    # Creates a new subscription on an existing customer. Each customer can have up to 500 active or scheduled subscriptions.
    #
    # When you create a subscription with collection_method=charge_automatically, the first invoice is finalized as part of the request.
    # The payment_behavior parameter determines the exact behavior of the initial payment.
    #
    # To start subscriptions where the first invoice always begins in a draft status, use [subscription schedules](https://stripe.com/docs/billing/subscriptions/subscription-schedules#managing) instead.
    # Schedules provide the flexibility to model more complex billing configurations that change over time.
    sig {
      params(params: T.any(::Stripe::SubscriptionService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Subscription)
     }
    def create(params = {}, opts = {}); end

    # Removes the currently applied discount on a subscription.
    sig {
      params(subscription_exposed_id: String, params: T.any(::Stripe::SubscriptionService::DeleteDiscountParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Discount)
     }
    def delete_discount(subscription_exposed_id, params = {}, opts = {}); end

    # By default, returns a list of subscriptions that have not been canceled. In order to list canceled subscriptions, specify status=canceled.
    sig {
      params(params: T.any(::Stripe::SubscriptionService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # Initiates resumption of a paused subscription, optionally resetting the billing cycle anchor and creating prorations. If a resumption invoice is generated, it must be paid or marked uncollectible before the subscription will be unpaused. If payment succeeds the subscription will become active, and if payment fails the subscription will be past_due. The resumption invoice will void automatically if not paid by the expiration date.
    sig {
      params(subscription: String, params: T.any(::Stripe::SubscriptionService::ResumeParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Subscription)
     }
    def resume(subscription, params = {}, opts = {}); end

    # Retrieves the subscription with the given ID.
    sig {
      params(subscription_exposed_id: String, params: T.any(::Stripe::SubscriptionService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Subscription)
     }
    def retrieve(subscription_exposed_id, params = {}, opts = {}); end

    # Search for subscriptions you've previously created using Stripe's [Search Query Language](https://stripe.com/docs/search#search-query-language).
    # Don't use search in read-after-write flows where strict consistency is necessary. Under normal operating
    # conditions, data is searchable in less than a minute. Occasionally, propagation of new or updated data can be up
    # to an hour behind during outages. Search functionality is not available to merchants in India.
    sig {
      params(params: T.any(::Stripe::SubscriptionService::SearchParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::SearchResultObject)
     }
    def search(params = {}, opts = {}); end

    # Updates an existing subscription to match the specified parameters.
    # When changing prices or quantities, we optionally prorate the price we charge next month to make up for any price changes.
    # To preview how the proration is calculated, use the [create preview](https://stripe.com/docs/api/invoices/create_preview) endpoint.
    #
    # By default, we prorate subscription changes. For example, if a customer signs up on May 1 for a 100 price, they'll be billed 100 immediately. If on May 15 they switch to a 200 price, then on June 1 they'll be billed 250 (200 for a renewal of her subscription, plus a 50 prorating adjustment for half of the previous month's 100 difference). Similarly, a downgrade generates a credit that is applied to the next invoice. We also prorate when you make quantity changes.
    #
    # Switching prices does not normally change the billing date or generate an immediate charge unless:
    #
    #
    # The billing interval is changed (for example, from monthly to yearly).
    # The subscription moves from free to paid.
    # A trial starts or ends.
    #
    #
    # In these cases, we apply a credit for the unused time on the previous price, immediately charge the customer using the new price, and reset the billing date. Learn about how [Stripe immediately attempts payment for subscription changes](https://stripe.com/docs/billing/subscriptions/upgrade-downgrade#immediate-payment).
    #
    # If you want to charge for an upgrade immediately, pass proration_behavior as always_invoice to create prorations, automatically invoice the customer for those proration adjustments, and attempt to collect payment. If you pass create_prorations, the prorations are created but not automatically invoiced. If you want to bill the customer for the prorations before the subscription's renewal date, you need to manually [invoice the customer](https://stripe.com/docs/api/invoices/create).
    #
    # If you don't want to prorate, set the proration_behavior option to none. With this option, the customer is billed 100 on May 1 and 200 on June 1. Similarly, if you set proration_behavior to none when switching between different billing intervals (for example, from monthly to yearly), we don't generate any credits for the old subscription's unused time. We still reset the billing date and bill immediately for the new subscription.
    #
    # Updating the quantity on a subscription many times in an hour may result in [rate limiting. If you need to bill for a frequently changing quantity, consider integrating <a href="/docs/billing/subscriptions/usage-based">usage-based billing](https://stripe.com/docs/rate-limits) instead.
    sig {
      params(subscription_exposed_id: String, params: T.any(::Stripe::SubscriptionService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Subscription)
     }
    def update(subscription_exposed_id, params = {}, opts = {}); end
  end
end