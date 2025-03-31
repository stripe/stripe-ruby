# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class SubscriptionScheduleService < StripeService
    class ListParams < Stripe::RequestParams
      class CanceledAt < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        attr_accessor :gt
        # Minimum value to filter by (inclusive)
        attr_accessor :gte
        # Maximum value to filter by (exclusive)
        attr_accessor :lt
        # Maximum value to filter by (inclusive)
        attr_accessor :lte

        def initialize(gt: nil, gte: nil, lt: nil, lte: nil)
          @gt = gt
          @gte = gte
          @lt = lt
          @lte = lte
        end
      end

      class CompletedAt < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        attr_accessor :gt
        # Minimum value to filter by (inclusive)
        attr_accessor :gte
        # Maximum value to filter by (exclusive)
        attr_accessor :lt
        # Maximum value to filter by (inclusive)
        attr_accessor :lte

        def initialize(gt: nil, gte: nil, lt: nil, lte: nil)
          @gt = gt
          @gte = gte
          @lt = lt
          @lte = lte
        end
      end

      class Created < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        attr_accessor :gt
        # Minimum value to filter by (inclusive)
        attr_accessor :gte
        # Maximum value to filter by (exclusive)
        attr_accessor :lt
        # Maximum value to filter by (inclusive)
        attr_accessor :lte

        def initialize(gt: nil, gte: nil, lt: nil, lte: nil)
          @gt = gt
          @gte = gte
          @lt = lt
          @lte = lte
        end
      end

      class ReleasedAt < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        attr_accessor :gt
        # Minimum value to filter by (inclusive)
        attr_accessor :gte
        # Maximum value to filter by (exclusive)
        attr_accessor :lt
        # Maximum value to filter by (inclusive)
        attr_accessor :lte

        def initialize(gt: nil, gte: nil, lt: nil, lte: nil)
          @gt = gt
          @gte = gte
          @lt = lt
          @lte = lte
        end
      end
      # Only return subscription schedules that were created canceled the given date interval.
      attr_accessor :canceled_at
      # Only return subscription schedules that completed during the given date interval.
      attr_accessor :completed_at
      # Only return subscription schedules that were created during the given date interval.
      attr_accessor :created
      # Only return subscription schedules for the given customer.
      attr_accessor :customer
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # Only return subscription schedules that were released during the given date interval.
      attr_accessor :released_at
      # Only return subscription schedules that have not started yet.
      attr_accessor :scheduled
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after

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
      )
        @canceled_at = canceled_at
        @completed_at = completed_at
        @created = created
        @customer = customer
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @released_at = released_at
        @scheduled = scheduled
        @starting_after = starting_after
      end
    end

    class CreateParams < Stripe::RequestParams
      class DefaultSettings < Stripe::RequestParams
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
          # Enabled automatic tax calculation which will automatically compute tax rates on all invoices generated by the subscription.
          attr_accessor :enabled
          # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
          attr_accessor :liability

          def initialize(enabled: nil, liability: nil)
            @enabled = enabled
            @liability = liability
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
          # The account tax IDs associated with the subscription schedule. Will be set on invoices generated by the subscription schedule.
          attr_accessor :account_tax_ids
          # Number of days within which a customer must pay invoices generated by this subscription schedule. This value will be `null` for subscription schedules where `collection_method=charge_automatically`.
          attr_accessor :days_until_due
          # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
          attr_accessor :issuer

          def initialize(account_tax_ids: nil, days_until_due: nil, issuer: nil)
            @account_tax_ids = account_tax_ids
            @days_until_due = days_until_due
            @issuer = issuer
          end
        end

        class TransferData < Stripe::RequestParams
          # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the destination account. By default, the entire amount is transferred to the destination.
          attr_accessor :amount_percent
          # ID of an existing, connected Stripe account.
          attr_accessor :destination

          def initialize(amount_percent: nil, destination: nil)
            @amount_percent = amount_percent
            @destination = destination
          end
        end
        # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. The request must be made by a platform account on a connected account in order to set an application fee percentage. For more information, see the application fees [documentation](https://stripe.com/docs/connect/subscriptions#collecting-fees-on-subscriptions).
        attr_accessor :application_fee_percent
        # Default settings for automatic tax computation.
        attr_accessor :automatic_tax
        # Can be set to `phase_start` to set the anchor to the start of the phase or `automatic` to automatically change it if needed. Cannot be set to `phase_start` if this phase specifies a trial. For more information, see the billing cycle [documentation](https://stripe.com/docs/billing/subscriptions/billing-cycle).
        attr_accessor :billing_cycle_anchor
        # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay the underlying subscription at the end of each billing cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`. Defaults to `charge_automatically` on creation.
        attr_accessor :collection_method
        # ID of the default payment method for the subscription schedule. It must belong to the customer associated with the subscription schedule. If not set, invoices will use the default payment method in the customer's invoice settings.
        attr_accessor :default_payment_method
        # Subscription description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
        attr_accessor :description
        # All invoices will be billed using the specified settings.
        attr_accessor :invoice_settings
        # The account on behalf of which to charge, for each of the associated subscription's invoices.
        attr_accessor :on_behalf_of
        # The data with which to automatically create a Transfer for each of the associated subscription's invoices.
        attr_accessor :transfer_data

        def initialize(
          application_fee_percent: nil,
          automatic_tax: nil,
          billing_cycle_anchor: nil,
          collection_method: nil,
          default_payment_method: nil,
          description: nil,
          invoice_settings: nil,
          on_behalf_of: nil,
          transfer_data: nil
        )
          @application_fee_percent = application_fee_percent
          @automatic_tax = automatic_tax
          @billing_cycle_anchor = billing_cycle_anchor
          @collection_method = collection_method
          @default_payment_method = default_payment_method
          @description = description
          @invoice_settings = invoice_settings
          @on_behalf_of = on_behalf_of
          @transfer_data = transfer_data
        end
      end

      class Phase < Stripe::RequestParams
        class AddInvoiceItem < Stripe::RequestParams
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
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            attr_accessor :currency
            # The ID of the [Product](https://docs.stripe.com/api/products) that this [Price](https://docs.stripe.com/api/prices) will belong to.
            attr_accessor :product
            # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
            attr_accessor :tax_behavior
            # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge or a negative integer representing the amount to credit to the customer.
            attr_accessor :unit_amount
            # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
            attr_accessor :unit_amount_decimal

            def initialize(
              currency: nil,
              product: nil,
              tax_behavior: nil,
              unit_amount: nil,
              unit_amount_decimal: nil
            )
              @currency = currency
              @product = product
              @tax_behavior = tax_behavior
              @unit_amount = unit_amount
              @unit_amount_decimal = unit_amount_decimal
            end
          end
          # The coupons to redeem into discounts for the item.
          attr_accessor :discounts
          # The ID of the price object. One of `price` or `price_data` is required.
          attr_accessor :price
          # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline. One of `price` or `price_data` is required.
          attr_accessor :price_data
          # Quantity for this item. Defaults to 1.
          attr_accessor :quantity
          # The tax rates which apply to the item. When set, the `default_tax_rates` do not apply to this item.
          attr_accessor :tax_rates

          def initialize(discounts: nil, price: nil, price_data: nil, quantity: nil, tax_rates: nil)
            @discounts = discounts
            @price = price
            @price_data = price_data
            @quantity = quantity
            @tax_rates = tax_rates
          end
        end

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
          # Enabled automatic tax calculation which will automatically compute tax rates on all invoices generated by the subscription.
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
          # The account tax IDs associated with this phase of the subscription schedule. Will be set on invoices generated by this phase of the subscription schedule.
          attr_accessor :account_tax_ids
          # Number of days within which a customer must pay invoices generated by this subscription schedule. This value will be `null` for subscription schedules where `billing=charge_automatically`.
          attr_accessor :days_until_due
          # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
          attr_accessor :issuer

          def initialize(account_tax_ids: nil, days_until_due: nil, issuer: nil)
            @account_tax_ids = account_tax_ids
            @days_until_due = days_until_due
            @issuer = issuer
          end
        end

        class Item < Stripe::RequestParams
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
          # The coupons to redeem into discounts for the subscription item.
          attr_accessor :discounts
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to a configuration item. Metadata on a configuration item will update the underlying subscription item's `metadata` when the phase is entered, adding new keys and replacing existing keys. Individual keys in the subscription item's `metadata` can be unset by posting an empty value to them in the configuration item's `metadata`. To unset all keys in the subscription item's `metadata`, update the subscription item directly or unset every key individually from the configuration item's `metadata`.
          attr_accessor :metadata
          # The plan ID to subscribe to. You may specify the same ID in `plan` and `price`.
          attr_accessor :plan
          # The ID of the price object.
          attr_accessor :price
          # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline.
          attr_accessor :price_data
          # Quantity for the given price. Can be set only if the price's `usage_type` is `licensed` and not `metered`.
          attr_accessor :quantity
          # A list of [Tax Rate](https://stripe.com/docs/api/tax_rates) ids. These Tax Rates will override the [`default_tax_rates`](https://stripe.com/docs/api/subscriptions/create#create_subscription-default_tax_rates) on the Subscription. When updating, pass an empty string to remove previously-defined tax rates.
          attr_accessor :tax_rates

          def initialize(
            discounts: nil,
            metadata: nil,
            plan: nil,
            price: nil,
            price_data: nil,
            quantity: nil,
            tax_rates: nil
          )
            @discounts = discounts
            @metadata = metadata
            @plan = plan
            @price = price
            @price_data = price_data
            @quantity = quantity
            @tax_rates = tax_rates
          end
        end

        class TransferData < Stripe::RequestParams
          # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the destination account. By default, the entire amount is transferred to the destination.
          attr_accessor :amount_percent
          # ID of an existing, connected Stripe account.
          attr_accessor :destination

          def initialize(amount_percent: nil, destination: nil)
            @amount_percent = amount_percent
            @destination = destination
          end
        end
        # A list of prices and quantities that will generate invoice items appended to the next invoice for this phase. You may pass up to 20 items.
        attr_accessor :add_invoice_items
        # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. The request must be made by a platform account on a connected account in order to set an application fee percentage. For more information, see the application fees [documentation](https://stripe.com/docs/connect/subscriptions#collecting-fees-on-subscriptions).
        attr_accessor :application_fee_percent
        # Automatic tax settings for this phase.
        attr_accessor :automatic_tax
        # Can be set to `phase_start` to set the anchor to the start of the phase or `automatic` to automatically change it if needed. Cannot be set to `phase_start` if this phase specifies a trial. For more information, see the billing cycle [documentation](https://stripe.com/docs/billing/subscriptions/billing-cycle).
        attr_accessor :billing_cycle_anchor
        # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay the underlying subscription at the end of each billing cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`. Defaults to `charge_automatically` on creation.
        attr_accessor :collection_method
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        attr_accessor :currency
        # ID of the default payment method for the subscription schedule. It must belong to the customer associated with the subscription schedule. If not set, invoices will use the default payment method in the customer's invoice settings.
        attr_accessor :default_payment_method
        # A list of [Tax Rate](https://stripe.com/docs/api/tax_rates) ids. These Tax Rates will set the Subscription's [`default_tax_rates`](https://stripe.com/docs/api/subscriptions/create#create_subscription-default_tax_rates), which means they will be the Invoice's [`default_tax_rates`](https://stripe.com/docs/api/invoices/create#create_invoice-default_tax_rates) for any Invoices issued by the Subscription during this Phase.
        attr_accessor :default_tax_rates
        # Subscription description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
        attr_accessor :description
        # The coupons to redeem into discounts for the schedule phase. If not specified, inherits the discount from the subscription's customer. Pass an empty string to avoid inheriting any discounts.
        attr_accessor :discounts
        # The date at which this phase of the subscription schedule ends. If set, `iterations` must not be set.
        attr_accessor :end_date
        # All invoices will be billed using the specified settings.
        attr_accessor :invoice_settings
        # List of configuration items, each with an attached price, to apply during this phase of the subscription schedule.
        attr_accessor :items
        # Integer representing the multiplier applied to the price interval. For example, `iterations=2` applied to a price with `interval=month` and `interval_count=3` results in a phase of duration `2 * 3 months = 6 months`. If set, `end_date` must not be set.
        attr_accessor :iterations
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to a phase. Metadata on a schedule's phase will update the underlying subscription's `metadata` when the phase is entered, adding new keys and replacing existing keys in the subscription's `metadata`. Individual keys in the subscription's `metadata` can be unset by posting an empty value to them in the phase's `metadata`. To unset all keys in the subscription's `metadata`, update the subscription directly or unset every key individually from the phase's `metadata`.
        attr_accessor :metadata
        # The account on behalf of which to charge, for each of the associated subscription's invoices.
        attr_accessor :on_behalf_of
        # Whether the subscription schedule will create [prorations](https://stripe.com/docs/billing/subscriptions/prorations) when transitioning to this phase. The default value is `create_prorations`. This setting controls prorations when a phase is started asynchronously and it is persisted as a field on the phase. It's different from the request-level [proration_behavior](https://stripe.com/docs/api/subscription_schedules/update#update_subscription_schedule-proration_behavior) parameter which controls what happens if the update request affects the billing configuration of the current phase.
        attr_accessor :proration_behavior
        # The data with which to automatically create a Transfer for each of the associated subscription's invoices.
        attr_accessor :transfer_data
        # If set to true the entire phase is counted as a trial and the customer will not be charged for any fees.
        attr_accessor :trial
        # Sets the phase to trialing from the start date to this date. Must be before the phase end date, can not be combined with `trial`
        attr_accessor :trial_end

        def initialize(
          add_invoice_items: nil,
          application_fee_percent: nil,
          automatic_tax: nil,
          billing_cycle_anchor: nil,
          collection_method: nil,
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
          proration_behavior: nil,
          transfer_data: nil,
          trial: nil,
          trial_end: nil
        )
          @add_invoice_items = add_invoice_items
          @application_fee_percent = application_fee_percent
          @automatic_tax = automatic_tax
          @billing_cycle_anchor = billing_cycle_anchor
          @collection_method = collection_method
          @currency = currency
          @default_payment_method = default_payment_method
          @default_tax_rates = default_tax_rates
          @description = description
          @discounts = discounts
          @end_date = end_date
          @invoice_settings = invoice_settings
          @items = items
          @iterations = iterations
          @metadata = metadata
          @on_behalf_of = on_behalf_of
          @proration_behavior = proration_behavior
          @transfer_data = transfer_data
          @trial = trial
          @trial_end = trial_end
        end
      end
      # The identifier of the customer to create the subscription schedule for.
      attr_accessor :customer
      # Object representing the subscription schedule's default settings.
      attr_accessor :default_settings
      # Behavior of the subscription schedule and underlying subscription when it ends. Possible values are `release` or `cancel` with the default being `release`. `release` will end the subscription schedule and keep the underlying subscription running. `cancel` will end the subscription schedule and cancel the underlying subscription.
      attr_accessor :end_behavior
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Migrate an existing subscription to be managed by a subscription schedule. If this parameter is set, a subscription schedule will be created using the subscription's item(s), set to auto-renew using the subscription's interval. When using this parameter, other parameters (such as phase values) cannot be set. To create a subscription schedule with other modifications, we recommend making two separate API calls.
      attr_accessor :from_subscription
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # List representing phases of the subscription schedule. Each phase can be customized to have different durations, plans, and coupons. If there are multiple phases, the `end_date` of one phase will always equal the `start_date` of the next phase.
      attr_accessor :phases
      # When the subscription schedule starts. We recommend using `now` so that it starts the subscription immediately. You can also use a Unix timestamp to backdate the subscription so that it starts on a past date, or set a future date for the subscription to start on.
      attr_accessor :start_date

      def initialize(
        customer: nil,
        default_settings: nil,
        end_behavior: nil,
        expand: nil,
        from_subscription: nil,
        metadata: nil,
        phases: nil,
        start_date: nil
      )
        @customer = customer
        @default_settings = default_settings
        @end_behavior = end_behavior
        @expand = expand
        @from_subscription = from_subscription
        @metadata = metadata
        @phases = phases
        @start_date = start_date
      end
    end

    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

    class UpdateParams < Stripe::RequestParams
      class DefaultSettings < Stripe::RequestParams
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
          # Enabled automatic tax calculation which will automatically compute tax rates on all invoices generated by the subscription.
          attr_accessor :enabled
          # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
          attr_accessor :liability

          def initialize(enabled: nil, liability: nil)
            @enabled = enabled
            @liability = liability
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
          # The account tax IDs associated with the subscription schedule. Will be set on invoices generated by the subscription schedule.
          attr_accessor :account_tax_ids
          # Number of days within which a customer must pay invoices generated by this subscription schedule. This value will be `null` for subscription schedules where `collection_method=charge_automatically`.
          attr_accessor :days_until_due
          # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
          attr_accessor :issuer

          def initialize(account_tax_ids: nil, days_until_due: nil, issuer: nil)
            @account_tax_ids = account_tax_ids
            @days_until_due = days_until_due
            @issuer = issuer
          end
        end

        class TransferData < Stripe::RequestParams
          # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the destination account. By default, the entire amount is transferred to the destination.
          attr_accessor :amount_percent
          # ID of an existing, connected Stripe account.
          attr_accessor :destination

          def initialize(amount_percent: nil, destination: nil)
            @amount_percent = amount_percent
            @destination = destination
          end
        end
        # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. The request must be made by a platform account on a connected account in order to set an application fee percentage. For more information, see the application fees [documentation](https://stripe.com/docs/connect/subscriptions#collecting-fees-on-subscriptions).
        attr_accessor :application_fee_percent
        # Default settings for automatic tax computation.
        attr_accessor :automatic_tax
        # Can be set to `phase_start` to set the anchor to the start of the phase or `automatic` to automatically change it if needed. Cannot be set to `phase_start` if this phase specifies a trial. For more information, see the billing cycle [documentation](https://stripe.com/docs/billing/subscriptions/billing-cycle).
        attr_accessor :billing_cycle_anchor
        # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay the underlying subscription at the end of each billing cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`. Defaults to `charge_automatically` on creation.
        attr_accessor :collection_method
        # ID of the default payment method for the subscription schedule. It must belong to the customer associated with the subscription schedule. If not set, invoices will use the default payment method in the customer's invoice settings.
        attr_accessor :default_payment_method
        # Subscription description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
        attr_accessor :description
        # All invoices will be billed using the specified settings.
        attr_accessor :invoice_settings
        # The account on behalf of which to charge, for each of the associated subscription's invoices.
        attr_accessor :on_behalf_of
        # The data with which to automatically create a Transfer for each of the associated subscription's invoices.
        attr_accessor :transfer_data

        def initialize(
          application_fee_percent: nil,
          automatic_tax: nil,
          billing_cycle_anchor: nil,
          collection_method: nil,
          default_payment_method: nil,
          description: nil,
          invoice_settings: nil,
          on_behalf_of: nil,
          transfer_data: nil
        )
          @application_fee_percent = application_fee_percent
          @automatic_tax = automatic_tax
          @billing_cycle_anchor = billing_cycle_anchor
          @collection_method = collection_method
          @default_payment_method = default_payment_method
          @description = description
          @invoice_settings = invoice_settings
          @on_behalf_of = on_behalf_of
          @transfer_data = transfer_data
        end
      end

      class Phase < Stripe::RequestParams
        class AddInvoiceItem < Stripe::RequestParams
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
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            attr_accessor :currency
            # The ID of the [Product](https://docs.stripe.com/api/products) that this [Price](https://docs.stripe.com/api/prices) will belong to.
            attr_accessor :product
            # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
            attr_accessor :tax_behavior
            # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge or a negative integer representing the amount to credit to the customer.
            attr_accessor :unit_amount
            # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
            attr_accessor :unit_amount_decimal

            def initialize(
              currency: nil,
              product: nil,
              tax_behavior: nil,
              unit_amount: nil,
              unit_amount_decimal: nil
            )
              @currency = currency
              @product = product
              @tax_behavior = tax_behavior
              @unit_amount = unit_amount
              @unit_amount_decimal = unit_amount_decimal
            end
          end
          # The coupons to redeem into discounts for the item.
          attr_accessor :discounts
          # The ID of the price object. One of `price` or `price_data` is required.
          attr_accessor :price
          # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline. One of `price` or `price_data` is required.
          attr_accessor :price_data
          # Quantity for this item. Defaults to 1.
          attr_accessor :quantity
          # The tax rates which apply to the item. When set, the `default_tax_rates` do not apply to this item.
          attr_accessor :tax_rates

          def initialize(discounts: nil, price: nil, price_data: nil, quantity: nil, tax_rates: nil)
            @discounts = discounts
            @price = price
            @price_data = price_data
            @quantity = quantity
            @tax_rates = tax_rates
          end
        end

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
          # Enabled automatic tax calculation which will automatically compute tax rates on all invoices generated by the subscription.
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
          # The account tax IDs associated with this phase of the subscription schedule. Will be set on invoices generated by this phase of the subscription schedule.
          attr_accessor :account_tax_ids
          # Number of days within which a customer must pay invoices generated by this subscription schedule. This value will be `null` for subscription schedules where `billing=charge_automatically`.
          attr_accessor :days_until_due
          # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
          attr_accessor :issuer

          def initialize(account_tax_ids: nil, days_until_due: nil, issuer: nil)
            @account_tax_ids = account_tax_ids
            @days_until_due = days_until_due
            @issuer = issuer
          end
        end

        class Item < Stripe::RequestParams
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
          # The coupons to redeem into discounts for the subscription item.
          attr_accessor :discounts
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to a configuration item. Metadata on a configuration item will update the underlying subscription item's `metadata` when the phase is entered, adding new keys and replacing existing keys. Individual keys in the subscription item's `metadata` can be unset by posting an empty value to them in the configuration item's `metadata`. To unset all keys in the subscription item's `metadata`, update the subscription item directly or unset every key individually from the configuration item's `metadata`.
          attr_accessor :metadata
          # The plan ID to subscribe to. You may specify the same ID in `plan` and `price`.
          attr_accessor :plan
          # The ID of the price object.
          attr_accessor :price
          # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline.
          attr_accessor :price_data
          # Quantity for the given price. Can be set only if the price's `usage_type` is `licensed` and not `metered`.
          attr_accessor :quantity
          # A list of [Tax Rate](https://stripe.com/docs/api/tax_rates) ids. These Tax Rates will override the [`default_tax_rates`](https://stripe.com/docs/api/subscriptions/create#create_subscription-default_tax_rates) on the Subscription. When updating, pass an empty string to remove previously-defined tax rates.
          attr_accessor :tax_rates

          def initialize(
            discounts: nil,
            metadata: nil,
            plan: nil,
            price: nil,
            price_data: nil,
            quantity: nil,
            tax_rates: nil
          )
            @discounts = discounts
            @metadata = metadata
            @plan = plan
            @price = price
            @price_data = price_data
            @quantity = quantity
            @tax_rates = tax_rates
          end
        end

        class TransferData < Stripe::RequestParams
          # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the destination account. By default, the entire amount is transferred to the destination.
          attr_accessor :amount_percent
          # ID of an existing, connected Stripe account.
          attr_accessor :destination

          def initialize(amount_percent: nil, destination: nil)
            @amount_percent = amount_percent
            @destination = destination
          end
        end
        # A list of prices and quantities that will generate invoice items appended to the next invoice for this phase. You may pass up to 20 items.
        attr_accessor :add_invoice_items
        # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. The request must be made by a platform account on a connected account in order to set an application fee percentage. For more information, see the application fees [documentation](https://stripe.com/docs/connect/subscriptions#collecting-fees-on-subscriptions).
        attr_accessor :application_fee_percent
        # Automatic tax settings for this phase.
        attr_accessor :automatic_tax
        # Can be set to `phase_start` to set the anchor to the start of the phase or `automatic` to automatically change it if needed. Cannot be set to `phase_start` if this phase specifies a trial. For more information, see the billing cycle [documentation](https://stripe.com/docs/billing/subscriptions/billing-cycle).
        attr_accessor :billing_cycle_anchor
        # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay the underlying subscription at the end of each billing cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`. Defaults to `charge_automatically` on creation.
        attr_accessor :collection_method
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        attr_accessor :currency
        # ID of the default payment method for the subscription schedule. It must belong to the customer associated with the subscription schedule. If not set, invoices will use the default payment method in the customer's invoice settings.
        attr_accessor :default_payment_method
        # A list of [Tax Rate](https://stripe.com/docs/api/tax_rates) ids. These Tax Rates will set the Subscription's [`default_tax_rates`](https://stripe.com/docs/api/subscriptions/create#create_subscription-default_tax_rates), which means they will be the Invoice's [`default_tax_rates`](https://stripe.com/docs/api/invoices/create#create_invoice-default_tax_rates) for any Invoices issued by the Subscription during this Phase.
        attr_accessor :default_tax_rates
        # Subscription description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
        attr_accessor :description
        # The coupons to redeem into discounts for the schedule phase. If not specified, inherits the discount from the subscription's customer. Pass an empty string to avoid inheriting any discounts.
        attr_accessor :discounts
        # The date at which this phase of the subscription schedule ends. If set, `iterations` must not be set.
        attr_accessor :end_date
        # All invoices will be billed using the specified settings.
        attr_accessor :invoice_settings
        # List of configuration items, each with an attached price, to apply during this phase of the subscription schedule.
        attr_accessor :items
        # Integer representing the multiplier applied to the price interval. For example, `iterations=2` applied to a price with `interval=month` and `interval_count=3` results in a phase of duration `2 * 3 months = 6 months`. If set, `end_date` must not be set.
        attr_accessor :iterations
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to a phase. Metadata on a schedule's phase will update the underlying subscription's `metadata` when the phase is entered, adding new keys and replacing existing keys in the subscription's `metadata`. Individual keys in the subscription's `metadata` can be unset by posting an empty value to them in the phase's `metadata`. To unset all keys in the subscription's `metadata`, update the subscription directly or unset every key individually from the phase's `metadata`.
        attr_accessor :metadata
        # The account on behalf of which to charge, for each of the associated subscription's invoices.
        attr_accessor :on_behalf_of
        # Whether the subscription schedule will create [prorations](https://stripe.com/docs/billing/subscriptions/prorations) when transitioning to this phase. The default value is `create_prorations`. This setting controls prorations when a phase is started asynchronously and it is persisted as a field on the phase. It's different from the request-level [proration_behavior](https://stripe.com/docs/api/subscription_schedules/update#update_subscription_schedule-proration_behavior) parameter which controls what happens if the update request affects the billing configuration of the current phase.
        attr_accessor :proration_behavior
        # The date at which this phase of the subscription schedule starts or `now`. Must be set on the first phase.
        attr_accessor :start_date
        # The data with which to automatically create a Transfer for each of the associated subscription's invoices.
        attr_accessor :transfer_data
        # If set to true the entire phase is counted as a trial and the customer will not be charged for any fees.
        attr_accessor :trial
        # Sets the phase to trialing from the start date to this date. Must be before the phase end date, can not be combined with `trial`
        attr_accessor :trial_end

        def initialize(
          add_invoice_items: nil,
          application_fee_percent: nil,
          automatic_tax: nil,
          billing_cycle_anchor: nil,
          collection_method: nil,
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
          proration_behavior: nil,
          start_date: nil,
          transfer_data: nil,
          trial: nil,
          trial_end: nil
        )
          @add_invoice_items = add_invoice_items
          @application_fee_percent = application_fee_percent
          @automatic_tax = automatic_tax
          @billing_cycle_anchor = billing_cycle_anchor
          @collection_method = collection_method
          @currency = currency
          @default_payment_method = default_payment_method
          @default_tax_rates = default_tax_rates
          @description = description
          @discounts = discounts
          @end_date = end_date
          @invoice_settings = invoice_settings
          @items = items
          @iterations = iterations
          @metadata = metadata
          @on_behalf_of = on_behalf_of
          @proration_behavior = proration_behavior
          @start_date = start_date
          @transfer_data = transfer_data
          @trial = trial
          @trial_end = trial_end
        end
      end
      # Object representing the subscription schedule's default settings.
      attr_accessor :default_settings
      # Behavior of the subscription schedule and underlying subscription when it ends. Possible values are `release` or `cancel` with the default being `release`. `release` will end the subscription schedule and keep the underlying subscription running. `cancel` will end the subscription schedule and cancel the underlying subscription.
      attr_accessor :end_behavior
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # List representing phases of the subscription schedule. Each phase can be customized to have different durations, plans, and coupons. If there are multiple phases, the `end_date` of one phase will always equal the `start_date` of the next phase. Note that past phases can be omitted.
      attr_accessor :phases
      # If the update changes the current phase, indicates whether the changes should be prorated. The default value is `create_prorations`.
      attr_accessor :proration_behavior

      def initialize(
        default_settings: nil,
        end_behavior: nil,
        expand: nil,
        metadata: nil,
        phases: nil,
        proration_behavior: nil
      )
        @default_settings = default_settings
        @end_behavior = end_behavior
        @expand = expand
        @metadata = metadata
        @phases = phases
        @proration_behavior = proration_behavior
      end
    end

    class CancelParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # If the subscription schedule is `active`, indicates if a final invoice will be generated that contains any un-invoiced metered usage and new/pending proration invoice items. Defaults to `true`.
      attr_accessor :invoice_now
      # If the subscription schedule is `active`, indicates if the cancellation should be prorated. Defaults to `true`.
      attr_accessor :prorate

      def initialize(expand: nil, invoice_now: nil, prorate: nil)
        @expand = expand
        @invoice_now = invoice_now
        @prorate = prorate
      end
    end

    class ReleaseParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Keep any cancellation on the subscription that the schedule has set
      attr_accessor :preserve_cancel_date

      def initialize(expand: nil, preserve_cancel_date: nil)
        @expand = expand
        @preserve_cancel_date = preserve_cancel_date
      end
    end

    # Cancels a subscription schedule and its associated subscription immediately (if the subscription schedule has an active subscription). A subscription schedule can only be canceled if its status is not_started or active.
    def cancel(schedule, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/subscription_schedules/%<schedule>s/cancel", { schedule: CGI.escape(schedule) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Creates a new subscription schedule object. Each customer can have up to 500 active or scheduled subscriptions.
    def create(params = {}, opts = {})
      request(
        method: :post,
        path: "/v1/subscription_schedules",
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieves the list of your subscription schedules.
    def list(params = {}, opts = {})
      request(
        method: :get,
        path: "/v1/subscription_schedules",
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Releases the subscription schedule immediately, which will stop scheduling of its phases, but leave any existing subscription in place. A schedule can only be released if its status is not_started or active. If the subscription schedule is currently associated with a subscription, releasing it will remove its subscription property and set the subscription's ID to the released_subscription property.
    def release(schedule, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/subscription_schedules/%<schedule>s/release", { schedule: CGI.escape(schedule) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieves the details of an existing subscription schedule. You only need to supply the unique subscription schedule identifier that was returned upon subscription schedule creation.
    def retrieve(schedule, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/subscription_schedules/%<schedule>s", { schedule: CGI.escape(schedule) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Updates an existing subscription schedule.
    def update(schedule, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/subscription_schedules/%<schedule>s", { schedule: CGI.escape(schedule) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
