# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A Quote is a way to model prices that you'd like to provide to a customer.
  # Once accepted, it will automatically create an invoice, subscription or subscription schedule.
  class Quote < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "quote"
    def self.object_name
      "quote"
    end

    class AutomaticTax < Stripe::StripeObject
      class Liability < Stripe::StripeObject
        # The connected account being referenced when `type` is `account`.
        attr_reader :account
        # Type of the account referenced.
        attr_reader :type
      end
      # Automatically calculate taxes
      attr_reader :enabled
      # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
      attr_reader :liability
      # The tax provider powering automatic tax.
      attr_reader :provider
      # The status of the most recent automated tax calculation for this quote.
      attr_reader :status
    end

    class Computed < Stripe::StripeObject
      class Recurring < Stripe::StripeObject
        class TotalDetails < Stripe::StripeObject
          class Breakdown < Stripe::StripeObject
            class Discount < Stripe::StripeObject
              # The amount discounted.
              attr_reader :amount
              # A discount represents the actual application of a [coupon](https://stripe.com/docs/api#coupons) or [promotion code](https://stripe.com/docs/api#promotion_codes).
              # It contains information about when the discount began, when it will end, and what it is applied to.
              #
              # Related guide: [Applying discounts to subscriptions](https://stripe.com/docs/billing/subscriptions/discounts)
              attr_reader :discount
            end

            class Tax < Stripe::StripeObject
              # Amount of tax applied for this rate.
              attr_reader :amount
              # Tax rates can be applied to [invoices](/invoicing/taxes/tax-rates), [subscriptions](/billing/taxes/tax-rates) and [Checkout Sessions](/payments/checkout/use-manual-tax-rates) to collect tax.
              #
              # Related guide: [Tax rates](/billing/taxes/tax-rates)
              attr_reader :rate
              # The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
              attr_reader :taxability_reason
              # The amount on which tax is calculated, in cents (or local equivalent).
              attr_reader :taxable_amount
            end
            # The aggregated discounts.
            attr_reader :discounts
            # The aggregated tax amounts by rate.
            attr_reader :taxes
          end
          # This is the sum of all the discounts.
          attr_reader :amount_discount
          # This is the sum of all the shipping amounts.
          attr_reader :amount_shipping
          # This is the sum of all the tax amounts.
          attr_reader :amount_tax
          # Attribute for field breakdown
          attr_reader :breakdown
        end
        # Total before any discounts or taxes are applied.
        attr_reader :amount_subtotal
        # Total after discounts and taxes are applied.
        attr_reader :amount_total
        # The frequency at which a subscription is billed. One of `day`, `week`, `month` or `year`.
        attr_reader :interval
        # The number of intervals (specified in the `interval` attribute) between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months.
        attr_reader :interval_count
        # Attribute for field total_details
        attr_reader :total_details
      end

      class Upfront < Stripe::StripeObject
        class TotalDetails < Stripe::StripeObject
          class Breakdown < Stripe::StripeObject
            class Discount < Stripe::StripeObject
              # The amount discounted.
              attr_reader :amount
              # A discount represents the actual application of a [coupon](https://stripe.com/docs/api#coupons) or [promotion code](https://stripe.com/docs/api#promotion_codes).
              # It contains information about when the discount began, when it will end, and what it is applied to.
              #
              # Related guide: [Applying discounts to subscriptions](https://stripe.com/docs/billing/subscriptions/discounts)
              attr_reader :discount
            end

            class Tax < Stripe::StripeObject
              # Amount of tax applied for this rate.
              attr_reader :amount
              # Tax rates can be applied to [invoices](/invoicing/taxes/tax-rates), [subscriptions](/billing/taxes/tax-rates) and [Checkout Sessions](/payments/checkout/use-manual-tax-rates) to collect tax.
              #
              # Related guide: [Tax rates](/billing/taxes/tax-rates)
              attr_reader :rate
              # The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
              attr_reader :taxability_reason
              # The amount on which tax is calculated, in cents (or local equivalent).
              attr_reader :taxable_amount
            end
            # The aggregated discounts.
            attr_reader :discounts
            # The aggregated tax amounts by rate.
            attr_reader :taxes
          end
          # This is the sum of all the discounts.
          attr_reader :amount_discount
          # This is the sum of all the shipping amounts.
          attr_reader :amount_shipping
          # This is the sum of all the tax amounts.
          attr_reader :amount_tax
          # Attribute for field breakdown
          attr_reader :breakdown
        end
        # Total before any discounts or taxes are applied.
        attr_reader :amount_subtotal
        # Total after discounts and taxes are applied.
        attr_reader :amount_total
        # The line items that will appear on the next invoice after this quote is accepted. This does not include pending invoice items that exist on the customer but may still be included in the next invoice.
        attr_reader :line_items
        # Attribute for field total_details
        attr_reader :total_details
      end
      # The definitive totals and line items the customer will be charged on a recurring basis. Takes into account the line items with recurring prices and discounts with `duration=forever` coupons only. Defaults to `null` if no inputted line items with recurring prices.
      attr_reader :recurring
      # Attribute for field upfront
      attr_reader :upfront
    end

    class FromQuote < Stripe::StripeObject
      # Whether this quote is a revision of a different quote.
      attr_reader :is_revision
      # The quote that was cloned.
      attr_reader :quote
    end

    class InvoiceSettings < Stripe::StripeObject
      class Issuer < Stripe::StripeObject
        # The connected account being referenced when `type` is `account`.
        attr_reader :account
        # Type of the account referenced.
        attr_reader :type
      end
      # Number of days within which a customer must pay invoices generated by this quote. This value will be `null` for quotes where `collection_method=charge_automatically`.
      attr_reader :days_until_due
      # Attribute for field issuer
      attr_reader :issuer
    end

    class StatusTransitions < Stripe::StripeObject
      # The time that the quote was accepted. Measured in seconds since Unix epoch.
      attr_reader :accepted_at
      # The time that the quote was canceled. Measured in seconds since Unix epoch.
      attr_reader :canceled_at
      # The time that the quote was finalized. Measured in seconds since Unix epoch.
      attr_reader :finalized_at
    end

    class SubscriptionData < Stripe::StripeObject
      # The subscription's description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
      attr_reader :description
      # When creating a new subscription, the date of which the subscription schedule will start after the quote is accepted. This date is ignored if it is in the past when the quote is accepted. Measured in seconds since the Unix epoch.
      attr_reader :effective_date
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that will set metadata on the subscription or subscription schedule when the quote is accepted. If a recurring price is included in `line_items`, this field will be passed to the resulting subscription's `metadata` field. If `subscription_data.effective_date` is used, this field will be passed to the resulting subscription schedule's `phases.metadata` field. Unlike object-level metadata, this field is declarative. Updates will clear prior values.
      attr_reader :metadata
      # Integer representing the number of trial period days before the customer is charged for the first time.
      attr_reader :trial_period_days
    end

    class TotalDetails < Stripe::StripeObject
      class Breakdown < Stripe::StripeObject
        class Discount < Stripe::StripeObject
          # The amount discounted.
          attr_reader :amount
          # A discount represents the actual application of a [coupon](https://stripe.com/docs/api#coupons) or [promotion code](https://stripe.com/docs/api#promotion_codes).
          # It contains information about when the discount began, when it will end, and what it is applied to.
          #
          # Related guide: [Applying discounts to subscriptions](https://stripe.com/docs/billing/subscriptions/discounts)
          attr_reader :discount
        end

        class Tax < Stripe::StripeObject
          # Amount of tax applied for this rate.
          attr_reader :amount
          # Tax rates can be applied to [invoices](/invoicing/taxes/tax-rates), [subscriptions](/billing/taxes/tax-rates) and [Checkout Sessions](/payments/checkout/use-manual-tax-rates) to collect tax.
          #
          # Related guide: [Tax rates](/billing/taxes/tax-rates)
          attr_reader :rate
          # The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
          attr_reader :taxability_reason
          # The amount on which tax is calculated, in cents (or local equivalent).
          attr_reader :taxable_amount
        end
        # The aggregated discounts.
        attr_reader :discounts
        # The aggregated tax amounts by rate.
        attr_reader :taxes
      end
      # This is the sum of all the discounts.
      attr_reader :amount_discount
      # This is the sum of all the shipping amounts.
      attr_reader :amount_shipping
      # This is the sum of all the tax amounts.
      attr_reader :amount_tax
      # Attribute for field breakdown
      attr_reader :breakdown
    end

    class TransferData < Stripe::StripeObject
      # The amount in cents (or local equivalent) that will be transferred to the destination account when the invoice is paid. By default, the entire amount is transferred to the destination.
      attr_reader :amount
      # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the destination account. By default, the entire amount will be transferred to the destination.
      attr_reader :amount_percent
      # The account where funds from the payment will be transferred to upon payment success.
      attr_reader :destination
    end

    class ListParams < Stripe::RequestParams
      # The ID of the customer whose quotes will be retrieved.
      attr_accessor :customer
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after
      # The status of the quote.
      attr_accessor :status
      # Provides a list of quotes that are associated with the specified test clock. The response will not include quotes with test clocks if this and the customer parameter is not set.
      attr_accessor :test_clock

      def initialize(
        customer: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        starting_after: nil,
        status: nil,
        test_clock: nil
      )
        @customer = customer
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @starting_after = starting_after
        @status = status
        @test_clock = test_clock
      end
    end

    class CreateParams < Stripe::RequestParams
      class AutomaticTax < Stripe::RequestParams
        class Liability < Stripe::RequestParams
          # The connected account being referenced when `type` is `account`.
          attr_accessor :account
          # Type of the account referenced in the request.
          attr_accessor :type

          def initialize(account: nil, type: nil)
            @account = account
            @type = type
          end
        end
        # Controls whether Stripe will automatically compute tax on the resulting invoices or subscriptions as well as the quote itself.
        attr_accessor :enabled
        # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
        attr_accessor :liability

        def initialize(enabled: nil, liability: nil)
          @enabled = enabled
          @liability = liability
        end
      end

      class Discount < Stripe::RequestParams
        # ID of the coupon to create a new discount for.
        attr_accessor :coupon
        # ID of an existing discount on the object (or one of its ancestors) to reuse.
        attr_accessor :discount
        # ID of the promotion code to create a new discount for.
        attr_accessor :promotion_code

        def initialize(coupon: nil, discount: nil, promotion_code: nil)
          @coupon = coupon
          @discount = discount
          @promotion_code = promotion_code
        end
      end

      class FromQuote < Stripe::RequestParams
        # Whether this quote is a revision of the previous quote.
        attr_accessor :is_revision
        # The `id` of the quote that will be cloned.
        attr_accessor :quote

        def initialize(is_revision: nil, quote: nil)
          @is_revision = is_revision
          @quote = quote
        end
      end

      class InvoiceSettings < Stripe::RequestParams
        class Issuer < Stripe::RequestParams
          # The connected account being referenced when `type` is `account`.
          attr_accessor :account
          # Type of the account referenced in the request.
          attr_accessor :type

          def initialize(account: nil, type: nil)
            @account = account
            @type = type
          end
        end
        # Number of days within which a customer must pay the invoice generated by this quote. This value will be `null` for quotes where `collection_method=charge_automatically`.
        attr_accessor :days_until_due
        # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
        attr_accessor :issuer

        def initialize(days_until_due: nil, issuer: nil)
          @days_until_due = days_until_due
          @issuer = issuer
        end
      end

      class LineItem < Stripe::RequestParams
        class Discount < Stripe::RequestParams
          # ID of the coupon to create a new discount for.
          attr_accessor :coupon
          # ID of an existing discount on the object (or one of its ancestors) to reuse.
          attr_accessor :discount
          # ID of the promotion code to create a new discount for.
          attr_accessor :promotion_code

          def initialize(coupon: nil, discount: nil, promotion_code: nil)
            @coupon = coupon
            @discount = discount
            @promotion_code = promotion_code
          end
        end

        class PriceData < Stripe::RequestParams
          class Recurring < Stripe::RequestParams
            # Specifies billing frequency. Either `day`, `week`, `month` or `year`.
            attr_accessor :interval
            # The number of intervals between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months. Maximum of three years interval allowed (3 years, 36 months, or 156 weeks).
            attr_accessor :interval_count

            def initialize(interval: nil, interval_count: nil)
              @interval = interval
              @interval_count = interval_count
            end
          end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          attr_accessor :currency
          # The ID of the [Product](https://docs.stripe.com/api/products) that this [Price](https://docs.stripe.com/api/prices) will belong to.
          attr_accessor :product
          # The recurring components of a price such as `interval` and `interval_count`.
          attr_accessor :recurring
          # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
          attr_accessor :tax_behavior
          # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge.
          attr_accessor :unit_amount
          # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
          attr_accessor :unit_amount_decimal

          def initialize(
            currency: nil,
            product: nil,
            recurring: nil,
            tax_behavior: nil,
            unit_amount: nil,
            unit_amount_decimal: nil
          )
            @currency = currency
            @product = product
            @recurring = recurring
            @tax_behavior = tax_behavior
            @unit_amount = unit_amount
            @unit_amount_decimal = unit_amount_decimal
          end
        end
        # The discounts applied to this line item.
        attr_accessor :discounts
        # The ID of the price object. One of `price` or `price_data` is required.
        attr_accessor :price
        # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline. One of `price` or `price_data` is required.
        attr_accessor :price_data
        # The quantity of the line item.
        attr_accessor :quantity
        # The tax rates which apply to the line item. When set, the `default_tax_rates` on the quote do not apply to this line item.
        attr_accessor :tax_rates

        def initialize(discounts: nil, price: nil, price_data: nil, quantity: nil, tax_rates: nil)
          @discounts = discounts
          @price = price
          @price_data = price_data
          @quantity = quantity
          @tax_rates = tax_rates
        end
      end

      class SubscriptionData < Stripe::RequestParams
        # The subscription's description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
        attr_accessor :description
        # When creating a new subscription, the date of which the subscription schedule will start after the quote is accepted. When updating a subscription, the date of which the subscription will be updated using a subscription schedule. The special value `current_period_end` can be provided to update a subscription at the end of its current period. The `effective_date` is ignored if it is in the past when the quote is accepted.
        attr_accessor :effective_date
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that will set metadata on the subscription or subscription schedule when the quote is accepted. If a recurring price is included in `line_items`, this field will be passed to the resulting subscription's `metadata` field. If `subscription_data.effective_date` is used, this field will be passed to the resulting subscription schedule's `phases.metadata` field. Unlike object-level metadata, this field is declarative. Updates will clear prior values.
        attr_accessor :metadata
        # Integer representing the number of trial period days before the customer is charged for the first time.
        attr_accessor :trial_period_days

        def initialize(description: nil, effective_date: nil, metadata: nil, trial_period_days: nil)
          @description = description
          @effective_date = effective_date
          @metadata = metadata
          @trial_period_days = trial_period_days
        end
      end

      class TransferData < Stripe::RequestParams
        # The amount that will be transferred automatically when the invoice is paid. If no amount is set, the full amount is transferred. There cannot be any line items with recurring prices when using this field.
        attr_accessor :amount
        # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the destination account. By default, the entire amount is transferred to the destination. There must be at least 1 line item with a recurring price to use this field.
        attr_accessor :amount_percent
        # ID of an existing, connected Stripe account.
        attr_accessor :destination

        def initialize(amount: nil, amount_percent: nil, destination: nil)
          @amount = amount
          @amount_percent = amount_percent
          @destination = destination
        end
      end
      # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. There cannot be any line items with recurring prices when using this field.
      attr_accessor :application_fee_amount
      # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. There must be at least 1 line item with a recurring price to use this field.
      attr_accessor :application_fee_percent
      # Settings for automatic tax lookup for this quote and resulting invoices and subscriptions.
      attr_accessor :automatic_tax
      # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay invoices at the end of the subscription cycle or at invoice finalization using the default payment method attached to the subscription or customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`. Defaults to `charge_automatically`.
      attr_accessor :collection_method
      # The customer for which this quote belongs to. A customer is required before finalizing the quote. Once specified, it cannot be changed.
      attr_accessor :customer
      # The tax rates that will apply to any line item that does not have `tax_rates` set.
      attr_accessor :default_tax_rates
      # A description that will be displayed on the quote PDF. If no value is passed, the default description configured in your [quote template settings](https://dashboard.stripe.com/settings/billing/quote) will be used.
      attr_accessor :description
      # The discounts applied to the quote.
      attr_accessor :discounts
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A future timestamp on which the quote will be canceled if in `open` or `draft` status. Measured in seconds since the Unix epoch. If no value is passed, the default expiration date configured in your [quote template settings](https://dashboard.stripe.com/settings/billing/quote) will be used.
      attr_accessor :expires_at
      # A footer that will be displayed on the quote PDF. If no value is passed, the default footer configured in your [quote template settings](https://dashboard.stripe.com/settings/billing/quote) will be used.
      attr_accessor :footer
      # Clone an existing quote. The new quote will be created in `status=draft`. When using this parameter, you cannot specify any other parameters except for `expires_at`.
      attr_accessor :from_quote
      # A header that will be displayed on the quote PDF. If no value is passed, the default header configured in your [quote template settings](https://dashboard.stripe.com/settings/billing/quote) will be used.
      attr_accessor :header
      # All invoices will be billed using the specified settings.
      attr_accessor :invoice_settings
      # A list of line items the customer is being quoted for. Each line item includes information about the product, the quantity, and the resulting cost.
      attr_accessor :line_items
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # The account on behalf of which to charge.
      attr_accessor :on_behalf_of
      # When creating a subscription or subscription schedule, the specified configuration data will be used. There must be at least one line item with a recurring price for a subscription or subscription schedule to be created. A subscription schedule is created if `subscription_data[effective_date]` is present and in the future, otherwise a subscription is created.
      attr_accessor :subscription_data
      # ID of the test clock to attach to the quote.
      attr_accessor :test_clock
      # The data with which to automatically create a Transfer for each of the invoices.
      attr_accessor :transfer_data

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
      )
        @application_fee_amount = application_fee_amount
        @application_fee_percent = application_fee_percent
        @automatic_tax = automatic_tax
        @collection_method = collection_method
        @customer = customer
        @default_tax_rates = default_tax_rates
        @description = description
        @discounts = discounts
        @expand = expand
        @expires_at = expires_at
        @footer = footer
        @from_quote = from_quote
        @header = header
        @invoice_settings = invoice_settings
        @line_items = line_items
        @metadata = metadata
        @on_behalf_of = on_behalf_of
        @subscription_data = subscription_data
        @test_clock = test_clock
        @transfer_data = transfer_data
      end
    end

    class UpdateParams < Stripe::RequestParams
      class AutomaticTax < Stripe::RequestParams
        class Liability < Stripe::RequestParams
          # The connected account being referenced when `type` is `account`.
          attr_accessor :account
          # Type of the account referenced in the request.
          attr_accessor :type

          def initialize(account: nil, type: nil)
            @account = account
            @type = type
          end
        end
        # Controls whether Stripe will automatically compute tax on the resulting invoices or subscriptions as well as the quote itself.
        attr_accessor :enabled
        # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
        attr_accessor :liability

        def initialize(enabled: nil, liability: nil)
          @enabled = enabled
          @liability = liability
        end
      end

      class Discount < Stripe::RequestParams
        # ID of the coupon to create a new discount for.
        attr_accessor :coupon
        # ID of an existing discount on the object (or one of its ancestors) to reuse.
        attr_accessor :discount
        # ID of the promotion code to create a new discount for.
        attr_accessor :promotion_code

        def initialize(coupon: nil, discount: nil, promotion_code: nil)
          @coupon = coupon
          @discount = discount
          @promotion_code = promotion_code
        end
      end

      class InvoiceSettings < Stripe::RequestParams
        class Issuer < Stripe::RequestParams
          # The connected account being referenced when `type` is `account`.
          attr_accessor :account
          # Type of the account referenced in the request.
          attr_accessor :type

          def initialize(account: nil, type: nil)
            @account = account
            @type = type
          end
        end
        # Number of days within which a customer must pay the invoice generated by this quote. This value will be `null` for quotes where `collection_method=charge_automatically`.
        attr_accessor :days_until_due
        # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
        attr_accessor :issuer

        def initialize(days_until_due: nil, issuer: nil)
          @days_until_due = days_until_due
          @issuer = issuer
        end
      end

      class LineItem < Stripe::RequestParams
        class Discount < Stripe::RequestParams
          # ID of the coupon to create a new discount for.
          attr_accessor :coupon
          # ID of an existing discount on the object (or one of its ancestors) to reuse.
          attr_accessor :discount
          # ID of the promotion code to create a new discount for.
          attr_accessor :promotion_code

          def initialize(coupon: nil, discount: nil, promotion_code: nil)
            @coupon = coupon
            @discount = discount
            @promotion_code = promotion_code
          end
        end

        class PriceData < Stripe::RequestParams
          class Recurring < Stripe::RequestParams
            # Specifies billing frequency. Either `day`, `week`, `month` or `year`.
            attr_accessor :interval
            # The number of intervals between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months. Maximum of three years interval allowed (3 years, 36 months, or 156 weeks).
            attr_accessor :interval_count

            def initialize(interval: nil, interval_count: nil)
              @interval = interval
              @interval_count = interval_count
            end
          end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          attr_accessor :currency
          # The ID of the [Product](https://docs.stripe.com/api/products) that this [Price](https://docs.stripe.com/api/prices) will belong to.
          attr_accessor :product
          # The recurring components of a price such as `interval` and `interval_count`.
          attr_accessor :recurring
          # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
          attr_accessor :tax_behavior
          # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge.
          attr_accessor :unit_amount
          # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
          attr_accessor :unit_amount_decimal

          def initialize(
            currency: nil,
            product: nil,
            recurring: nil,
            tax_behavior: nil,
            unit_amount: nil,
            unit_amount_decimal: nil
          )
            @currency = currency
            @product = product
            @recurring = recurring
            @tax_behavior = tax_behavior
            @unit_amount = unit_amount
            @unit_amount_decimal = unit_amount_decimal
          end
        end
        # The discounts applied to this line item.
        attr_accessor :discounts
        # The ID of an existing line item on the quote.
        attr_accessor :id
        # The ID of the price object. One of `price` or `price_data` is required.
        attr_accessor :price
        # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline. One of `price` or `price_data` is required.
        attr_accessor :price_data
        # The quantity of the line item.
        attr_accessor :quantity
        # The tax rates which apply to the line item. When set, the `default_tax_rates` on the quote do not apply to this line item.
        attr_accessor :tax_rates

        def initialize(
          discounts: nil,
          id: nil,
          price: nil,
          price_data: nil,
          quantity: nil,
          tax_rates: nil
        )
          @discounts = discounts
          @id = id
          @price = price
          @price_data = price_data
          @quantity = quantity
          @tax_rates = tax_rates
        end
      end

      class SubscriptionData < Stripe::RequestParams
        # The subscription's description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
        attr_accessor :description
        # When creating a new subscription, the date of which the subscription schedule will start after the quote is accepted. When updating a subscription, the date of which the subscription will be updated using a subscription schedule. The special value `current_period_end` can be provided to update a subscription at the end of its current period. The `effective_date` is ignored if it is in the past when the quote is accepted.
        attr_accessor :effective_date
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that will set metadata on the subscription or subscription schedule when the quote is accepted. If a recurring price is included in `line_items`, this field will be passed to the resulting subscription's `metadata` field. If `subscription_data.effective_date` is used, this field will be passed to the resulting subscription schedule's `phases.metadata` field. Unlike object-level metadata, this field is declarative. Updates will clear prior values.
        attr_accessor :metadata
        # Integer representing the number of trial period days before the customer is charged for the first time.
        attr_accessor :trial_period_days

        def initialize(description: nil, effective_date: nil, metadata: nil, trial_period_days: nil)
          @description = description
          @effective_date = effective_date
          @metadata = metadata
          @trial_period_days = trial_period_days
        end
      end

      class TransferData < Stripe::RequestParams
        # The amount that will be transferred automatically when the invoice is paid. If no amount is set, the full amount is transferred. There cannot be any line items with recurring prices when using this field.
        attr_accessor :amount
        # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the destination account. By default, the entire amount is transferred to the destination. There must be at least 1 line item with a recurring price to use this field.
        attr_accessor :amount_percent
        # ID of an existing, connected Stripe account.
        attr_accessor :destination

        def initialize(amount: nil, amount_percent: nil, destination: nil)
          @amount = amount
          @amount_percent = amount_percent
          @destination = destination
        end
      end
      # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. There cannot be any line items with recurring prices when using this field.
      attr_accessor :application_fee_amount
      # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. There must be at least 1 line item with a recurring price to use this field.
      attr_accessor :application_fee_percent
      # Settings for automatic tax lookup for this quote and resulting invoices and subscriptions.
      attr_accessor :automatic_tax
      # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay invoices at the end of the subscription cycle or at invoice finalization using the default payment method attached to the subscription or customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`. Defaults to `charge_automatically`.
      attr_accessor :collection_method
      # The customer for which this quote belongs to. A customer is required before finalizing the quote. Once specified, it cannot be changed.
      attr_accessor :customer
      # The tax rates that will apply to any line item that does not have `tax_rates` set.
      attr_accessor :default_tax_rates
      # A description that will be displayed on the quote PDF.
      attr_accessor :description
      # The discounts applied to the quote.
      attr_accessor :discounts
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A future timestamp on which the quote will be canceled if in `open` or `draft` status. Measured in seconds since the Unix epoch.
      attr_accessor :expires_at
      # A footer that will be displayed on the quote PDF.
      attr_accessor :footer
      # A header that will be displayed on the quote PDF.
      attr_accessor :header
      # All invoices will be billed using the specified settings.
      attr_accessor :invoice_settings
      # A list of line items the customer is being quoted for. Each line item includes information about the product, the quantity, and the resulting cost.
      attr_accessor :line_items
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # The account on behalf of which to charge.
      attr_accessor :on_behalf_of
      # When creating a subscription or subscription schedule, the specified configuration data will be used. There must be at least one line item with a recurring price for a subscription or subscription schedule to be created. A subscription schedule is created if `subscription_data[effective_date]` is present and in the future, otherwise a subscription is created.
      attr_accessor :subscription_data
      # The data with which to automatically create a Transfer for each of the invoices.
      attr_accessor :transfer_data

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
      )
        @application_fee_amount = application_fee_amount
        @application_fee_percent = application_fee_percent
        @automatic_tax = automatic_tax
        @collection_method = collection_method
        @customer = customer
        @default_tax_rates = default_tax_rates
        @description = description
        @discounts = discounts
        @expand = expand
        @expires_at = expires_at
        @footer = footer
        @header = header
        @invoice_settings = invoice_settings
        @line_items = line_items
        @metadata = metadata
        @on_behalf_of = on_behalf_of
        @subscription_data = subscription_data
        @transfer_data = transfer_data
      end
    end

    class ListComputedUpfrontLineItemsParams < Stripe::RequestParams
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after

      def initialize(ending_before: nil, expand: nil, limit: nil, starting_after: nil)
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @starting_after = starting_after
      end
    end

    class ListLineItemsParams < Stripe::RequestParams
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after

      def initialize(ending_before: nil, expand: nil, limit: nil, starting_after: nil)
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @starting_after = starting_after
      end
    end

    class AcceptParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

    class CancelParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

    class FinalizeQuoteParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A future timestamp on which the quote will be canceled if in `open` or `draft` status. Measured in seconds since the Unix epoch.
      attr_accessor :expires_at

      def initialize(expand: nil, expires_at: nil)
        @expand = expand
        @expires_at = expires_at
      end
    end

    class PdfParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end
    # Total before any discounts or taxes are applied.
    attr_reader :amount_subtotal
    # Total after discounts and taxes are applied.
    attr_reader :amount_total
    # ID of the Connect Application that created the quote.
    attr_reader :application
    # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. Only applicable if there are no line items with recurring prices on the quote.
    attr_reader :application_fee_amount
    # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. Only applicable if there are line items with recurring prices on the quote.
    attr_reader :application_fee_percent
    # Attribute for field automatic_tax
    attr_reader :automatic_tax
    # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay invoices at the end of the subscription cycle or on finalization using the default payment method attached to the subscription or customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`. Defaults to `charge_automatically`.
    attr_reader :collection_method
    # Attribute for field computed
    attr_reader :computed
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    # The customer which this quote belongs to. A customer is required before finalizing the quote. Once specified, it cannot be changed.
    attr_reader :customer
    # The tax rates applied to this quote.
    attr_reader :default_tax_rates
    # A description that will be displayed on the quote PDF.
    attr_reader :description
    # The discounts applied to this quote.
    attr_reader :discounts
    # The date on which the quote will be canceled if in `open` or `draft` status. Measured in seconds since the Unix epoch.
    attr_reader :expires_at
    # A footer that will be displayed on the quote PDF.
    attr_reader :footer
    # Details of the quote that was cloned. See the [cloning documentation](https://stripe.com/docs/quotes/clone) for more details.
    attr_reader :from_quote
    # A header that will be displayed on the quote PDF.
    attr_reader :header
    # Unique identifier for the object.
    attr_reader :id
    # The invoice that was created from this quote.
    attr_reader :invoice
    # Attribute for field invoice_settings
    attr_reader :invoice_settings
    # A list of items the customer is being quoted for.
    attr_reader :line_items
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    # A unique number that identifies this particular quote. This number is assigned once the quote is [finalized](https://stripe.com/docs/quotes/overview#finalize).
    attr_reader :number
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # The account on behalf of which to charge. See the [Connect documentation](https://support.stripe.com/questions/sending-invoices-on-behalf-of-connected-accounts) for details.
    attr_reader :on_behalf_of
    # The status of the quote.
    attr_reader :status
    # Attribute for field status_transitions
    attr_reader :status_transitions
    # The subscription that was created or updated from this quote.
    attr_reader :subscription
    # Attribute for field subscription_data
    attr_reader :subscription_data
    # The subscription schedule that was created or updated from this quote.
    attr_reader :subscription_schedule
    # ID of the test clock this quote belongs to.
    attr_reader :test_clock
    # Attribute for field total_details
    attr_reader :total_details
    # The account (if any) the payments will be attributed to for tax reporting, and where funds from each payment will be transferred to for each of the invoices.
    attr_reader :transfer_data

    # Accepts the specified quote.
    def accept(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/quotes/%<quote>s/accept", { quote: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Accepts the specified quote.
    def self.accept(quote, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/quotes/%<quote>s/accept", { quote: CGI.escape(quote) }),
        params: params,
        opts: opts
      )
    end

    # Cancels the quote.
    def cancel(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/quotes/%<quote>s/cancel", { quote: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Cancels the quote.
    def self.cancel(quote, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/quotes/%<quote>s/cancel", { quote: CGI.escape(quote) }),
        params: params,
        opts: opts
      )
    end

    # A quote models prices and services for a customer. Default options for header, description, footer, and expires_at can be set in the dashboard via the [quote template](https://dashboard.stripe.com/settings/billing/quote).
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/quotes", params: params, opts: opts)
    end

    # Finalizes the quote.
    def finalize_quote(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/quotes/%<quote>s/finalize", { quote: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Finalizes the quote.
    def self.finalize_quote(quote, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/quotes/%<quote>s/finalize", { quote: CGI.escape(quote) }),
        params: params,
        opts: opts
      )
    end

    # Returns a list of your quotes.
    def self.list(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/quotes", params: params, opts: opts)
    end

    # When retrieving a quote, there is an includable [computed.upfront.line_items](https://stripe.com/docs/api/quotes/object#quote_object-computed-upfront-line_items) property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of upfront line items.
    def list_computed_upfront_line_items(params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/quotes/%<quote>s/computed_upfront_line_items", { quote: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # When retrieving a quote, there is an includable [computed.upfront.line_items](https://stripe.com/docs/api/quotes/object#quote_object-computed-upfront-line_items) property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of upfront line items.
    def self.list_computed_upfront_line_items(quote, params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/quotes/%<quote>s/computed_upfront_line_items", { quote: CGI.escape(quote) }),
        params: params,
        opts: opts
      )
    end

    # When retrieving a quote, there is an includable line_items property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.
    def list_line_items(params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/quotes/%<quote>s/line_items", { quote: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # When retrieving a quote, there is an includable line_items property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.
    def self.list_line_items(quote, params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/quotes/%<quote>s/line_items", { quote: CGI.escape(quote) }),
        params: params,
        opts: opts
      )
    end

    # Download the PDF for a finalized quote. Explanation for special handling can be found [here](https://docs.stripe.com/quotes/overview#quote_pdf)
    def pdf(params = {}, opts = {}, &read_body_chunk_block)
      opts = { api_base: APIRequestor.active_requestor.config.uploads_base }.merge(opts)
      request_stream(
        method: :get,
        path: format("/v1/quotes/%<quote>s/pdf", { quote: CGI.escape(self["id"]) }),
        params: params,
        opts: opts,
        base_address: :files,
        &read_body_chunk_block
      )
    end

    # Download the PDF for a finalized quote. Explanation for special handling can be found [here](https://docs.stripe.com/quotes/overview#quote_pdf)
    def self.pdf(quote, params = {}, opts = {}, &read_body_chunk_block)
      opts = { api_base: APIRequestor.active_requestor.config.uploads_base }.merge(opts)
      execute_resource_request_stream(
        :get,
        format("/v1/quotes/%<quote>s/pdf", { quote: CGI.escape(quote) }),
        :files,
        params,
        opts,
        &read_body_chunk_block
      )
    end

    # A quote models prices and services for a customer.
    def self.update(quote, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/quotes/%<quote>s", { quote: CGI.escape(quote) }),
        params: params,
        opts: opts
      )
    end
  end
end
