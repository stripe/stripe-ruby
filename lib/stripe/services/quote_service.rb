# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class QuoteService < StripeService
    attr_reader :preview_invoices, :preview_subscription_schedules, :lines, :line_items, :computed_upfront_line_items

    def initialize(requestor)
      super(requestor)
      @preview_invoices = Stripe::QuotePreviewInvoiceService.new(@requestor)
      @preview_subscription_schedules = Stripe::QuotePreviewSubscriptionScheduleService
                                        .new(@requestor)
      @lines = Stripe::QuoteLineService.new(@requestor)
      @line_items = Stripe::QuoteLineItemService.new(@requestor)
      @computed_upfront_line_items = Stripe::QuoteComputedUpfrontLineItemsService.new(@requestor)
    end

    class ListParams < Stripe::RequestParams
      # The ID of the customer whose quotes will be retrieved.
      attr_accessor :customer
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # The subscription which the quote updates.
      attr_accessor :from_subscription
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
        from_subscription: nil,
        limit: nil,
        starting_after: nil,
        status: nil,
        test_clock: nil
      )
        @customer = customer
        @ending_before = ending_before
        @expand = expand
        @from_subscription = from_subscription
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
        class DiscountEnd < Stripe::RequestParams
          class Duration < Stripe::RequestParams
            # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
            attr_accessor :interval
            # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
            attr_accessor :interval_count

            def initialize(interval: nil, interval_count: nil)
              @interval = interval
              @interval_count = interval_count
            end
          end
          # Time span for the redeemed discount.
          attr_accessor :duration
          # A precise Unix timestamp for the discount to end. Must be in the future.
          attr_accessor :timestamp
          # The type of calculation made to determine when the discount ends.
          attr_accessor :type

          def initialize(duration: nil, timestamp: nil, type: nil)
            @duration = duration
            @timestamp = timestamp
            @type = type
          end
        end
        # ID of the coupon to create a new discount for.
        attr_accessor :coupon
        # ID of an existing discount on the object (or one of its ancestors) to reuse.
        attr_accessor :discount
        # Details to determine how long the discount should be applied for.
        attr_accessor :discount_end
        # ID of the promotion code to create a new discount for.
        attr_accessor :promotion_code

        def initialize(coupon: nil, discount: nil, discount_end: nil, promotion_code: nil)
          @coupon = coupon
          @discount = discount
          @discount_end = discount_end
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

      class Line < Stripe::RequestParams
        class Action < Stripe::RequestParams
          class AddDiscount < Stripe::RequestParams
            class DiscountEnd < Stripe::RequestParams
              # The type of calculation made to determine when the discount ends.
              attr_accessor :type

              def initialize(type: nil)
                @type = type
              end
            end
            # The coupon code to redeem.
            attr_accessor :coupon
            # An ID of an existing discount for a coupon that was already redeemed.
            attr_accessor :discount
            # Details to determine how long the discount should be applied for.
            attr_accessor :discount_end
            # The index, starting at 0, at which to position the new discount. When not supplied, Stripe defaults to appending the discount to the end of the `discounts` array.
            attr_accessor :index
            # The promotion code to redeem.
            attr_accessor :promotion_code

            def initialize(
              coupon: nil,
              discount: nil,
              discount_end: nil,
              index: nil,
              promotion_code: nil
            )
              @coupon = coupon
              @discount = discount
              @discount_end = discount_end
              @index = index
              @promotion_code = promotion_code
            end
          end

          class AddItem < Stripe::RequestParams
            class Discount < Stripe::RequestParams
              class DiscountEnd < Stripe::RequestParams
                class Duration < Stripe::RequestParams
                  # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
                  attr_accessor :interval
                  # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
                  attr_accessor :interval_count

                  def initialize(interval: nil, interval_count: nil)
                    @interval = interval
                    @interval_count = interval_count
                  end
                end
                # Time span for the redeemed discount.
                attr_accessor :duration
                # A precise Unix timestamp for the discount to end. Must be in the future.
                attr_accessor :timestamp
                # The type of calculation made to determine when the discount ends.
                attr_accessor :type

                def initialize(duration: nil, timestamp: nil, type: nil)
                  @duration = duration
                  @timestamp = timestamp
                  @type = type
                end
              end
              # ID of the coupon to create a new discount for.
              attr_accessor :coupon
              # ID of an existing discount on the object (or one of its ancestors) to reuse.
              attr_accessor :discount
              # Details to determine how long the discount should be applied for.
              attr_accessor :discount_end
              # ID of the promotion code to create a new discount for.
              attr_accessor :promotion_code

              def initialize(coupon: nil, discount: nil, discount_end: nil, promotion_code: nil)
                @coupon = coupon
                @discount = discount
                @discount_end = discount_end
                @promotion_code = promotion_code
              end
            end

            class Trial < Stripe::RequestParams
              # List of price IDs which, if present on the subscription following a paid trial, constitute opting-in to the paid trial. Currently only supports at most 1 price ID.
              attr_accessor :converts_to
              # Determines the type of trial for this item.
              attr_accessor :type

              def initialize(converts_to: nil, type: nil)
                @converts_to = converts_to
                @type = type
              end
            end
            # The discounts applied to the item. Subscription item discounts are applied before subscription discounts.
            attr_accessor :discounts
            # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
            attr_accessor :metadata
            # The ID of the price object.
            attr_accessor :price
            # Quantity for this item.
            attr_accessor :quantity
            # The tax rates that apply to this subscription item. When set, the `default_tax_rates` on the subscription do not apply to this `subscription_item`.
            attr_accessor :tax_rates
            # Options that configure the trial on the subscription item.
            attr_accessor :trial

            def initialize(
              discounts: nil,
              metadata: nil,
              price: nil,
              quantity: nil,
              tax_rates: nil,
              trial: nil
            )
              @discounts = discounts
              @metadata = metadata
              @price = price
              @quantity = quantity
              @tax_rates = tax_rates
              @trial = trial
            end
          end

          class RemoveDiscount < Stripe::RequestParams
            # The coupon code to remove from the `discounts` array.
            attr_accessor :coupon
            # The ID of a discount to remove from the `discounts` array.
            attr_accessor :discount
            # The ID of a promotion code to remove from the `discounts` array.
            attr_accessor :promotion_code

            def initialize(coupon: nil, discount: nil, promotion_code: nil)
              @coupon = coupon
              @discount = discount
              @promotion_code = promotion_code
            end
          end

          class RemoveItem < Stripe::RequestParams
            # ID of a price to remove.
            attr_accessor :price

            def initialize(price: nil)
              @price = price
            end
          end

          class SetDiscount < Stripe::RequestParams
            # The coupon code to replace the `discounts` array with.
            attr_accessor :coupon
            # An ID of an existing discount to replace the `discounts` array with.
            attr_accessor :discount
            # An ID of an existing promotion code to replace the `discounts` array with.
            attr_accessor :promotion_code

            def initialize(coupon: nil, discount: nil, promotion_code: nil)
              @coupon = coupon
              @discount = discount
              @promotion_code = promotion_code
            end
          end

          class SetItem < Stripe::RequestParams
            class Discount < Stripe::RequestParams
              class DiscountEnd < Stripe::RequestParams
                class Duration < Stripe::RequestParams
                  # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
                  attr_accessor :interval
                  # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
                  attr_accessor :interval_count

                  def initialize(interval: nil, interval_count: nil)
                    @interval = interval
                    @interval_count = interval_count
                  end
                end
                # Time span for the redeemed discount.
                attr_accessor :duration
                # A precise Unix timestamp for the discount to end. Must be in the future.
                attr_accessor :timestamp
                # The type of calculation made to determine when the discount ends.
                attr_accessor :type

                def initialize(duration: nil, timestamp: nil, type: nil)
                  @duration = duration
                  @timestamp = timestamp
                  @type = type
                end
              end
              # ID of the coupon to create a new discount for.
              attr_accessor :coupon
              # ID of an existing discount on the object (or one of its ancestors) to reuse.
              attr_accessor :discount
              # Details to determine how long the discount should be applied for.
              attr_accessor :discount_end
              # ID of the promotion code to create a new discount for.
              attr_accessor :promotion_code

              def initialize(coupon: nil, discount: nil, discount_end: nil, promotion_code: nil)
                @coupon = coupon
                @discount = discount
                @discount_end = discount_end
                @promotion_code = promotion_code
              end
            end

            class Trial < Stripe::RequestParams
              # List of price IDs which, if present on the subscription following a paid trial, constitute opting-in to the paid trial. Currently only supports at most 1 price ID.
              attr_accessor :converts_to
              # Determines the type of trial for this item.
              attr_accessor :type

              def initialize(converts_to: nil, type: nil)
                @converts_to = converts_to
                @type = type
              end
            end
            # If an item with the `price` already exists, passing this will override the `discounts` array on the subscription item that matches that price. Otherwise, the `items` array is cleared and a single new item is added with the supplied `discounts`.
            attr_accessor :discounts
            # If an item with the `price` already exists, passing this will override the `metadata` on the subscription item that matches that price. Otherwise, the `items` array is cleared and a single new item is added with the supplied `metadata`.
            attr_accessor :metadata
            # The ID of the price object.
            attr_accessor :price
            # If an item with the `price` already exists, passing this will override the quantity on the subscription item that matches that price. Otherwise, the `items` array is cleared and a single new item is added with the supplied `quantity`.
            attr_accessor :quantity
            # If an item with the `price` already exists, passing this will override the `tax_rates` array on the subscription item that matches that price. Otherwise, the `items` array is cleared and a single new item is added with the supplied `tax_rates`.
            attr_accessor :tax_rates
            # If an item with the `price` already exists, passing this will override the `trial` configuration on the subscription item that matches that price. Otherwise, the `items` array is cleared and a single new item is added with the supplied `trial`.
            attr_accessor :trial

            def initialize(
              discounts: nil,
              metadata: nil,
              price: nil,
              quantity: nil,
              tax_rates: nil,
              trial: nil
            )
              @discounts = discounts
              @metadata = metadata
              @price = price
              @quantity = quantity
              @tax_rates = tax_rates
              @trial = trial
            end
          end
          # Details for the `add_discount` type.
          attr_accessor :add_discount
          # Details for the `add_item` type.
          attr_accessor :add_item
          # Details for the `add_metadata` type: specify a hash of key-value pairs.
          attr_accessor :add_metadata
          # Details for the `remove_discount` type.
          attr_accessor :remove_discount
          # Details for the `remove_item` type.
          attr_accessor :remove_item
          # Details for the `remove_metadata` type: specify an array of metadata keys.
          attr_accessor :remove_metadata
          # Details for the `set_discounts` type.
          attr_accessor :set_discounts
          # Details for the `set_items` type.
          attr_accessor :set_items
          # Details for the `set_metadata` type: specify an array of key-value pairs.
          attr_accessor :set_metadata
          # The type of action the quote line performs.
          attr_accessor :type

          def initialize(
            add_discount: nil,
            add_item: nil,
            add_metadata: nil,
            remove_discount: nil,
            remove_item: nil,
            remove_metadata: nil,
            set_discounts: nil,
            set_items: nil,
            set_metadata: nil,
            type: nil
          )
            @add_discount = add_discount
            @add_item = add_item
            @add_metadata = add_metadata
            @remove_discount = remove_discount
            @remove_item = remove_item
            @remove_metadata = remove_metadata
            @set_discounts = set_discounts
            @set_items = set_items
            @set_metadata = set_metadata
            @type = type
          end
        end

        class AppliesTo < Stripe::RequestParams
          # A custom string that identifies a new subscription schedule being created upon quote acceptance. All quote lines with the same `new_reference` field will be applied to the creation of a new subscription schedule.
          attr_accessor :new_reference
          # The ID of the schedule the line applies to.
          attr_accessor :subscription_schedule
          # Describes whether the quote line is affecting a new schedule or an existing schedule.
          attr_accessor :type

          def initialize(new_reference: nil, subscription_schedule: nil, type: nil)
            @new_reference = new_reference
            @subscription_schedule = subscription_schedule
            @type = type
          end
        end

        class CancelSubscriptionSchedule < Stripe::RequestParams
          # Timestamp helper to cancel the underlying schedule on the accompanying line's start date. Must be set to `line_starts_at`.
          attr_accessor :cancel_at
          # If the subscription schedule is `active`, indicates if a final invoice will be generated that contains any un-invoiced metered usage and new/pending proration invoice items. Boolean that defaults to `true`.
          attr_accessor :invoice_now
          # If the subscription schedule is `active`, indicates if the cancellation should be prorated. Boolean that defaults to `true`.
          attr_accessor :prorate

          def initialize(cancel_at: nil, invoice_now: nil, prorate: nil)
            @cancel_at = cancel_at
            @invoice_now = invoice_now
            @prorate = prorate
          end
        end

        class EndsAt < Stripe::RequestParams
          class DiscountEnd < Stripe::RequestParams
            # The ID of a specific discount.
            attr_accessor :discount

            def initialize(discount: nil)
              @discount = discount
            end
          end

          class Duration < Stripe::RequestParams
            # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
            attr_accessor :interval
            # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
            attr_accessor :interval_count

            def initialize(interval: nil, interval_count: nil)
              @interval = interval
              @interval_count = interval_count
            end
          end
          # Use the `end` time of a given discount.
          attr_accessor :discount_end
          # Time span for the quote line starting from the `starts_at` date.
          attr_accessor :duration
          # A precise Unix timestamp.
          attr_accessor :timestamp
          # Select a way to pass in `ends_at`.
          attr_accessor :type

          def initialize(discount_end: nil, duration: nil, timestamp: nil, type: nil)
            @discount_end = discount_end
            @duration = duration
            @timestamp = timestamp
            @type = type
          end
        end

        class SetPauseCollection < Stripe::RequestParams
          class Set < Stripe::RequestParams
            # The payment collection behavior for this subscription while paused. One of `keep_as_draft`, `mark_uncollectible`, or `void`.
            attr_accessor :behavior

            def initialize(behavior: nil)
              @behavior = behavior
            end
          end
          # Details of the pause_collection behavior to apply to the amendment.
          attr_accessor :set
          # Determines the type of the pause_collection amendment.
          attr_accessor :type

          def initialize(set: nil, type: nil)
            @set = set
            @type = type
          end
        end

        class StartsAt < Stripe::RequestParams
          class DiscountEnd < Stripe::RequestParams
            # The ID of a specific discount.
            attr_accessor :discount

            def initialize(discount: nil)
              @discount = discount
            end
          end

          class LineEndsAt < Stripe::RequestParams
            # The position of the previous quote line in the `lines` array after which this line should begin. Indexes start from 0 and must be less than the index of the current line in the array.
            attr_accessor :index

            def initialize(index: nil)
              @index = index
            end
          end
          # Use the `end` time of a given discount.
          attr_accessor :discount_end
          # The timestamp the given line ends at.
          attr_accessor :line_ends_at
          # A precise Unix timestamp.
          attr_accessor :timestamp
          # Select a way to pass in `starts_at`.
          attr_accessor :type

          def initialize(discount_end: nil, line_ends_at: nil, timestamp: nil, type: nil)
            @discount_end = discount_end
            @line_ends_at = line_ends_at
            @timestamp = timestamp
            @type = type
          end
        end

        class TrialSettings < Stripe::RequestParams
          class EndBehavior < Stripe::RequestParams
            # Configure how an opt-in following a paid trial is billed when using `billing_behavior: prorate_up_front`.
            attr_accessor :prorate_up_front

            def initialize(prorate_up_front: nil)
              @prorate_up_front = prorate_up_front
            end
          end
          # Defines how the subscription should behave when a trial ends.
          attr_accessor :end_behavior

          def initialize(end_behavior: nil)
            @end_behavior = end_behavior
          end
        end
        # An array of operations the quote line performs.
        attr_accessor :actions
        # Details to identify the subscription schedule the quote line applies to.
        attr_accessor :applies_to
        # For point-in-time quote lines (having no `ends_at` timestamp), this attribute lets you set or remove whether the subscription's billing cycle anchor is reset at the Quote Line `starts_at` timestamp.For time-span based quote lines (having both `starts_at` and `ends_at`), the only valid value is `automatic`, which removes any previously configured billing cycle anchor resets during the window of time spanning the quote line.
        attr_accessor :billing_cycle_anchor
        # A point-in-time operation that cancels an existing subscription schedule at the line's starts_at timestamp. Currently only compatible with `quote_acceptance_date` for `starts_at`. When using cancel_subscription_schedule, the subscription schedule on the quote remains unalterable, except for modifications to the metadata, collection_method or invoice_settings.
        attr_accessor :cancel_subscription_schedule
        # Details to identify the end of the time range modified by the proposed change. If not supplied, the quote line is considered a point-in-time operation that only affects the exact timestamp at `starts_at`, and a restricted set of attributes is supported on the quote line.
        attr_accessor :ends_at
        # Changes to how Stripe handles prorations during the quote line's time span. Affects if and how prorations are created when a future phase starts.
        attr_accessor :proration_behavior
        # Defines how to pause collection for the underlying subscription throughout the duration of the amendment.
        attr_accessor :set_pause_collection
        # Timestamp helper to end the underlying schedule early, based on the acompanying line's start or end date.
        attr_accessor :set_schedule_end
        # Details to identify the earliest timestamp where the proposed change should take effect.
        attr_accessor :starts_at
        # Settings related to subscription trials.
        attr_accessor :trial_settings

        def initialize(
          actions: nil,
          applies_to: nil,
          billing_cycle_anchor: nil,
          cancel_subscription_schedule: nil,
          ends_at: nil,
          proration_behavior: nil,
          set_pause_collection: nil,
          set_schedule_end: nil,
          starts_at: nil,
          trial_settings: nil
        )
          @actions = actions
          @applies_to = applies_to
          @billing_cycle_anchor = billing_cycle_anchor
          @cancel_subscription_schedule = cancel_subscription_schedule
          @ends_at = ends_at
          @proration_behavior = proration_behavior
          @set_pause_collection = set_pause_collection
          @set_schedule_end = set_schedule_end
          @starts_at = starts_at
          @trial_settings = trial_settings
        end
      end

      class LineItem < Stripe::RequestParams
        class Discount < Stripe::RequestParams
          class DiscountEnd < Stripe::RequestParams
            class Duration < Stripe::RequestParams
              # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
              attr_accessor :interval
              # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
              attr_accessor :interval_count

              def initialize(interval: nil, interval_count: nil)
                @interval = interval
                @interval_count = interval_count
              end
            end
            # Time span for the redeemed discount.
            attr_accessor :duration
            # A precise Unix timestamp for the discount to end. Must be in the future.
            attr_accessor :timestamp
            # The type of calculation made to determine when the discount ends.
            attr_accessor :type

            def initialize(duration: nil, timestamp: nil, type: nil)
              @duration = duration
              @timestamp = timestamp
              @type = type
            end
          end
          # ID of the coupon to create a new discount for.
          attr_accessor :coupon
          # ID of an existing discount on the object (or one of its ancestors) to reuse.
          attr_accessor :discount
          # Details to determine how long the discount should be applied for.
          attr_accessor :discount_end
          # ID of the promotion code to create a new discount for.
          attr_accessor :promotion_code

          def initialize(coupon: nil, discount: nil, discount_end: nil, promotion_code: nil)
            @coupon = coupon
            @discount = discount
            @discount_end = discount_end
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
          # The ID of the product that this price will belong to.
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
        class BillOnAcceptance < Stripe::RequestParams
          class BillFrom < Stripe::RequestParams
            class LineStartsAt < Stripe::RequestParams
              # The ID of a quote line.
              attr_accessor :id
              # The position of the previous quote line in the `lines` array after which this line should begin. Indexes start from 0 and must be less than the index of the current line in the array.
              attr_accessor :index

              def initialize(id: nil, index: nil)
                @id = id
                @index = index
              end
            end
            # Details of a Quote line to start the bill period from.
            attr_accessor :line_starts_at
            # A precise Unix timestamp.
            attr_accessor :timestamp
            # The type of method to specify the `bill_from` time.
            attr_accessor :type

            def initialize(line_starts_at: nil, timestamp: nil, type: nil)
              @line_starts_at = line_starts_at
              @timestamp = timestamp
              @type = type
            end
          end

          class BillUntil < Stripe::RequestParams
            class Duration < Stripe::RequestParams
              # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
              attr_accessor :interval
              # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
              attr_accessor :interval_count

              def initialize(interval: nil, interval_count: nil)
                @interval = interval
                @interval_count = interval_count
              end
            end

            class LineEndsAt < Stripe::RequestParams
              # The ID of a quote line.
              attr_accessor :id
              # The position of the previous quote line in the `lines` array after which this line should begin. Indexes start from 0 and must be less than the index of the current line in the array.
              attr_accessor :index

              def initialize(id: nil, index: nil)
                @id = id
                @index = index
              end
            end
            # Details of the duration over which to bill.
            attr_accessor :duration
            # Details of a Quote line item from which to bill until.
            attr_accessor :line_ends_at
            # A precise Unix timestamp.
            attr_accessor :timestamp
            # The type of method to specify the `bill_until` time.
            attr_accessor :type

            def initialize(duration: nil, line_ends_at: nil, timestamp: nil, type: nil)
              @duration = duration
              @line_ends_at = line_ends_at
              @timestamp = timestamp
              @type = type
            end
          end
          # The start of the period to bill from when the Quote is accepted.
          attr_accessor :bill_from
          # The end of the period to bill until when the Quote is accepted.
          attr_accessor :bill_until

          def initialize(bill_from: nil, bill_until: nil)
            @bill_from = bill_from
            @bill_until = bill_until
          end
        end

        class Prebilling < Stripe::RequestParams
          # This is used to determine the number of billing cycles to prebill.
          attr_accessor :iterations

          def initialize(iterations: nil)
            @iterations = iterations
          end
        end
        # Describes the period to bill for upon accepting the quote.
        attr_accessor :bill_on_acceptance
        # Configures when the subscription schedule generates prorations for phase transitions. Possible values are `prorate_on_next_phase` or `prorate_up_front` with the default being `prorate_on_next_phase`. `prorate_on_next_phase` will apply phase changes and generate prorations at transition time. `prorate_up_front` will bill for all phases within the current billing cycle up front.
        attr_accessor :billing_behavior
        # When specified as `reset`, the subscription will always start a new billing period when the quote is accepted.
        attr_accessor :billing_cycle_anchor
        # The subscription's description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
        attr_accessor :description
        # When creating a new subscription, the date of which the subscription schedule will start after the quote is accepted. When updating a subscription, the date of which the subscription will be updated using a subscription schedule. The special value `current_period_end` can be provided to update a subscription at the end of its current period. The `effective_date` is ignored if it is in the past when the quote is accepted.
        attr_accessor :effective_date
        # Behavior of the subscription schedule and underlying subscription when it ends.
        attr_accessor :end_behavior
        # The id of a subscription that the quote will update. By default, the quote will contain the state of the subscription (such as line items, collection method and billing thresholds) unless overridden.
        attr_accessor :from_subscription
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that will set metadata on the subscription or subscription schedule when the quote is accepted. If a recurring price is included in `line_items`, this field will be passed to the resulting subscription's `metadata` field. If `subscription_data.effective_date` is used, this field will be passed to the resulting subscription schedule's `phases.metadata` field. Unlike object-level metadata, this field is declarative. Updates will clear prior values.
        attr_accessor :metadata
        # If specified, the invoicing for the given billing cycle iterations will be processed when the quote is accepted. Cannot be used with `effective_date`.
        attr_accessor :prebilling
        # Determines how to handle [prorations](https://stripe.com/docs/subscriptions/billing-cycle#prorations). When creating a subscription, valid values are `create_prorations` or `none`.
        #
        # When updating a subscription, valid values are `create_prorations`, `none`, or `always_invoice`.
        #
        # Passing `create_prorations` will cause proration invoice items to be created when applicable. These proration items will only be invoiced immediately under [certain conditions](https://stripe.com/docs/subscriptions/upgrading-downgrading#immediate-payment). In order to always invoice immediately for prorations, pass `always_invoice`.
        #
        # Prorations can be disabled by passing `none`.
        attr_accessor :proration_behavior
        # Integer representing the number of trial period days before the customer is charged for the first time.
        attr_accessor :trial_period_days

        def initialize(
          bill_on_acceptance: nil,
          billing_behavior: nil,
          billing_cycle_anchor: nil,
          description: nil,
          effective_date: nil,
          end_behavior: nil,
          from_subscription: nil,
          metadata: nil,
          prebilling: nil,
          proration_behavior: nil,
          trial_period_days: nil
        )
          @bill_on_acceptance = bill_on_acceptance
          @billing_behavior = billing_behavior
          @billing_cycle_anchor = billing_cycle_anchor
          @description = description
          @effective_date = effective_date
          @end_behavior = end_behavior
          @from_subscription = from_subscription
          @metadata = metadata
          @prebilling = prebilling
          @proration_behavior = proration_behavior
          @trial_period_days = trial_period_days
        end
      end

      class SubscriptionDataOverride < Stripe::RequestParams
        class AppliesTo < Stripe::RequestParams
          # A custom string that identifies a new subscription schedule being created upon quote acceptance. All quote lines with the same `new_reference` field will be applied to the creation of a new subscription schedule.
          attr_accessor :new_reference
          # The ID of the schedule the line applies to.
          attr_accessor :subscription_schedule
          # Describes whether the quote line is affecting a new schedule or an existing schedule.
          attr_accessor :type

          def initialize(new_reference: nil, subscription_schedule: nil, type: nil)
            @new_reference = new_reference
            @subscription_schedule = subscription_schedule
            @type = type
          end
        end

        class BillOnAcceptance < Stripe::RequestParams
          class BillFrom < Stripe::RequestParams
            class LineStartsAt < Stripe::RequestParams
              # The ID of a quote line.
              attr_accessor :id
              # The position of the previous quote line in the `lines` array after which this line should begin. Indexes start from 0 and must be less than the index of the current line in the array.
              attr_accessor :index

              def initialize(id: nil, index: nil)
                @id = id
                @index = index
              end
            end
            # Details of a Quote line to start the bill period from.
            attr_accessor :line_starts_at
            # A precise Unix timestamp.
            attr_accessor :timestamp
            # The type of method to specify the `bill_from` time.
            attr_accessor :type

            def initialize(line_starts_at: nil, timestamp: nil, type: nil)
              @line_starts_at = line_starts_at
              @timestamp = timestamp
              @type = type
            end
          end

          class BillUntil < Stripe::RequestParams
            class Duration < Stripe::RequestParams
              # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
              attr_accessor :interval
              # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
              attr_accessor :interval_count

              def initialize(interval: nil, interval_count: nil)
                @interval = interval
                @interval_count = interval_count
              end
            end

            class LineEndsAt < Stripe::RequestParams
              # The ID of a quote line.
              attr_accessor :id
              # The position of the previous quote line in the `lines` array after which this line should begin. Indexes start from 0 and must be less than the index of the current line in the array.
              attr_accessor :index

              def initialize(id: nil, index: nil)
                @id = id
                @index = index
              end
            end
            # Details of the duration over which to bill.
            attr_accessor :duration
            # Details of a Quote line item from which to bill until.
            attr_accessor :line_ends_at
            # A precise Unix timestamp.
            attr_accessor :timestamp
            # The type of method to specify the `bill_until` time.
            attr_accessor :type

            def initialize(duration: nil, line_ends_at: nil, timestamp: nil, type: nil)
              @duration = duration
              @line_ends_at = line_ends_at
              @timestamp = timestamp
              @type = type
            end
          end
          # The start of the period to bill from when the Quote is accepted.
          attr_accessor :bill_from
          # The end of the period to bill until when the Quote is accepted.
          attr_accessor :bill_until

          def initialize(bill_from: nil, bill_until: nil)
            @bill_from = bill_from
            @bill_until = bill_until
          end
        end
        # Whether the override applies to an existing Subscription Schedule or a new Subscription Schedule.
        attr_accessor :applies_to
        # Describes the period to bill for upon accepting the quote.
        attr_accessor :bill_on_acceptance
        # Configures when the subscription schedule generates prorations for phase transitions. Possible values are `prorate_on_next_phase` or `prorate_up_front` with the default being `prorate_on_next_phase`. `prorate_on_next_phase` will apply phase changes and generate prorations at transition time. `prorate_up_front` will bill for all phases within the current billing cycle up front.
        attr_accessor :billing_behavior
        # The customer the Subscription Data override applies to. This is only relevant when `applies_to.type=new_reference`.
        attr_accessor :customer
        # The subscription's description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
        attr_accessor :description
        # Behavior of the subscription schedule and underlying subscription when it ends.
        attr_accessor :end_behavior
        # Determines how to handle [prorations](https://stripe.com/docs/subscriptions/billing-cycle#prorations). When creating a subscription, valid values are `create_prorations` or `none`.
        #
        # When updating a subscription, valid values are `create_prorations`, `none`, or `always_invoice`.
        #
        # Passing `create_prorations` will cause proration invoice items to be created when applicable. These proration items will only be invoiced immediately under [certain conditions](https://stripe.com/docs/subscriptions/upgrading-downgrading#immediate-payment). In order to always invoice immediately for prorations, pass `always_invoice`.
        #
        # Prorations can be disabled by passing `none`.
        attr_accessor :proration_behavior

        def initialize(
          applies_to: nil,
          bill_on_acceptance: nil,
          billing_behavior: nil,
          customer: nil,
          description: nil,
          end_behavior: nil,
          proration_behavior: nil
        )
          @applies_to = applies_to
          @bill_on_acceptance = bill_on_acceptance
          @billing_behavior = billing_behavior
          @customer = customer
          @description = description
          @end_behavior = end_behavior
          @proration_behavior = proration_behavior
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
      # Set to true to allow quote lines to have `starts_at` in the past if collection is paused between `starts_at` and now.
      attr_accessor :allow_backdated_lines
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
      # A list of [quote lines](https://docs.stripe.com/api/quote_lines) on the quote. These lines describe changes, in the order provided, that will be used to create new subscription schedules or update existing subscription schedules when the quote is accepted.
      attr_accessor :lines
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # The account on behalf of which to charge.
      attr_accessor :on_behalf_of
      # When creating a subscription or subscription schedule, the specified configuration data will be used. There must be at least one line item with a recurring price for a subscription or subscription schedule to be created. A subscription schedule is created if `subscription_data[effective_date]` is present and in the future, otherwise a subscription is created.
      attr_accessor :subscription_data
      # List representing overrides for `subscription_data` configurations for specific subscription schedules.
      attr_accessor :subscription_data_overrides
      # ID of the test clock to attach to the quote.
      attr_accessor :test_clock
      # The data with which to automatically create a Transfer for each of the invoices.
      attr_accessor :transfer_data

      def initialize(
        allow_backdated_lines: nil,
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
        lines: nil,
        metadata: nil,
        on_behalf_of: nil,
        subscription_data: nil,
        subscription_data_overrides: nil,
        test_clock: nil,
        transfer_data: nil
      )
        @allow_backdated_lines = allow_backdated_lines
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
        @lines = lines
        @metadata = metadata
        @on_behalf_of = on_behalf_of
        @subscription_data = subscription_data
        @subscription_data_overrides = subscription_data_overrides
        @test_clock = test_clock
        @transfer_data = transfer_data
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
        class DiscountEnd < Stripe::RequestParams
          class Duration < Stripe::RequestParams
            # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
            attr_accessor :interval
            # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
            attr_accessor :interval_count

            def initialize(interval: nil, interval_count: nil)
              @interval = interval
              @interval_count = interval_count
            end
          end
          # Time span for the redeemed discount.
          attr_accessor :duration
          # A precise Unix timestamp for the discount to end. Must be in the future.
          attr_accessor :timestamp
          # The type of calculation made to determine when the discount ends.
          attr_accessor :type

          def initialize(duration: nil, timestamp: nil, type: nil)
            @duration = duration
            @timestamp = timestamp
            @type = type
          end
        end
        # ID of the coupon to create a new discount for.
        attr_accessor :coupon
        # ID of an existing discount on the object (or one of its ancestors) to reuse.
        attr_accessor :discount
        # Details to determine how long the discount should be applied for.
        attr_accessor :discount_end
        # ID of the promotion code to create a new discount for.
        attr_accessor :promotion_code

        def initialize(coupon: nil, discount: nil, discount_end: nil, promotion_code: nil)
          @coupon = coupon
          @discount = discount
          @discount_end = discount_end
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

      class Line < Stripe::RequestParams
        class Action < Stripe::RequestParams
          class AddDiscount < Stripe::RequestParams
            class DiscountEnd < Stripe::RequestParams
              # The type of calculation made to determine when the discount ends.
              attr_accessor :type

              def initialize(type: nil)
                @type = type
              end
            end
            # The coupon code to redeem.
            attr_accessor :coupon
            # An ID of an existing discount for a coupon that was already redeemed.
            attr_accessor :discount
            # Details to determine how long the discount should be applied for.
            attr_accessor :discount_end
            # The index, starting at 0, at which to position the new discount. When not supplied, Stripe defaults to appending the discount to the end of the `discounts` array.
            attr_accessor :index
            # The promotion code to redeem.
            attr_accessor :promotion_code

            def initialize(
              coupon: nil,
              discount: nil,
              discount_end: nil,
              index: nil,
              promotion_code: nil
            )
              @coupon = coupon
              @discount = discount
              @discount_end = discount_end
              @index = index
              @promotion_code = promotion_code
            end
          end

          class AddItem < Stripe::RequestParams
            class Discount < Stripe::RequestParams
              class DiscountEnd < Stripe::RequestParams
                class Duration < Stripe::RequestParams
                  # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
                  attr_accessor :interval
                  # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
                  attr_accessor :interval_count

                  def initialize(interval: nil, interval_count: nil)
                    @interval = interval
                    @interval_count = interval_count
                  end
                end
                # Time span for the redeemed discount.
                attr_accessor :duration
                # A precise Unix timestamp for the discount to end. Must be in the future.
                attr_accessor :timestamp
                # The type of calculation made to determine when the discount ends.
                attr_accessor :type

                def initialize(duration: nil, timestamp: nil, type: nil)
                  @duration = duration
                  @timestamp = timestamp
                  @type = type
                end
              end
              # ID of the coupon to create a new discount for.
              attr_accessor :coupon
              # ID of an existing discount on the object (or one of its ancestors) to reuse.
              attr_accessor :discount
              # Details to determine how long the discount should be applied for.
              attr_accessor :discount_end
              # ID of the promotion code to create a new discount for.
              attr_accessor :promotion_code

              def initialize(coupon: nil, discount: nil, discount_end: nil, promotion_code: nil)
                @coupon = coupon
                @discount = discount
                @discount_end = discount_end
                @promotion_code = promotion_code
              end
            end

            class Trial < Stripe::RequestParams
              # List of price IDs which, if present on the subscription following a paid trial, constitute opting-in to the paid trial. Currently only supports at most 1 price ID.
              attr_accessor :converts_to
              # Determines the type of trial for this item.
              attr_accessor :type

              def initialize(converts_to: nil, type: nil)
                @converts_to = converts_to
                @type = type
              end
            end
            # The discounts applied to the item. Subscription item discounts are applied before subscription discounts.
            attr_accessor :discounts
            # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
            attr_accessor :metadata
            # The ID of the price object.
            attr_accessor :price
            # Quantity for this item.
            attr_accessor :quantity
            # The tax rates that apply to this subscription item. When set, the `default_tax_rates` on the subscription do not apply to this `subscription_item`.
            attr_accessor :tax_rates
            # Options that configure the trial on the subscription item.
            attr_accessor :trial

            def initialize(
              discounts: nil,
              metadata: nil,
              price: nil,
              quantity: nil,
              tax_rates: nil,
              trial: nil
            )
              @discounts = discounts
              @metadata = metadata
              @price = price
              @quantity = quantity
              @tax_rates = tax_rates
              @trial = trial
            end
          end

          class RemoveDiscount < Stripe::RequestParams
            # The coupon code to remove from the `discounts` array.
            attr_accessor :coupon
            # The ID of a discount to remove from the `discounts` array.
            attr_accessor :discount
            # The ID of a promotion code to remove from the `discounts` array.
            attr_accessor :promotion_code

            def initialize(coupon: nil, discount: nil, promotion_code: nil)
              @coupon = coupon
              @discount = discount
              @promotion_code = promotion_code
            end
          end

          class RemoveItem < Stripe::RequestParams
            # ID of a price to remove.
            attr_accessor :price

            def initialize(price: nil)
              @price = price
            end
          end

          class SetDiscount < Stripe::RequestParams
            # The coupon code to replace the `discounts` array with.
            attr_accessor :coupon
            # An ID of an existing discount to replace the `discounts` array with.
            attr_accessor :discount
            # An ID of an existing promotion code to replace the `discounts` array with.
            attr_accessor :promotion_code

            def initialize(coupon: nil, discount: nil, promotion_code: nil)
              @coupon = coupon
              @discount = discount
              @promotion_code = promotion_code
            end
          end

          class SetItem < Stripe::RequestParams
            class Discount < Stripe::RequestParams
              class DiscountEnd < Stripe::RequestParams
                class Duration < Stripe::RequestParams
                  # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
                  attr_accessor :interval
                  # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
                  attr_accessor :interval_count

                  def initialize(interval: nil, interval_count: nil)
                    @interval = interval
                    @interval_count = interval_count
                  end
                end
                # Time span for the redeemed discount.
                attr_accessor :duration
                # A precise Unix timestamp for the discount to end. Must be in the future.
                attr_accessor :timestamp
                # The type of calculation made to determine when the discount ends.
                attr_accessor :type

                def initialize(duration: nil, timestamp: nil, type: nil)
                  @duration = duration
                  @timestamp = timestamp
                  @type = type
                end
              end
              # ID of the coupon to create a new discount for.
              attr_accessor :coupon
              # ID of an existing discount on the object (or one of its ancestors) to reuse.
              attr_accessor :discount
              # Details to determine how long the discount should be applied for.
              attr_accessor :discount_end
              # ID of the promotion code to create a new discount for.
              attr_accessor :promotion_code

              def initialize(coupon: nil, discount: nil, discount_end: nil, promotion_code: nil)
                @coupon = coupon
                @discount = discount
                @discount_end = discount_end
                @promotion_code = promotion_code
              end
            end

            class Trial < Stripe::RequestParams
              # List of price IDs which, if present on the subscription following a paid trial, constitute opting-in to the paid trial. Currently only supports at most 1 price ID.
              attr_accessor :converts_to
              # Determines the type of trial for this item.
              attr_accessor :type

              def initialize(converts_to: nil, type: nil)
                @converts_to = converts_to
                @type = type
              end
            end
            # If an item with the `price` already exists, passing this will override the `discounts` array on the subscription item that matches that price. Otherwise, the `items` array is cleared and a single new item is added with the supplied `discounts`.
            attr_accessor :discounts
            # If an item with the `price` already exists, passing this will override the `metadata` on the subscription item that matches that price. Otherwise, the `items` array is cleared and a single new item is added with the supplied `metadata`.
            attr_accessor :metadata
            # The ID of the price object.
            attr_accessor :price
            # If an item with the `price` already exists, passing this will override the quantity on the subscription item that matches that price. Otherwise, the `items` array is cleared and a single new item is added with the supplied `quantity`.
            attr_accessor :quantity
            # If an item with the `price` already exists, passing this will override the `tax_rates` array on the subscription item that matches that price. Otherwise, the `items` array is cleared and a single new item is added with the supplied `tax_rates`.
            attr_accessor :tax_rates
            # If an item with the `price` already exists, passing this will override the `trial` configuration on the subscription item that matches that price. Otherwise, the `items` array is cleared and a single new item is added with the supplied `trial`.
            attr_accessor :trial

            def initialize(
              discounts: nil,
              metadata: nil,
              price: nil,
              quantity: nil,
              tax_rates: nil,
              trial: nil
            )
              @discounts = discounts
              @metadata = metadata
              @price = price
              @quantity = quantity
              @tax_rates = tax_rates
              @trial = trial
            end
          end
          # Details for the `add_discount` type.
          attr_accessor :add_discount
          # Details for the `add_item` type.
          attr_accessor :add_item
          # Details for the `add_metadata` type: specify a hash of key-value pairs.
          attr_accessor :add_metadata
          # Details for the `remove_discount` type.
          attr_accessor :remove_discount
          # Details for the `remove_item` type.
          attr_accessor :remove_item
          # Details for the `remove_metadata` type: specify an array of metadata keys.
          attr_accessor :remove_metadata
          # Details for the `set_discounts` type.
          attr_accessor :set_discounts
          # Details for the `set_items` type.
          attr_accessor :set_items
          # Details for the `set_metadata` type: specify an array of key-value pairs.
          attr_accessor :set_metadata
          # The type of action the quote line performs.
          attr_accessor :type

          def initialize(
            add_discount: nil,
            add_item: nil,
            add_metadata: nil,
            remove_discount: nil,
            remove_item: nil,
            remove_metadata: nil,
            set_discounts: nil,
            set_items: nil,
            set_metadata: nil,
            type: nil
          )
            @add_discount = add_discount
            @add_item = add_item
            @add_metadata = add_metadata
            @remove_discount = remove_discount
            @remove_item = remove_item
            @remove_metadata = remove_metadata
            @set_discounts = set_discounts
            @set_items = set_items
            @set_metadata = set_metadata
            @type = type
          end
        end

        class AppliesTo < Stripe::RequestParams
          # A custom string that identifies a new subscription schedule being created upon quote acceptance. All quote lines with the same `new_reference` field will be applied to the creation of a new subscription schedule.
          attr_accessor :new_reference
          # The ID of the schedule the line applies to.
          attr_accessor :subscription_schedule
          # Describes whether the quote line is affecting a new schedule or an existing schedule.
          attr_accessor :type

          def initialize(new_reference: nil, subscription_schedule: nil, type: nil)
            @new_reference = new_reference
            @subscription_schedule = subscription_schedule
            @type = type
          end
        end

        class CancelSubscriptionSchedule < Stripe::RequestParams
          # Timestamp helper to cancel the underlying schedule on the accompanying line's start date. Must be set to `line_starts_at`.
          attr_accessor :cancel_at
          # If the subscription schedule is `active`, indicates if a final invoice will be generated that contains any un-invoiced metered usage and new/pending proration invoice items. Boolean that defaults to `true`.
          attr_accessor :invoice_now
          # If the subscription schedule is `active`, indicates if the cancellation should be prorated. Boolean that defaults to `true`.
          attr_accessor :prorate

          def initialize(cancel_at: nil, invoice_now: nil, prorate: nil)
            @cancel_at = cancel_at
            @invoice_now = invoice_now
            @prorate = prorate
          end
        end

        class EndsAt < Stripe::RequestParams
          class DiscountEnd < Stripe::RequestParams
            # The ID of a specific discount.
            attr_accessor :discount

            def initialize(discount: nil)
              @discount = discount
            end
          end

          class Duration < Stripe::RequestParams
            # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
            attr_accessor :interval
            # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
            attr_accessor :interval_count

            def initialize(interval: nil, interval_count: nil)
              @interval = interval
              @interval_count = interval_count
            end
          end
          # Use the `end` time of a given discount.
          attr_accessor :discount_end
          # Time span for the quote line starting from the `starts_at` date.
          attr_accessor :duration
          # A precise Unix timestamp.
          attr_accessor :timestamp
          # Select a way to pass in `ends_at`.
          attr_accessor :type

          def initialize(discount_end: nil, duration: nil, timestamp: nil, type: nil)
            @discount_end = discount_end
            @duration = duration
            @timestamp = timestamp
            @type = type
          end
        end

        class SetPauseCollection < Stripe::RequestParams
          class Set < Stripe::RequestParams
            # The payment collection behavior for this subscription while paused. One of `keep_as_draft`, `mark_uncollectible`, or `void`.
            attr_accessor :behavior

            def initialize(behavior: nil)
              @behavior = behavior
            end
          end
          # Details of the pause_collection behavior to apply to the amendment.
          attr_accessor :set
          # Determines the type of the pause_collection amendment.
          attr_accessor :type

          def initialize(set: nil, type: nil)
            @set = set
            @type = type
          end
        end

        class StartsAt < Stripe::RequestParams
          class DiscountEnd < Stripe::RequestParams
            # The ID of a specific discount.
            attr_accessor :discount

            def initialize(discount: nil)
              @discount = discount
            end
          end

          class LineEndsAt < Stripe::RequestParams
            # The ID of a quote line.
            attr_accessor :id
            # The position of the previous quote line in the `lines` array after which this line should begin. Indexes start from 0 and must be less than the index of the current line in the array.
            attr_accessor :index

            def initialize(id: nil, index: nil)
              @id = id
              @index = index
            end
          end
          # Use the `end` time of a given discount.
          attr_accessor :discount_end
          # The timestamp the given line ends at.
          attr_accessor :line_ends_at
          # A precise Unix timestamp.
          attr_accessor :timestamp
          # Select a way to pass in `starts_at`.
          attr_accessor :type

          def initialize(discount_end: nil, line_ends_at: nil, timestamp: nil, type: nil)
            @discount_end = discount_end
            @line_ends_at = line_ends_at
            @timestamp = timestamp
            @type = type
          end
        end

        class TrialSettings < Stripe::RequestParams
          class EndBehavior < Stripe::RequestParams
            # Configure how an opt-in following a paid trial is billed when using `billing_behavior: prorate_up_front`.
            attr_accessor :prorate_up_front

            def initialize(prorate_up_front: nil)
              @prorate_up_front = prorate_up_front
            end
          end
          # Defines how the subscription should behave when a trial ends.
          attr_accessor :end_behavior

          def initialize(end_behavior: nil)
            @end_behavior = end_behavior
          end
        end
        # An array of operations the quote line performs.
        attr_accessor :actions
        # Details to identify the subscription schedule the quote line applies to.
        attr_accessor :applies_to
        # For point-in-time quote lines (having no `ends_at` timestamp), this attribute lets you set or remove whether the subscription's billing cycle anchor is reset at the Quote Line `starts_at` timestamp.For time-span based quote lines (having both `starts_at` and `ends_at`), the only valid value is `automatic`, which removes any previously configured billing cycle anchor resets during the window of time spanning the quote line.
        attr_accessor :billing_cycle_anchor
        # A point-in-time operation that cancels an existing subscription schedule at the line's starts_at timestamp. Currently only compatible with `quote_acceptance_date` for `starts_at`. When using cancel_subscription_schedule, the subscription schedule on the quote remains unalterable, except for modifications to the metadata, collection_method or invoice_settings.
        attr_accessor :cancel_subscription_schedule
        # Details to identify the end of the time range modified by the proposed change. If not supplied, the quote line is considered a point-in-time operation that only affects the exact timestamp at `starts_at`, and a restricted set of attributes is supported on the quote line.
        attr_accessor :ends_at
        # The ID of an existing line on the quote.
        attr_accessor :id
        # Changes to how Stripe handles prorations during the quote line's time span. Affects if and how prorations are created when a future phase starts.
        attr_accessor :proration_behavior
        # Defines how to pause collection for the underlying subscription throughout the duration of the amendment.
        attr_accessor :set_pause_collection
        # Timestamp helper to end the underlying schedule early, based on the acompanying line's start or end date.
        attr_accessor :set_schedule_end
        # Details to identify the earliest timestamp where the proposed change should take effect.
        attr_accessor :starts_at
        # Settings related to subscription trials.
        attr_accessor :trial_settings

        def initialize(
          actions: nil,
          applies_to: nil,
          billing_cycle_anchor: nil,
          cancel_subscription_schedule: nil,
          ends_at: nil,
          id: nil,
          proration_behavior: nil,
          set_pause_collection: nil,
          set_schedule_end: nil,
          starts_at: nil,
          trial_settings: nil
        )
          @actions = actions
          @applies_to = applies_to
          @billing_cycle_anchor = billing_cycle_anchor
          @cancel_subscription_schedule = cancel_subscription_schedule
          @ends_at = ends_at
          @id = id
          @proration_behavior = proration_behavior
          @set_pause_collection = set_pause_collection
          @set_schedule_end = set_schedule_end
          @starts_at = starts_at
          @trial_settings = trial_settings
        end
      end

      class LineItem < Stripe::RequestParams
        class Discount < Stripe::RequestParams
          class DiscountEnd < Stripe::RequestParams
            class Duration < Stripe::RequestParams
              # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
              attr_accessor :interval
              # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
              attr_accessor :interval_count

              def initialize(interval: nil, interval_count: nil)
                @interval = interval
                @interval_count = interval_count
              end
            end
            # Time span for the redeemed discount.
            attr_accessor :duration
            # A precise Unix timestamp for the discount to end. Must be in the future.
            attr_accessor :timestamp
            # The type of calculation made to determine when the discount ends.
            attr_accessor :type

            def initialize(duration: nil, timestamp: nil, type: nil)
              @duration = duration
              @timestamp = timestamp
              @type = type
            end
          end
          # ID of the coupon to create a new discount for.
          attr_accessor :coupon
          # ID of an existing discount on the object (or one of its ancestors) to reuse.
          attr_accessor :discount
          # Details to determine how long the discount should be applied for.
          attr_accessor :discount_end
          # ID of the promotion code to create a new discount for.
          attr_accessor :promotion_code

          def initialize(coupon: nil, discount: nil, discount_end: nil, promotion_code: nil)
            @coupon = coupon
            @discount = discount
            @discount_end = discount_end
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
          # The ID of the product that this price will belong to.
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
        class BillOnAcceptance < Stripe::RequestParams
          class BillFrom < Stripe::RequestParams
            class LineStartsAt < Stripe::RequestParams
              # The ID of a quote line.
              attr_accessor :id
              # The position of the previous quote line in the `lines` array after which this line should begin. Indexes start from 0 and must be less than the index of the current line in the array.
              attr_accessor :index

              def initialize(id: nil, index: nil)
                @id = id
                @index = index
              end
            end
            # Details of a Quote line to start the bill period from.
            attr_accessor :line_starts_at
            # A precise Unix timestamp.
            attr_accessor :timestamp
            # The type of method to specify the `bill_from` time.
            attr_accessor :type

            def initialize(line_starts_at: nil, timestamp: nil, type: nil)
              @line_starts_at = line_starts_at
              @timestamp = timestamp
              @type = type
            end
          end

          class BillUntil < Stripe::RequestParams
            class Duration < Stripe::RequestParams
              # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
              attr_accessor :interval
              # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
              attr_accessor :interval_count

              def initialize(interval: nil, interval_count: nil)
                @interval = interval
                @interval_count = interval_count
              end
            end

            class LineEndsAt < Stripe::RequestParams
              # The ID of a quote line.
              attr_accessor :id
              # The position of the previous quote line in the `lines` array after which this line should begin. Indexes start from 0 and must be less than the index of the current line in the array.
              attr_accessor :index

              def initialize(id: nil, index: nil)
                @id = id
                @index = index
              end
            end
            # Details of the duration over which to bill.
            attr_accessor :duration
            # Details of a Quote line item from which to bill until.
            attr_accessor :line_ends_at
            # A precise Unix timestamp.
            attr_accessor :timestamp
            # The type of method to specify the `bill_until` time.
            attr_accessor :type

            def initialize(duration: nil, line_ends_at: nil, timestamp: nil, type: nil)
              @duration = duration
              @line_ends_at = line_ends_at
              @timestamp = timestamp
              @type = type
            end
          end
          # The start of the period to bill from when the Quote is accepted.
          attr_accessor :bill_from
          # The end of the period to bill until when the Quote is accepted.
          attr_accessor :bill_until

          def initialize(bill_from: nil, bill_until: nil)
            @bill_from = bill_from
            @bill_until = bill_until
          end
        end

        class Prebilling < Stripe::RequestParams
          # This is used to determine the number of billing cycles to prebill.
          attr_accessor :iterations

          def initialize(iterations: nil)
            @iterations = iterations
          end
        end
        # Describes the period to bill for upon accepting the quote.
        attr_accessor :bill_on_acceptance
        # Configures when the subscription schedule generates prorations for phase transitions. Possible values are `prorate_on_next_phase` or `prorate_up_front` with the default being `prorate_on_next_phase`. `prorate_on_next_phase` will apply phase changes and generate prorations at transition time. `prorate_up_front` will bill for all phases within the current billing cycle up front.
        attr_accessor :billing_behavior
        # When specified as `reset`, the subscription will always start a new billing period when the quote is accepted.
        attr_accessor :billing_cycle_anchor
        # The subscription's description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
        attr_accessor :description
        # When creating a new subscription, the date of which the subscription schedule will start after the quote is accepted. When updating a subscription, the date of which the subscription will be updated using a subscription schedule. The special value `current_period_end` can be provided to update a subscription at the end of its current period. The `effective_date` is ignored if it is in the past when the quote is accepted.
        attr_accessor :effective_date
        # Behavior of the subscription schedule and underlying subscription when it ends.
        attr_accessor :end_behavior
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that will set metadata on the subscription or subscription schedule when the quote is accepted. If a recurring price is included in `line_items`, this field will be passed to the resulting subscription's `metadata` field. If `subscription_data.effective_date` is used, this field will be passed to the resulting subscription schedule's `phases.metadata` field. Unlike object-level metadata, this field is declarative. Updates will clear prior values.
        attr_accessor :metadata
        # If specified, the invoicing for the given billing cycle iterations will be processed when the quote is accepted. Cannot be used with `effective_date`.
        attr_accessor :prebilling
        # Determines how to handle [prorations](https://stripe.com/docs/subscriptions/billing-cycle#prorations). When creating a subscription, valid values are `create_prorations` or `none`.
        #
        # When updating a subscription, valid values are `create_prorations`, `none`, or `always_invoice`.
        #
        # Passing `create_prorations` will cause proration invoice items to be created when applicable. These proration items will only be invoiced immediately under [certain conditions](https://stripe.com/docs/subscriptions/upgrading-downgrading#immediate-payment). In order to always invoice immediately for prorations, pass `always_invoice`.
        #
        # Prorations can be disabled by passing `none`.
        attr_accessor :proration_behavior
        # Integer representing the number of trial period days before the customer is charged for the first time.
        attr_accessor :trial_period_days

        def initialize(
          bill_on_acceptance: nil,
          billing_behavior: nil,
          billing_cycle_anchor: nil,
          description: nil,
          effective_date: nil,
          end_behavior: nil,
          metadata: nil,
          prebilling: nil,
          proration_behavior: nil,
          trial_period_days: nil
        )
          @bill_on_acceptance = bill_on_acceptance
          @billing_behavior = billing_behavior
          @billing_cycle_anchor = billing_cycle_anchor
          @description = description
          @effective_date = effective_date
          @end_behavior = end_behavior
          @metadata = metadata
          @prebilling = prebilling
          @proration_behavior = proration_behavior
          @trial_period_days = trial_period_days
        end
      end

      class SubscriptionDataOverride < Stripe::RequestParams
        class AppliesTo < Stripe::RequestParams
          # A custom string that identifies a new subscription schedule being created upon quote acceptance. All quote lines with the same `new_reference` field will be applied to the creation of a new subscription schedule.
          attr_accessor :new_reference
          # The ID of the schedule the line applies to.
          attr_accessor :subscription_schedule
          # Describes whether the quote line is affecting a new schedule or an existing schedule.
          attr_accessor :type

          def initialize(new_reference: nil, subscription_schedule: nil, type: nil)
            @new_reference = new_reference
            @subscription_schedule = subscription_schedule
            @type = type
          end
        end

        class BillOnAcceptance < Stripe::RequestParams
          class BillFrom < Stripe::RequestParams
            class LineStartsAt < Stripe::RequestParams
              # The ID of a quote line.
              attr_accessor :id
              # The position of the previous quote line in the `lines` array after which this line should begin. Indexes start from 0 and must be less than the index of the current line in the array.
              attr_accessor :index

              def initialize(id: nil, index: nil)
                @id = id
                @index = index
              end
            end
            # Details of a Quote line to start the bill period from.
            attr_accessor :line_starts_at
            # A precise Unix timestamp.
            attr_accessor :timestamp
            # The type of method to specify the `bill_from` time.
            attr_accessor :type

            def initialize(line_starts_at: nil, timestamp: nil, type: nil)
              @line_starts_at = line_starts_at
              @timestamp = timestamp
              @type = type
            end
          end

          class BillUntil < Stripe::RequestParams
            class Duration < Stripe::RequestParams
              # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
              attr_accessor :interval
              # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
              attr_accessor :interval_count

              def initialize(interval: nil, interval_count: nil)
                @interval = interval
                @interval_count = interval_count
              end
            end

            class LineEndsAt < Stripe::RequestParams
              # The ID of a quote line.
              attr_accessor :id
              # The position of the previous quote line in the `lines` array after which this line should begin. Indexes start from 0 and must be less than the index of the current line in the array.
              attr_accessor :index

              def initialize(id: nil, index: nil)
                @id = id
                @index = index
              end
            end
            # Details of the duration over which to bill.
            attr_accessor :duration
            # Details of a Quote line item from which to bill until.
            attr_accessor :line_ends_at
            # A precise Unix timestamp.
            attr_accessor :timestamp
            # The type of method to specify the `bill_until` time.
            attr_accessor :type

            def initialize(duration: nil, line_ends_at: nil, timestamp: nil, type: nil)
              @duration = duration
              @line_ends_at = line_ends_at
              @timestamp = timestamp
              @type = type
            end
          end
          # The start of the period to bill from when the Quote is accepted.
          attr_accessor :bill_from
          # The end of the period to bill until when the Quote is accepted.
          attr_accessor :bill_until

          def initialize(bill_from: nil, bill_until: nil)
            @bill_from = bill_from
            @bill_until = bill_until
          end
        end
        # Whether the override applies to an existing Subscription Schedule or a new Subscription Schedule.
        attr_accessor :applies_to
        # Describes the period to bill for upon accepting the quote.
        attr_accessor :bill_on_acceptance
        # Configures when the subscription schedule generates prorations for phase transitions. Possible values are `prorate_on_next_phase` or `prorate_up_front` with the default being `prorate_on_next_phase`. `prorate_on_next_phase` will apply phase changes and generate prorations at transition time. `prorate_up_front` will bill for all phases within the current billing cycle up front.
        attr_accessor :billing_behavior
        # The customer the Subscription Data override applies to.
        attr_accessor :customer
        # The subscription's description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
        attr_accessor :description
        # Behavior of the subscription schedule and underlying subscription when it ends.
        attr_accessor :end_behavior
        # Determines how to handle [prorations](https://stripe.com/docs/subscriptions/billing-cycle#prorations). When creating a subscription, valid values are `create_prorations` or `none`.
        #
        # When updating a subscription, valid values are `create_prorations`, `none`, or `always_invoice`.
        #
        # Passing `create_prorations` will cause proration invoice items to be created when applicable. These proration items will only be invoiced immediately under [certain conditions](https://stripe.com/docs/subscriptions/upgrading-downgrading#immediate-payment). In order to always invoice immediately for prorations, pass `always_invoice`.
        #
        # Prorations can be disabled by passing `none`.
        attr_accessor :proration_behavior

        def initialize(
          applies_to: nil,
          bill_on_acceptance: nil,
          billing_behavior: nil,
          customer: nil,
          description: nil,
          end_behavior: nil,
          proration_behavior: nil
        )
          @applies_to = applies_to
          @bill_on_acceptance = bill_on_acceptance
          @billing_behavior = billing_behavior
          @customer = customer
          @description = description
          @end_behavior = end_behavior
          @proration_behavior = proration_behavior
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
      # Set to true to allow quote lines to have `starts_at` in the past if collection is paused between `starts_at` and now.
      attr_accessor :allow_backdated_lines
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
      # A list of [quote lines](https://docs.stripe.com/api/quote_lines) on the quote. These lines describe changes, in the order provided, that will be used to create new subscription schedules or update existing subscription schedules when the quote is accepted.
      attr_accessor :lines
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # The account on behalf of which to charge.
      attr_accessor :on_behalf_of
      # When creating a subscription or subscription schedule, the specified configuration data will be used. There must be at least one line item with a recurring price for a subscription or subscription schedule to be created. A subscription schedule is created if `subscription_data[effective_date]` is present and in the future, otherwise a subscription is created.
      attr_accessor :subscription_data
      # List representing overrides for `subscription_data` configurations for specific subscription schedules.
      attr_accessor :subscription_data_overrides
      # The data with which to automatically create a Transfer for each of the invoices.
      attr_accessor :transfer_data

      def initialize(
        allow_backdated_lines: nil,
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
        lines: nil,
        metadata: nil,
        on_behalf_of: nil,
        subscription_data: nil,
        subscription_data_overrides: nil,
        transfer_data: nil
      )
        @allow_backdated_lines = allow_backdated_lines
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
        @lines = lines
        @metadata = metadata
        @on_behalf_of = on_behalf_of
        @subscription_data = subscription_data
        @subscription_data_overrides = subscription_data_overrides
        @transfer_data = transfer_data
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

    class MarkDraftParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

    class MarkStaleParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Reason the Quote is being marked stale.
      attr_accessor :reason

      def initialize(expand: nil, reason: nil)
        @expand = expand
        @reason = reason
      end
    end

    class ReestimateParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

    class PdfParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

    class ListPreviewInvoiceLinesParams < Stripe::RequestParams
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

    # Accepts the specified quote.
    def accept(quote, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/quotes/%<quote>s/accept", { quote: CGI.escape(quote) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Cancels the quote.
    def cancel(quote, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/quotes/%<quote>s/cancel", { quote: CGI.escape(quote) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # A quote models prices and services for a customer. Default options for header, description, footer, and expires_at can be set in the dashboard via the [quote template](https://dashboard.stripe.com/settings/billing/quote).
    def create(params = {}, opts = {})
      request(method: :post, path: "/v1/quotes", params: params, opts: opts, base_address: :api)
    end

    # Finalizes the quote.
    def finalize_quote(quote, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/quotes/%<quote>s/finalize", { quote: CGI.escape(quote) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Returns a list of your quotes.
    def list(params = {}, opts = {})
      request(method: :get, path: "/v1/quotes", params: params, opts: opts, base_address: :api)
    end

    # Preview the invoice line items that would be generated by accepting the quote.
    def list_preview_invoice_lines(quote, preview_invoice, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/quotes/%<quote>s/preview_invoices/%<preview_invoice>s/lines", { quote: CGI.escape(quote), preview_invoice: CGI.escape(preview_invoice) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Converts a stale quote to draft.
    def mark_draft(quote, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/quotes/%<quote>s/mark_draft", { quote: CGI.escape(quote) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Converts a draft or open quote to stale.
    def mark_stale(quote, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/quotes/%<quote>s/mark_stale", { quote: CGI.escape(quote) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Download the PDF for a finalized quote. Explanation for special handling can be found [here](https://docs.stripe.com/quotes/overview#quote_pdf)
    def pdf(quote, params = {}, opts = {}, &read_body_chunk_block)
      opts = { api_base: APIRequestor.active_requestor.config.uploads_base }.merge(opts)
      request_stream(
        method: :get,
        path: format("/v1/quotes/%<quote>s/pdf", { quote: CGI.escape(quote) }),
        params: params,
        opts: opts,
        base_address: :files,
        &read_body_chunk_block
      )
    end

    # Recompute the upcoming invoice estimate for the quote.
    def reestimate(quote, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/quotes/%<quote>s/reestimate", { quote: CGI.escape(quote) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieves the quote with the given ID.
    def retrieve(quote, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/quotes/%<quote>s", { quote: CGI.escape(quote) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # A quote models prices and services for a customer.
    def update(quote, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/quotes/%<quote>s", { quote: CGI.escape(quote) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
