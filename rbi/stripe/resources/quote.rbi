# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # A Quote is a way to model prices that you'd like to provide to a customer.
  # Once accepted, it will automatically create an invoice, subscription or subscription schedule.
  class Quote < APIResource
    class AutomaticTax < Stripe::StripeObject
      class Liability < Stripe::StripeObject
        # The connected account being referenced when `type` is `account`.
        sig { returns(T.any(String, Stripe::Account)) }
        attr_reader :account
        # Type of the account referenced.
        sig { returns(String) }
        attr_reader :type
      end
      # Automatically calculate taxes
      sig { returns(T::Boolean) }
      attr_reader :enabled
      # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
      sig { returns(T.nilable(Liability)) }
      attr_reader :liability
      # The tax provider powering automatic tax.
      sig { returns(T.nilable(String)) }
      attr_reader :provider
      # The status of the most recent automated tax calculation for this quote.
      sig { returns(T.nilable(String)) }
      attr_reader :status
    end
    class Computed < Stripe::StripeObject
      class Recurring < Stripe::StripeObject
        class TotalDetails < Stripe::StripeObject
          class Breakdown < Stripe::StripeObject
            class Discount < Stripe::StripeObject
              # The amount discounted.
              sig { returns(Integer) }
              attr_reader :amount
              # A discount represents the actual application of a [coupon](https://stripe.com/docs/api#coupons) or [promotion code](https://stripe.com/docs/api#promotion_codes).
              # It contains information about when the discount began, when it will end, and what it is applied to.
              #
              # Related guide: [Applying discounts to subscriptions](https://stripe.com/docs/billing/subscriptions/discounts)
              sig { returns(Stripe::Discount) }
              attr_reader :discount
            end
            class Tax < Stripe::StripeObject
              # Amount of tax applied for this rate.
              sig { returns(Integer) }
              attr_reader :amount
              # Tax rates can be applied to [invoices](/invoicing/taxes/tax-rates), [subscriptions](/billing/taxes/tax-rates) and [Checkout Sessions](/payments/checkout/use-manual-tax-rates) to collect tax.
              #
              # Related guide: [Tax rates](/billing/taxes/tax-rates)
              sig { returns(Stripe::TaxRate) }
              attr_reader :rate
              # The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
              sig { returns(T.nilable(String)) }
              attr_reader :taxability_reason
              # The amount on which tax is calculated, in cents (or local equivalent).
              sig { returns(T.nilable(Integer)) }
              attr_reader :taxable_amount
            end
            # The aggregated discounts.
            sig { returns(T::Array[Discount]) }
            attr_reader :discounts
            # The aggregated tax amounts by rate.
            sig { returns(T::Array[Tax]) }
            attr_reader :taxes
          end
          # This is the sum of all the discounts.
          sig { returns(Integer) }
          attr_reader :amount_discount
          # This is the sum of all the shipping amounts.
          sig { returns(T.nilable(Integer)) }
          attr_reader :amount_shipping
          # This is the sum of all the tax amounts.
          sig { returns(Integer) }
          attr_reader :amount_tax
          # Attribute for field breakdown
          sig { returns(Breakdown) }
          attr_reader :breakdown
        end
        # Total before any discounts or taxes are applied.
        sig { returns(Integer) }
        attr_reader :amount_subtotal
        # Total after discounts and taxes are applied.
        sig { returns(Integer) }
        attr_reader :amount_total
        # The frequency at which a subscription is billed. One of `day`, `week`, `month` or `year`.
        sig { returns(String) }
        attr_reader :interval
        # The number of intervals (specified in the `interval` attribute) between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months.
        sig { returns(Integer) }
        attr_reader :interval_count
        # Attribute for field total_details
        sig { returns(TotalDetails) }
        attr_reader :total_details
      end
      class Upfront < Stripe::StripeObject
        class TotalDetails < Stripe::StripeObject
          class Breakdown < Stripe::StripeObject
            class Discount < Stripe::StripeObject
              # The amount discounted.
              sig { returns(Integer) }
              attr_reader :amount
              # A discount represents the actual application of a [coupon](https://stripe.com/docs/api#coupons) or [promotion code](https://stripe.com/docs/api#promotion_codes).
              # It contains information about when the discount began, when it will end, and what it is applied to.
              #
              # Related guide: [Applying discounts to subscriptions](https://stripe.com/docs/billing/subscriptions/discounts)
              sig { returns(Stripe::Discount) }
              attr_reader :discount
            end
            class Tax < Stripe::StripeObject
              # Amount of tax applied for this rate.
              sig { returns(Integer) }
              attr_reader :amount
              # Tax rates can be applied to [invoices](/invoicing/taxes/tax-rates), [subscriptions](/billing/taxes/tax-rates) and [Checkout Sessions](/payments/checkout/use-manual-tax-rates) to collect tax.
              #
              # Related guide: [Tax rates](/billing/taxes/tax-rates)
              sig { returns(Stripe::TaxRate) }
              attr_reader :rate
              # The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
              sig { returns(T.nilable(String)) }
              attr_reader :taxability_reason
              # The amount on which tax is calculated, in cents (or local equivalent).
              sig { returns(T.nilable(Integer)) }
              attr_reader :taxable_amount
            end
            # The aggregated discounts.
            sig { returns(T::Array[Discount]) }
            attr_reader :discounts
            # The aggregated tax amounts by rate.
            sig { returns(T::Array[Tax]) }
            attr_reader :taxes
          end
          # This is the sum of all the discounts.
          sig { returns(Integer) }
          attr_reader :amount_discount
          # This is the sum of all the shipping amounts.
          sig { returns(T.nilable(Integer)) }
          attr_reader :amount_shipping
          # This is the sum of all the tax amounts.
          sig { returns(Integer) }
          attr_reader :amount_tax
          # Attribute for field breakdown
          sig { returns(Breakdown) }
          attr_reader :breakdown
        end
        # Total before any discounts or taxes are applied.
        sig { returns(Integer) }
        attr_reader :amount_subtotal
        # Total after discounts and taxes are applied.
        sig { returns(Integer) }
        attr_reader :amount_total
        # The line items that will appear on the next invoice after this quote is accepted. This does not include pending invoice items that exist on the customer but may still be included in the next invoice.
        sig { returns(Stripe::ListObject) }
        attr_reader :line_items
        # Attribute for field total_details
        sig { returns(TotalDetails) }
        attr_reader :total_details
      end
      # The definitive totals and line items the customer will be charged on a recurring basis. Takes into account the line items with recurring prices and discounts with `duration=forever` coupons only. Defaults to `null` if no inputted line items with recurring prices.
      sig { returns(T.nilable(Recurring)) }
      attr_reader :recurring
      # Attribute for field upfront
      sig { returns(Upfront) }
      attr_reader :upfront
    end
    class FromQuote < Stripe::StripeObject
      # Whether this quote is a revision of a different quote.
      sig { returns(T::Boolean) }
      attr_reader :is_revision
      # The quote that was cloned.
      sig { returns(T.any(String, Stripe::Quote)) }
      attr_reader :quote
    end
    class InvoiceSettings < Stripe::StripeObject
      class Issuer < Stripe::StripeObject
        # The connected account being referenced when `type` is `account`.
        sig { returns(T.any(String, Stripe::Account)) }
        attr_reader :account
        # Type of the account referenced.
        sig { returns(String) }
        attr_reader :type
      end
      # Number of days within which a customer must pay invoices generated by this quote. This value will be `null` for quotes where `collection_method=charge_automatically`.
      sig { returns(T.nilable(Integer)) }
      attr_reader :days_until_due
      # Attribute for field issuer
      sig { returns(Issuer) }
      attr_reader :issuer
    end
    class StatusTransitions < Stripe::StripeObject
      # The time that the quote was accepted. Measured in seconds since Unix epoch.
      sig { returns(T.nilable(Integer)) }
      attr_reader :accepted_at
      # The time that the quote was canceled. Measured in seconds since Unix epoch.
      sig { returns(T.nilable(Integer)) }
      attr_reader :canceled_at
      # The time that the quote was finalized. Measured in seconds since Unix epoch.
      sig { returns(T.nilable(Integer)) }
      attr_reader :finalized_at
    end
    class SubscriptionData < Stripe::StripeObject
      class BillingMode < Stripe::StripeObject
        # Controls how prorations and invoices for subscriptions are calculated and orchestrated.
        sig { returns(String) }
        attr_reader :type
      end
      # The billing mode of the quote.
      sig { returns(BillingMode) }
      attr_reader :billing_mode
      # The subscription's description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
      sig { returns(T.nilable(String)) }
      attr_reader :description
      # When creating a new subscription, the date of which the subscription schedule will start after the quote is accepted. This date is ignored if it is in the past when the quote is accepted. Measured in seconds since the Unix epoch.
      sig { returns(T.nilable(Integer)) }
      attr_reader :effective_date
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that will set metadata on the subscription or subscription schedule when the quote is accepted. If a recurring price is included in `line_items`, this field will be passed to the resulting subscription's `metadata` field. If `subscription_data.effective_date` is used, this field will be passed to the resulting subscription schedule's `phases.metadata` field. Unlike object-level metadata, this field is declarative. Updates will clear prior values.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_reader :metadata
      # Integer representing the number of trial period days before the customer is charged for the first time.
      sig { returns(T.nilable(Integer)) }
      attr_reader :trial_period_days
    end
    class TotalDetails < Stripe::StripeObject
      class Breakdown < Stripe::StripeObject
        class Discount < Stripe::StripeObject
          # The amount discounted.
          sig { returns(Integer) }
          attr_reader :amount
          # A discount represents the actual application of a [coupon](https://stripe.com/docs/api#coupons) or [promotion code](https://stripe.com/docs/api#promotion_codes).
          # It contains information about when the discount began, when it will end, and what it is applied to.
          #
          # Related guide: [Applying discounts to subscriptions](https://stripe.com/docs/billing/subscriptions/discounts)
          sig { returns(Stripe::Discount) }
          attr_reader :discount
        end
        class Tax < Stripe::StripeObject
          # Amount of tax applied for this rate.
          sig { returns(Integer) }
          attr_reader :amount
          # Tax rates can be applied to [invoices](/invoicing/taxes/tax-rates), [subscriptions](/billing/taxes/tax-rates) and [Checkout Sessions](/payments/checkout/use-manual-tax-rates) to collect tax.
          #
          # Related guide: [Tax rates](/billing/taxes/tax-rates)
          sig { returns(Stripe::TaxRate) }
          attr_reader :rate
          # The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
          sig { returns(T.nilable(String)) }
          attr_reader :taxability_reason
          # The amount on which tax is calculated, in cents (or local equivalent).
          sig { returns(T.nilable(Integer)) }
          attr_reader :taxable_amount
        end
        # The aggregated discounts.
        sig { returns(T::Array[Discount]) }
        attr_reader :discounts
        # The aggregated tax amounts by rate.
        sig { returns(T::Array[Tax]) }
        attr_reader :taxes
      end
      # This is the sum of all the discounts.
      sig { returns(Integer) }
      attr_reader :amount_discount
      # This is the sum of all the shipping amounts.
      sig { returns(T.nilable(Integer)) }
      attr_reader :amount_shipping
      # This is the sum of all the tax amounts.
      sig { returns(Integer) }
      attr_reader :amount_tax
      # Attribute for field breakdown
      sig { returns(Breakdown) }
      attr_reader :breakdown
    end
    class TransferData < Stripe::StripeObject
      # The amount in cents (or local equivalent) that will be transferred to the destination account when the invoice is paid. By default, the entire amount is transferred to the destination.
      sig { returns(T.nilable(Integer)) }
      attr_reader :amount
      # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the destination account. By default, the entire amount will be transferred to the destination.
      sig { returns(T.nilable(Float)) }
      attr_reader :amount_percent
      # The account where funds from the payment will be transferred to upon payment success.
      sig { returns(T.any(String, Stripe::Account)) }
      attr_reader :destination
    end
    # Total before any discounts or taxes are applied.
    sig { returns(Integer) }
    attr_reader :amount_subtotal
    # Total after discounts and taxes are applied.
    sig { returns(Integer) }
    attr_reader :amount_total
    # ID of the Connect Application that created the quote.
    sig { returns(T.nilable(T.any(String, Stripe::Application))) }
    attr_reader :application
    # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. Only applicable if there are no line items with recurring prices on the quote.
    sig { returns(T.nilable(Integer)) }
    attr_reader :application_fee_amount
    # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. Only applicable if there are line items with recurring prices on the quote.
    sig { returns(T.nilable(Float)) }
    attr_reader :application_fee_percent
    # Attribute for field automatic_tax
    sig { returns(AutomaticTax) }
    attr_reader :automatic_tax
    # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay invoices at the end of the subscription cycle or on finalization using the default payment method attached to the subscription or customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`. Defaults to `charge_automatically`.
    sig { returns(String) }
    attr_reader :collection_method
    # Attribute for field computed
    sig { returns(Computed) }
    attr_reader :computed
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(T.nilable(String)) }
    attr_reader :currency
    # The customer which this quote belongs to. A customer is required before finalizing the quote. Once specified, it cannot be changed.
    sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
    attr_reader :customer
    # The tax rates applied to this quote.
    sig { returns(T::Array[T.any(String, Stripe::TaxRate)]) }
    attr_reader :default_tax_rates
    # A description that will be displayed on the quote PDF.
    sig { returns(T.nilable(String)) }
    attr_reader :description
    # The discounts applied to this quote.
    sig { returns(T::Array[T.any(String, Stripe::Discount)]) }
    attr_reader :discounts
    # The date on which the quote will be canceled if in `open` or `draft` status. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :expires_at
    # A footer that will be displayed on the quote PDF.
    sig { returns(T.nilable(String)) }
    attr_reader :footer
    # Details of the quote that was cloned. See the [cloning documentation](https://stripe.com/docs/quotes/clone) for more details.
    sig { returns(T.nilable(FromQuote)) }
    attr_reader :from_quote
    # A header that will be displayed on the quote PDF.
    sig { returns(T.nilable(String)) }
    attr_reader :header
    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id
    # The invoice that was created from this quote.
    sig { returns(T.nilable(T.any(String, Stripe::Invoice))) }
    attr_reader :invoice
    # Attribute for field invoice_settings
    sig { returns(InvoiceSettings) }
    attr_reader :invoice_settings
    # A list of items the customer is being quoted for.
    sig { returns(Stripe::ListObject) }
    attr_reader :line_items
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T::Hash[String, String]) }
    attr_reader :metadata
    # A unique number that identifies this particular quote. This number is assigned once the quote is [finalized](https://stripe.com/docs/quotes/overview#finalize).
    sig { returns(T.nilable(String)) }
    attr_reader :number
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object
    # The account on behalf of which to charge. See the [Connect documentation](https://support.stripe.com/questions/sending-invoices-on-behalf-of-connected-accounts) for details.
    sig { returns(T.nilable(T.any(String, Stripe::Account))) }
    attr_reader :on_behalf_of
    # The status of the quote.
    sig { returns(String) }
    attr_reader :status
    # Attribute for field status_transitions
    sig { returns(StatusTransitions) }
    attr_reader :status_transitions
    # The subscription that was created or updated from this quote.
    sig { returns(T.nilable(T.any(String, Stripe::Subscription))) }
    attr_reader :subscription
    # Attribute for field subscription_data
    sig { returns(SubscriptionData) }
    attr_reader :subscription_data
    # The subscription schedule that was created or updated from this quote.
    sig { returns(T.nilable(T.any(String, Stripe::SubscriptionSchedule))) }
    attr_reader :subscription_schedule
    # ID of the test clock this quote belongs to.
    sig { returns(T.nilable(T.any(String, Stripe::TestHelpers::TestClock))) }
    attr_reader :test_clock
    # Attribute for field total_details
    sig { returns(TotalDetails) }
    attr_reader :total_details
    # The account (if any) the payments will be attributed to for tax reporting, and where funds from each payment will be transferred to for each of the invoices.
    sig { returns(T.nilable(TransferData)) }
    attr_reader :transfer_data
    class ListParams < Stripe::RequestParams
      # The ID of the customer whose quotes will be retrieved.
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
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :starting_after
      # The status of the quote.
      sig { returns(T.nilable(String)) }
      attr_accessor :status
      # Provides a list of quotes that are associated with the specified test clock. The response will not include quotes with test clocks if this and the customer parameter is not set.
      sig { returns(T.nilable(String)) }
      attr_accessor :test_clock
      sig {
        params(customer: T.nilable(String), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String), status: T.nilable(String), test_clock: T.nilable(String)).void
       }
      def initialize(
        customer: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        starting_after: nil,
        status: nil,
        test_clock: nil
      ); end
    end
    class CreateParams < Stripe::RequestParams
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
        # Controls whether Stripe will automatically compute tax on the resulting invoices or subscriptions as well as the quote itself.
        sig { returns(T::Boolean) }
        attr_accessor :enabled
        # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
        sig { returns(T.nilable(::Stripe::Quote::CreateParams::AutomaticTax::Liability)) }
        attr_accessor :liability
        sig {
          params(enabled: T::Boolean, liability: T.nilable(::Stripe::Quote::CreateParams::AutomaticTax::Liability)).void
         }
        def initialize(enabled: nil, liability: nil); end
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
      class FromQuote < Stripe::RequestParams
        # Whether this quote is a revision of the previous quote.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :is_revision
        # The `id` of the quote that will be cloned.
        sig { returns(String) }
        attr_accessor :quote
        sig { params(is_revision: T.nilable(T::Boolean), quote: String).void }
        def initialize(is_revision: nil, quote: nil); end
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
        # Number of days within which a customer must pay the invoice generated by this quote. This value will be `null` for quotes where `collection_method=charge_automatically`.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :days_until_due
        # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
        sig { returns(T.nilable(::Stripe::Quote::CreateParams::InvoiceSettings::Issuer)) }
        attr_accessor :issuer
        sig {
          params(days_until_due: T.nilable(Integer), issuer: T.nilable(::Stripe::Quote::CreateParams::InvoiceSettings::Issuer)).void
         }
        def initialize(days_until_due: nil, issuer: nil); end
      end
      class LineItem < Stripe::RequestParams
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
          sig { returns(T.nilable(::Stripe::Quote::CreateParams::LineItem::PriceData::Recurring)) }
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
            params(currency: String, product: String, recurring: T.nilable(::Stripe::Quote::CreateParams::LineItem::PriceData::Recurring), tax_behavior: T.nilable(String), unit_amount: T.nilable(Integer), unit_amount_decimal: T.nilable(String)).void
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
        # The discounts applied to this line item.
        sig {
          returns(T.nilable(T.any(String, T::Array[::Stripe::Quote::CreateParams::LineItem::Discount])))
         }
        attr_accessor :discounts
        # The ID of the price object. One of `price` or `price_data` is required.
        sig { returns(T.nilable(String)) }
        attr_accessor :price
        # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline. One of `price` or `price_data` is required.
        sig { returns(T.nilable(::Stripe::Quote::CreateParams::LineItem::PriceData)) }
        attr_accessor :price_data
        # The quantity of the line item.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :quantity
        # The tax rates which apply to the line item. When set, the `default_tax_rates` on the quote do not apply to this line item.
        sig { returns(T.nilable(T.any(String, T::Array[String]))) }
        attr_accessor :tax_rates
        sig {
          params(discounts: T.nilable(T.any(String, T::Array[::Stripe::Quote::CreateParams::LineItem::Discount])), price: T.nilable(String), price_data: T.nilable(::Stripe::Quote::CreateParams::LineItem::PriceData), quantity: T.nilable(Integer), tax_rates: T.nilable(T.any(String, T::Array[String]))).void
         }
        def initialize(
          discounts: nil,
          price: nil,
          price_data: nil,
          quantity: nil,
          tax_rates: nil
        ); end
      end
      class SubscriptionData < Stripe::RequestParams
        class BillingMode < Stripe::RequestParams
          # Controls the calculation and orchestration of prorations and invoices for subscriptions.
          sig { returns(String) }
          attr_accessor :type
          sig { params(type: String).void }
          def initialize(type: nil); end
        end
        # Controls how prorations and invoices for subscriptions are calculated and orchestrated.
        sig { returns(T.nilable(::Stripe::Quote::CreateParams::SubscriptionData::BillingMode)) }
        attr_accessor :billing_mode
        # The subscription's description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
        sig { returns(T.nilable(String)) }
        attr_accessor :description
        # When creating a new subscription, the date of which the subscription schedule will start after the quote is accepted. The `effective_date` is ignored if it is in the past when the quote is accepted.
        sig { returns(T.nilable(T.any(String, T.any(String, Integer)))) }
        attr_accessor :effective_date
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that will set metadata on the subscription or subscription schedule when the quote is accepted. If a recurring price is included in `line_items`, this field will be passed to the resulting subscription's `metadata` field. If `subscription_data.effective_date` is used, this field will be passed to the resulting subscription schedule's `phases.metadata` field. Unlike object-level metadata, this field is declarative. Updates will clear prior values.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        # Integer representing the number of trial period days before the customer is charged for the first time.
        sig { returns(T.nilable(T.any(String, Integer))) }
        attr_accessor :trial_period_days
        sig {
          params(billing_mode: T.nilable(::Stripe::Quote::CreateParams::SubscriptionData::BillingMode), description: T.nilable(String), effective_date: T.nilable(T.any(String, T.any(String, Integer))), metadata: T.nilable(T::Hash[String, String]), trial_period_days: T.nilable(T.any(String, Integer))).void
         }
        def initialize(
          billing_mode: nil,
          description: nil,
          effective_date: nil,
          metadata: nil,
          trial_period_days: nil
        ); end
      end
      class TransferData < Stripe::RequestParams
        # The amount that will be transferred automatically when the invoice is paid. If no amount is set, the full amount is transferred. There cannot be any line items with recurring prices when using this field.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :amount
        # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the destination account. By default, the entire amount is transferred to the destination. There must be at least 1 line item with a recurring price to use this field.
        sig { returns(T.nilable(Float)) }
        attr_accessor :amount_percent
        # ID of an existing, connected Stripe account.
        sig { returns(String) }
        attr_accessor :destination
        sig {
          params(amount: T.nilable(Integer), amount_percent: T.nilable(Float), destination: String).void
         }
        def initialize(amount: nil, amount_percent: nil, destination: nil); end
      end
      # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. There cannot be any line items with recurring prices when using this field.
      sig { returns(T.nilable(T.any(String, Integer))) }
      attr_accessor :application_fee_amount
      # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. There must be at least 1 line item with a recurring price to use this field.
      sig { returns(T.nilable(T.any(String, Float))) }
      attr_accessor :application_fee_percent
      # Settings for automatic tax lookup for this quote and resulting invoices and subscriptions.
      sig { returns(T.nilable(::Stripe::Quote::CreateParams::AutomaticTax)) }
      attr_accessor :automatic_tax
      # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay invoices at the end of the subscription cycle or at invoice finalization using the default payment method attached to the subscription or customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`. Defaults to `charge_automatically`.
      sig { returns(T.nilable(String)) }
      attr_accessor :collection_method
      # The customer for which this quote belongs to. A customer is required before finalizing the quote. Once specified, it cannot be changed.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer
      # The tax rates that will apply to any line item that does not have `tax_rates` set.
      sig { returns(T.nilable(T.any(String, T::Array[String]))) }
      attr_accessor :default_tax_rates
      # A description that will be displayed on the quote PDF. If no value is passed, the default description configured in your [quote template settings](https://dashboard.stripe.com/settings/billing/quote) will be used.
      sig { returns(T.nilable(String)) }
      attr_accessor :description
      # The discounts applied to the quote.
      sig { returns(T.nilable(T.any(String, T::Array[::Stripe::Quote::CreateParams::Discount]))) }
      attr_accessor :discounts
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # A future timestamp on which the quote will be canceled if in `open` or `draft` status. Measured in seconds since the Unix epoch. If no value is passed, the default expiration date configured in your [quote template settings](https://dashboard.stripe.com/settings/billing/quote) will be used.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :expires_at
      # A footer that will be displayed on the quote PDF. If no value is passed, the default footer configured in your [quote template settings](https://dashboard.stripe.com/settings/billing/quote) will be used.
      sig { returns(T.nilable(String)) }
      attr_accessor :footer
      # Clone an existing quote. The new quote will be created in `status=draft`. When using this parameter, you cannot specify any other parameters except for `expires_at`.
      sig { returns(T.nilable(::Stripe::Quote::CreateParams::FromQuote)) }
      attr_accessor :from_quote
      # A header that will be displayed on the quote PDF. If no value is passed, the default header configured in your [quote template settings](https://dashboard.stripe.com/settings/billing/quote) will be used.
      sig { returns(T.nilable(String)) }
      attr_accessor :header
      # All invoices will be billed using the specified settings.
      sig { returns(T.nilable(::Stripe::Quote::CreateParams::InvoiceSettings)) }
      attr_accessor :invoice_settings
      # A list of line items the customer is being quoted for. Each line item includes information about the product, the quantity, and the resulting cost.
      sig { returns(T.nilable(T::Array[::Stripe::Quote::CreateParams::LineItem])) }
      attr_accessor :line_items
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_accessor :metadata
      # The account on behalf of which to charge.
      sig { returns(T.nilable(String)) }
      attr_accessor :on_behalf_of
      # When creating a subscription or subscription schedule, the specified configuration data will be used. There must be at least one line item with a recurring price for a subscription or subscription schedule to be created. A subscription schedule is created if `subscription_data[effective_date]` is present and in the future, otherwise a subscription is created.
      sig { returns(T.nilable(::Stripe::Quote::CreateParams::SubscriptionData)) }
      attr_accessor :subscription_data
      # ID of the test clock to attach to the quote.
      sig { returns(T.nilable(String)) }
      attr_accessor :test_clock
      # The data with which to automatically create a Transfer for each of the invoices.
      sig { returns(T.nilable(T.any(String, ::Stripe::Quote::CreateParams::TransferData))) }
      attr_accessor :transfer_data
      sig {
        params(application_fee_amount: T.nilable(T.any(String, Integer)), application_fee_percent: T.nilable(T.any(String, Float)), automatic_tax: T.nilable(::Stripe::Quote::CreateParams::AutomaticTax), collection_method: T.nilable(String), customer: T.nilable(String), default_tax_rates: T.nilable(T.any(String, T::Array[String])), description: T.nilable(String), discounts: T.nilable(T.any(String, T::Array[::Stripe::Quote::CreateParams::Discount])), expand: T.nilable(T::Array[String]), expires_at: T.nilable(Integer), footer: T.nilable(String), from_quote: T.nilable(::Stripe::Quote::CreateParams::FromQuote), header: T.nilable(String), invoice_settings: T.nilable(::Stripe::Quote::CreateParams::InvoiceSettings), line_items: T.nilable(T::Array[::Stripe::Quote::CreateParams::LineItem]), metadata: T.nilable(T::Hash[String, String]), on_behalf_of: T.nilable(String), subscription_data: T.nilable(::Stripe::Quote::CreateParams::SubscriptionData), test_clock: T.nilable(String), transfer_data: T.nilable(T.any(String, ::Stripe::Quote::CreateParams::TransferData))).void
       }
      def initialize(
        application_fee_amount: nil,
        application_fee_percent: nil,
        automatic_tax: nil,
        collection_method: nil,
        customer: nil,
        default_tax_rates: nil,
        description: nil,
        discounts: nil,
        expand: nil,
        expires_at: nil,
        footer: nil,
        from_quote: nil,
        header: nil,
        invoice_settings: nil,
        line_items: nil,
        metadata: nil,
        on_behalf_of: nil,
        subscription_data: nil,
        test_clock: nil,
        transfer_data: nil
      ); end
    end
    class UpdateParams < Stripe::RequestParams
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
        # Controls whether Stripe will automatically compute tax on the resulting invoices or subscriptions as well as the quote itself.
        sig { returns(T::Boolean) }
        attr_accessor :enabled
        # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
        sig { returns(T.nilable(::Stripe::Quote::UpdateParams::AutomaticTax::Liability)) }
        attr_accessor :liability
        sig {
          params(enabled: T::Boolean, liability: T.nilable(::Stripe::Quote::UpdateParams::AutomaticTax::Liability)).void
         }
        def initialize(enabled: nil, liability: nil); end
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
        # Number of days within which a customer must pay the invoice generated by this quote. This value will be `null` for quotes where `collection_method=charge_automatically`.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :days_until_due
        # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
        sig { returns(T.nilable(::Stripe::Quote::UpdateParams::InvoiceSettings::Issuer)) }
        attr_accessor :issuer
        sig {
          params(days_until_due: T.nilable(Integer), issuer: T.nilable(::Stripe::Quote::UpdateParams::InvoiceSettings::Issuer)).void
         }
        def initialize(days_until_due: nil, issuer: nil); end
      end
      class LineItem < Stripe::RequestParams
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
          sig { returns(T.nilable(::Stripe::Quote::UpdateParams::LineItem::PriceData::Recurring)) }
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
            params(currency: String, product: String, recurring: T.nilable(::Stripe::Quote::UpdateParams::LineItem::PriceData::Recurring), tax_behavior: T.nilable(String), unit_amount: T.nilable(Integer), unit_amount_decimal: T.nilable(String)).void
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
        # The discounts applied to this line item.
        sig {
          returns(T.nilable(T.any(String, T::Array[::Stripe::Quote::UpdateParams::LineItem::Discount])))
         }
        attr_accessor :discounts
        # The ID of an existing line item on the quote.
        sig { returns(T.nilable(String)) }
        attr_accessor :id
        # The ID of the price object. One of `price` or `price_data` is required.
        sig { returns(T.nilable(String)) }
        attr_accessor :price
        # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline. One of `price` or `price_data` is required.
        sig { returns(T.nilable(::Stripe::Quote::UpdateParams::LineItem::PriceData)) }
        attr_accessor :price_data
        # The quantity of the line item.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :quantity
        # The tax rates which apply to the line item. When set, the `default_tax_rates` on the quote do not apply to this line item.
        sig { returns(T.nilable(T.any(String, T::Array[String]))) }
        attr_accessor :tax_rates
        sig {
          params(discounts: T.nilable(T.any(String, T::Array[::Stripe::Quote::UpdateParams::LineItem::Discount])), id: T.nilable(String), price: T.nilable(String), price_data: T.nilable(::Stripe::Quote::UpdateParams::LineItem::PriceData), quantity: T.nilable(Integer), tax_rates: T.nilable(T.any(String, T::Array[String]))).void
         }
        def initialize(
          discounts: nil,
          id: nil,
          price: nil,
          price_data: nil,
          quantity: nil,
          tax_rates: nil
        ); end
      end
      class SubscriptionData < Stripe::RequestParams
        # The subscription's description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
        sig { returns(T.nilable(String)) }
        attr_accessor :description
        # When creating a new subscription, the date of which the subscription schedule will start after the quote is accepted. The `effective_date` is ignored if it is in the past when the quote is accepted.
        sig { returns(T.nilable(T.any(String, T.any(String, Integer)))) }
        attr_accessor :effective_date
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that will set metadata on the subscription or subscription schedule when the quote is accepted. If a recurring price is included in `line_items`, this field will be passed to the resulting subscription's `metadata` field. If `subscription_data.effective_date` is used, this field will be passed to the resulting subscription schedule's `phases.metadata` field. Unlike object-level metadata, this field is declarative. Updates will clear prior values.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        # Integer representing the number of trial period days before the customer is charged for the first time.
        sig { returns(T.nilable(T.any(String, Integer))) }
        attr_accessor :trial_period_days
        sig {
          params(description: T.nilable(String), effective_date: T.nilable(T.any(String, T.any(String, Integer))), metadata: T.nilable(T::Hash[String, String]), trial_period_days: T.nilable(T.any(String, Integer))).void
         }
        def initialize(
          description: nil,
          effective_date: nil,
          metadata: nil,
          trial_period_days: nil
        ); end
      end
      class TransferData < Stripe::RequestParams
        # The amount that will be transferred automatically when the invoice is paid. If no amount is set, the full amount is transferred. There cannot be any line items with recurring prices when using this field.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :amount
        # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the destination account. By default, the entire amount is transferred to the destination. There must be at least 1 line item with a recurring price to use this field.
        sig { returns(T.nilable(Float)) }
        attr_accessor :amount_percent
        # ID of an existing, connected Stripe account.
        sig { returns(String) }
        attr_accessor :destination
        sig {
          params(amount: T.nilable(Integer), amount_percent: T.nilable(Float), destination: String).void
         }
        def initialize(amount: nil, amount_percent: nil, destination: nil); end
      end
      # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. There cannot be any line items with recurring prices when using this field.
      sig { returns(T.nilable(T.any(String, Integer))) }
      attr_accessor :application_fee_amount
      # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. There must be at least 1 line item with a recurring price to use this field.
      sig { returns(T.nilable(T.any(String, Float))) }
      attr_accessor :application_fee_percent
      # Settings for automatic tax lookup for this quote and resulting invoices and subscriptions.
      sig { returns(T.nilable(::Stripe::Quote::UpdateParams::AutomaticTax)) }
      attr_accessor :automatic_tax
      # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay invoices at the end of the subscription cycle or at invoice finalization using the default payment method attached to the subscription or customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`. Defaults to `charge_automatically`.
      sig { returns(T.nilable(String)) }
      attr_accessor :collection_method
      # The customer for which this quote belongs to. A customer is required before finalizing the quote. Once specified, it cannot be changed.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer
      # The tax rates that will apply to any line item that does not have `tax_rates` set.
      sig { returns(T.nilable(T.any(String, T::Array[String]))) }
      attr_accessor :default_tax_rates
      # A description that will be displayed on the quote PDF.
      sig { returns(T.nilable(String)) }
      attr_accessor :description
      # The discounts applied to the quote.
      sig { returns(T.nilable(T.any(String, T::Array[::Stripe::Quote::UpdateParams::Discount]))) }
      attr_accessor :discounts
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # A future timestamp on which the quote will be canceled if in `open` or `draft` status. Measured in seconds since the Unix epoch.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :expires_at
      # A footer that will be displayed on the quote PDF.
      sig { returns(T.nilable(String)) }
      attr_accessor :footer
      # A header that will be displayed on the quote PDF.
      sig { returns(T.nilable(String)) }
      attr_accessor :header
      # All invoices will be billed using the specified settings.
      sig { returns(T.nilable(::Stripe::Quote::UpdateParams::InvoiceSettings)) }
      attr_accessor :invoice_settings
      # A list of line items the customer is being quoted for. Each line item includes information about the product, the quantity, and the resulting cost.
      sig { returns(T.nilable(T::Array[::Stripe::Quote::UpdateParams::LineItem])) }
      attr_accessor :line_items
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_accessor :metadata
      # The account on behalf of which to charge.
      sig { returns(T.nilable(String)) }
      attr_accessor :on_behalf_of
      # When creating a subscription or subscription schedule, the specified configuration data will be used. There must be at least one line item with a recurring price for a subscription or subscription schedule to be created. A subscription schedule is created if `subscription_data[effective_date]` is present and in the future, otherwise a subscription is created.
      sig { returns(T.nilable(::Stripe::Quote::UpdateParams::SubscriptionData)) }
      attr_accessor :subscription_data
      # The data with which to automatically create a Transfer for each of the invoices.
      sig { returns(T.nilable(T.any(String, ::Stripe::Quote::UpdateParams::TransferData))) }
      attr_accessor :transfer_data
      sig {
        params(application_fee_amount: T.nilable(T.any(String, Integer)), application_fee_percent: T.nilable(T.any(String, Float)), automatic_tax: T.nilable(::Stripe::Quote::UpdateParams::AutomaticTax), collection_method: T.nilable(String), customer: T.nilable(String), default_tax_rates: T.nilable(T.any(String, T::Array[String])), description: T.nilable(String), discounts: T.nilable(T.any(String, T::Array[::Stripe::Quote::UpdateParams::Discount])), expand: T.nilable(T::Array[String]), expires_at: T.nilable(Integer), footer: T.nilable(String), header: T.nilable(String), invoice_settings: T.nilable(::Stripe::Quote::UpdateParams::InvoiceSettings), line_items: T.nilable(T::Array[::Stripe::Quote::UpdateParams::LineItem]), metadata: T.nilable(T::Hash[String, String]), on_behalf_of: T.nilable(String), subscription_data: T.nilable(::Stripe::Quote::UpdateParams::SubscriptionData), transfer_data: T.nilable(T.any(String, ::Stripe::Quote::UpdateParams::TransferData))).void
       }
      def initialize(
        application_fee_amount: nil,
        application_fee_percent: nil,
        automatic_tax: nil,
        collection_method: nil,
        customer: nil,
        default_tax_rates: nil,
        description: nil,
        discounts: nil,
        expand: nil,
        expires_at: nil,
        footer: nil,
        header: nil,
        invoice_settings: nil,
        line_items: nil,
        metadata: nil,
        on_behalf_of: nil,
        subscription_data: nil,
        transfer_data: nil
      ); end
    end
    class ListComputedUpfrontLineItemsParams < Stripe::RequestParams
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :starting_after
      sig {
        params(ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
       }
      def initialize(ending_before: nil, expand: nil, limit: nil, starting_after: nil); end
    end
    class ListLineItemsParams < Stripe::RequestParams
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :starting_after
      sig {
        params(ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
       }
      def initialize(ending_before: nil, expand: nil, limit: nil, starting_after: nil); end
    end
    class AcceptParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    class CancelParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    class FinalizeQuoteParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # A future timestamp on which the quote will be canceled if in `open` or `draft` status. Measured in seconds since the Unix epoch.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :expires_at
      sig { params(expand: T.nilable(T::Array[String]), expires_at: T.nilable(Integer)).void }
      def initialize(expand: nil, expires_at: nil); end
    end
    class PdfParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    # Accepts the specified quote.
    sig {
      params(params: T.any(::Stripe::Quote::AcceptParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Quote)
     }
    def accept(params = {}, opts = {}); end

    # Accepts the specified quote.
    sig {
      params(quote: String, params: T.any(::Stripe::Quote::AcceptParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Quote)
     }
    def self.accept(quote, params = {}, opts = {}); end

    # Cancels the quote.
    sig {
      params(params: T.any(::Stripe::Quote::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Quote)
     }
    def cancel(params = {}, opts = {}); end

    # Cancels the quote.
    sig {
      params(quote: String, params: T.any(::Stripe::Quote::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Quote)
     }
    def self.cancel(quote, params = {}, opts = {}); end

    # A quote models prices and services for a customer. Default options for header, description, footer, and expires_at can be set in the dashboard via the [quote template](https://dashboard.stripe.com/settings/billing/quote).
    sig {
      params(params: T.any(::Stripe::Quote::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Quote)
     }
    def self.create(params = {}, opts = {}); end

    # Finalizes the quote.
    sig {
      params(params: T.any(::Stripe::Quote::FinalizeQuoteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Quote)
     }
    def finalize_quote(params = {}, opts = {}); end

    # Finalizes the quote.
    sig {
      params(quote: String, params: T.any(::Stripe::Quote::FinalizeQuoteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Quote)
     }
    def self.finalize_quote(quote, params = {}, opts = {}); end

    # Returns a list of your quotes.
    sig {
      params(params: T.any(::Stripe::Quote::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def self.list(params = {}, opts = {}); end

    # When retrieving a quote, there is an includable [computed.upfront.line_items](https://stripe.com/docs/api/quotes/object#quote_object-computed-upfront-line_items) property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of upfront line items.
    sig {
      params(params: T.any(::Stripe::Quote::ListComputedUpfrontLineItemsParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list_computed_upfront_line_items(params = {}, opts = {}); end

    # When retrieving a quote, there is an includable [computed.upfront.line_items](https://stripe.com/docs/api/quotes/object#quote_object-computed-upfront-line_items) property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of upfront line items.
    sig {
      params(quote: String, params: T.any(::Stripe::Quote::ListComputedUpfrontLineItemsParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def self.list_computed_upfront_line_items(quote, params = {}, opts = {}); end

    # When retrieving a quote, there is an includable line_items property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.
    sig {
      params(params: T.any(::Stripe::Quote::ListLineItemsParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list_line_items(params = {}, opts = {}); end

    # When retrieving a quote, there is an includable line_items property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.
    sig {
      params(quote: String, params: T.any(::Stripe::Quote::ListLineItemsParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def self.list_line_items(quote, params = {}, opts = {}); end

    # Download the PDF for a finalized quote. Explanation for special handling can be found [here](https://docs.stripe.com/quotes/overview#quote_pdf)
    sig {
      params(params: T.any(::Stripe::Quote::PdfParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped, read_body_chunk_block: T.untyped).returns(T.untyped)
     }
    def pdf(params = {}, opts = {}, &read_body_chunk_block); end

    # Download the PDF for a finalized quote. Explanation for special handling can be found [here](https://docs.stripe.com/quotes/overview#quote_pdf)
    sig {
      params(quote: String, params: T.any(::Stripe::Quote::PdfParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped, read_body_chunk_block: T.untyped).returns(T.untyped)
     }
    def self.pdf(quote, params = {}, opts = {}, &read_body_chunk_block); end

    # A quote models prices and services for a customer.
    sig {
      params(quote: String, params: T.any(::Stripe::Quote::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Quote)
     }
    def self.update(quote, params = {}, opts = {}); end
  end
end