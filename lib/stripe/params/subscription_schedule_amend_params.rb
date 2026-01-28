# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class SubscriptionScheduleAmendParams < ::Stripe::RequestParams
    class Amendment < ::Stripe::RequestParams
      class AmendmentEnd < ::Stripe::RequestParams
        class DiscountEnd < ::Stripe::RequestParams
          # The ID of a specific discount.
          attr_accessor :discount

          def initialize(discount: nil)
            @discount = discount
          end
        end

        class Duration < ::Stripe::RequestParams
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
        # Time span for the amendment starting from the `amendment_start`.
        attr_accessor :duration
        # A precise Unix timestamp for the amendment to end. Must be after the `amendment_start`.
        attr_accessor :timestamp
        # Select one of three ways to pass the `amendment_end`.
        attr_accessor :type

        def initialize(discount_end: nil, duration: nil, timestamp: nil, type: nil)
          @discount_end = discount_end
          @duration = duration
          @timestamp = timestamp
          @type = type
        end
      end

      class AmendmentStart < ::Stripe::RequestParams
        class AmendmentEnd < ::Stripe::RequestParams
          # The position of the previous amendment in the `amendments` array after which this amendment should begin. Indexes start from 0 and must be less than the index of the current amendment in the array.
          attr_accessor :index

          def initialize(index: nil)
            @index = index
          end
        end

        class DiscountEnd < ::Stripe::RequestParams
          # The ID of a specific discount.
          attr_accessor :discount

          def initialize(discount: nil)
            @discount = discount
          end
        end
        # Details of another amendment in the same array, immediately after which this amendment should begin.
        attr_accessor :amendment_end
        # Use the `end` time of a given discount.
        attr_accessor :discount_end
        # A precise Unix timestamp for the amendment to start.
        attr_accessor :timestamp
        # Select one of three ways to pass the `amendment_start`.
        attr_accessor :type

        def initialize(amendment_end: nil, discount_end: nil, timestamp: nil, type: nil)
          @amendment_end = amendment_end
          @discount_end = discount_end
          @timestamp = timestamp
          @type = type
        end
      end

      class BillingSchedulesAction < ::Stripe::RequestParams
        class AppliesTo < ::Stripe::RequestParams
          # The ID of the price object.
          attr_accessor :price
          # Controls which subscription items the billing schedule applies to.
          attr_accessor :type

          def initialize(price: nil, type: nil)
            @price = price
            @type = type
          end
        end
        # Specify which subscription items the billing schedule applies to.
        attr_accessor :applies_to
        # Select the action.
        attr_accessor :type

        def initialize(applies_to: nil, type: nil)
          @applies_to = applies_to
          @type = type
        end
      end

      class DiscountAction < ::Stripe::RequestParams
        class Add < ::Stripe::RequestParams
          class DiscountEnd < ::Stripe::RequestParams
            # The type of calculation made to determine when the discount ends.
            attr_accessor :type

            def initialize(type: nil)
              @type = type
            end
          end

          class Settings < ::Stripe::RequestParams
            class ServicePeriodAnchorConfig < ::Stripe::RequestParams
              class Custom < ::Stripe::RequestParams
                # The day of the month the anchor should be. Ranges from 1 to 31.
                attr_accessor :day_of_month
                # The hour of the day the anchor should be. Ranges from 0 to 23.
                attr_accessor :hour
                # The minute of the hour the anchor should be. Ranges from 0 to 59.
                attr_accessor :minute
                # The month to start full cycle periods. Ranges from 1 to 12.
                attr_accessor :month
                # The second of the minute the anchor should be. Ranges from 0 to 59.
                attr_accessor :second

                def initialize(day_of_month: nil, hour: nil, minute: nil, month: nil, second: nil)
                  @day_of_month = day_of_month
                  @hour = hour
                  @minute = minute
                  @month = month
                  @second = second
                end
              end
              # Anchor the service period to a custom date. Type must be `custom` to specify.
              attr_accessor :custom
              # The type of service period anchor config. Defaults to `inherit` if omitted.
              attr_accessor :type

              def initialize(custom: nil, type: nil)
                @custom = custom
                @type = type
              end
            end
            # Configures service period cycle anchoring.
            attr_accessor :service_period_anchor_config
            # The start date of the discount's service period when applying a coupon or promotion code with a service period duration. Defaults to `amendment_start` if omitted.
            attr_accessor :start_date

            def initialize(service_period_anchor_config: nil, start_date: nil)
              @service_period_anchor_config = service_period_anchor_config
              @start_date = start_date
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
          # Settings for discount application including service period anchoring.
          attr_accessor :settings

          def initialize(
            coupon: nil,
            discount: nil,
            discount_end: nil,
            index: nil,
            promotion_code: nil,
            settings: nil
          )
            @coupon = coupon
            @discount = discount
            @discount_end = discount_end
            @index = index
            @promotion_code = promotion_code
            @settings = settings
          end
        end

        class Remove < ::Stripe::RequestParams
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

        class Set < ::Stripe::RequestParams
          class Settings < ::Stripe::RequestParams
            class ServicePeriodAnchorConfig < ::Stripe::RequestParams
              class Custom < ::Stripe::RequestParams
                # The day of the month the anchor should be. Ranges from 1 to 31.
                attr_accessor :day_of_month
                # The hour of the day the anchor should be. Ranges from 0 to 23.
                attr_accessor :hour
                # The minute of the hour the anchor should be. Ranges from 0 to 59.
                attr_accessor :minute
                # The month to start full cycle periods. Ranges from 1 to 12.
                attr_accessor :month
                # The second of the minute the anchor should be. Ranges from 0 to 59.
                attr_accessor :second

                def initialize(day_of_month: nil, hour: nil, minute: nil, month: nil, second: nil)
                  @day_of_month = day_of_month
                  @hour = hour
                  @minute = minute
                  @month = month
                  @second = second
                end
              end
              # Anchor the service period to a custom date. Type must be `custom` to specify.
              attr_accessor :custom
              # The type of service period anchor config. Defaults to `inherit` if omitted.
              attr_accessor :type

              def initialize(custom: nil, type: nil)
                @custom = custom
                @type = type
              end
            end
            # Configures service period cycle anchoring.
            attr_accessor :service_period_anchor_config
            # The start date of the discount's service period when applying a coupon or promotion code with a service period duration. Defaults to `amendment_start` if omitted.
            attr_accessor :start_date

            def initialize(service_period_anchor_config: nil, start_date: nil)
              @service_period_anchor_config = service_period_anchor_config
              @start_date = start_date
            end
          end
          # The coupon code to replace the `discounts` array with.
          attr_accessor :coupon
          # An ID of an existing discount to replace the `discounts` array with.
          attr_accessor :discount
          # An ID of an existing promotion code to replace the `discounts` array with.
          attr_accessor :promotion_code
          # Settings for discount application including service period anchoring.
          attr_accessor :settings

          def initialize(coupon: nil, discount: nil, promotion_code: nil, settings: nil)
            @coupon = coupon
            @discount = discount
            @promotion_code = promotion_code
            @settings = settings
          end
        end
        # Details of the discount to add.
        attr_accessor :add
        # Details of the discount to remove.
        attr_accessor :remove
        # Details of the discount to replace the existing discounts with.
        attr_accessor :set
        # Determines the type of discount action.
        attr_accessor :type

        def initialize(add: nil, remove: nil, set: nil, type: nil)
          @add = add
          @remove = remove
          @set = set
          @type = type
        end
      end

      class ItemAction < ::Stripe::RequestParams
        class Add < ::Stripe::RequestParams
          class Discount < ::Stripe::RequestParams
            class DiscountEnd < ::Stripe::RequestParams
              class Duration < ::Stripe::RequestParams
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

            class Settings < ::Stripe::RequestParams
              class ServicePeriodAnchorConfig < ::Stripe::RequestParams
                class Custom < ::Stripe::RequestParams
                  # The day of the month the anchor should be. Ranges from 1 to 31.
                  attr_accessor :day_of_month
                  # The hour of the day the anchor should be. Ranges from 0 to 23.
                  attr_accessor :hour
                  # The minute of the hour the anchor should be. Ranges from 0 to 59.
                  attr_accessor :minute
                  # The month to start full cycle periods. Ranges from 1 to 12.
                  attr_accessor :month
                  # The second of the minute the anchor should be. Ranges from 0 to 59.
                  attr_accessor :second

                  def initialize(day_of_month: nil, hour: nil, minute: nil, month: nil, second: nil)
                    @day_of_month = day_of_month
                    @hour = hour
                    @minute = minute
                    @month = month
                    @second = second
                  end
                end
                # Anchor the service period to a custom date. Type must be `custom` to specify.
                attr_accessor :custom
                # The type of service period anchor config. Defaults to `inherit` if omitted.
                attr_accessor :type

                def initialize(custom: nil, type: nil)
                  @custom = custom
                  @type = type
                end
              end
              # Configures service period cycle anchoring.
              attr_accessor :service_period_anchor_config
              # The start date of the discount's service period when applying a coupon or promotion code with a service period duration. Defaults to `amendment_start` if omitted.
              attr_accessor :start_date

              def initialize(service_period_anchor_config: nil, start_date: nil)
                @service_period_anchor_config = service_period_anchor_config
                @start_date = start_date
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
            # Settings for discount application including service period anchoring.
            attr_accessor :settings

            def initialize(
              coupon: nil,
              discount: nil,
              discount_end: nil,
              promotion_code: nil,
              settings: nil
            )
              @coupon = coupon
              @discount = discount
              @discount_end = discount_end
              @promotion_code = promotion_code
              @settings = settings
            end
          end

          class Trial < ::Stripe::RequestParams
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
          # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
          attr_accessor :metadata
          # The ID of the price object.
          attr_accessor :price
          # Quantity for this item.
          attr_accessor :quantity
          # The tax rates that apply to this subscription item. When set, the `default_tax_rates` on the subscription do not apply to this `subscription_item`.
          attr_accessor :tax_rates
          # Options that configure the trial on the subscription item.
          attr_accessor :trial
          # The ID of the trial offer to apply to the configuration item.
          attr_accessor :trial_offer

          def initialize(
            discounts: nil,
            metadata: nil,
            price: nil,
            quantity: nil,
            tax_rates: nil,
            trial: nil,
            trial_offer: nil
          )
            @discounts = discounts
            @metadata = metadata
            @price = price
            @quantity = quantity
            @tax_rates = tax_rates
            @trial = trial
            @trial_offer = trial_offer
          end
        end

        class Remove < ::Stripe::RequestParams
          # ID of a price to remove.
          attr_accessor :price

          def initialize(price: nil)
            @price = price
          end
        end

        class Set < ::Stripe::RequestParams
          class Discount < ::Stripe::RequestParams
            class DiscountEnd < ::Stripe::RequestParams
              class Duration < ::Stripe::RequestParams
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

            class Settings < ::Stripe::RequestParams
              class ServicePeriodAnchorConfig < ::Stripe::RequestParams
                class Custom < ::Stripe::RequestParams
                  # The day of the month the anchor should be. Ranges from 1 to 31.
                  attr_accessor :day_of_month
                  # The hour of the day the anchor should be. Ranges from 0 to 23.
                  attr_accessor :hour
                  # The minute of the hour the anchor should be. Ranges from 0 to 59.
                  attr_accessor :minute
                  # The month to start full cycle periods. Ranges from 1 to 12.
                  attr_accessor :month
                  # The second of the minute the anchor should be. Ranges from 0 to 59.
                  attr_accessor :second

                  def initialize(day_of_month: nil, hour: nil, minute: nil, month: nil, second: nil)
                    @day_of_month = day_of_month
                    @hour = hour
                    @minute = minute
                    @month = month
                    @second = second
                  end
                end
                # Anchor the service period to a custom date. Type must be `custom` to specify.
                attr_accessor :custom
                # The type of service period anchor config. Defaults to `inherit` if omitted.
                attr_accessor :type

                def initialize(custom: nil, type: nil)
                  @custom = custom
                  @type = type
                end
              end
              # Configures service period cycle anchoring.
              attr_accessor :service_period_anchor_config
              # The start date of the discount's service period when applying a coupon or promotion code with a service period duration. Defaults to `amendment_start` if omitted.
              attr_accessor :start_date

              def initialize(service_period_anchor_config: nil, start_date: nil)
                @service_period_anchor_config = service_period_anchor_config
                @start_date = start_date
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
            # Settings for discount application including service period anchoring.
            attr_accessor :settings

            def initialize(
              coupon: nil,
              discount: nil,
              discount_end: nil,
              promotion_code: nil,
              settings: nil
            )
              @coupon = coupon
              @discount = discount
              @discount_end = discount_end
              @promotion_code = promotion_code
              @settings = settings
            end
          end

          class Trial < ::Stripe::RequestParams
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
          # The ID of the trial offer to apply to the configuration item.
          attr_accessor :trial_offer

          def initialize(
            discounts: nil,
            metadata: nil,
            price: nil,
            quantity: nil,
            tax_rates: nil,
            trial: nil,
            trial_offer: nil
          )
            @discounts = discounts
            @metadata = metadata
            @price = price
            @quantity = quantity
            @tax_rates = tax_rates
            @trial = trial
            @trial_offer = trial_offer
          end
        end
        # Details of the subscription item to add. If an item with the same `price` exists, it will be replaced by this new item. Otherwise, it adds the new item.
        attr_accessor :add
        # Details of the subscription item to remove.
        attr_accessor :remove
        # Details of the subscription item to replace the existing items with. If an item with the `set[price]` already exists, the `items` array is not cleared. Instead, all of the other `set` properties that are passed in this request will replace the existing values for the configuration item.
        attr_accessor :set
        # Determines the type of item action.
        attr_accessor :type

        def initialize(add: nil, remove: nil, set: nil, type: nil)
          @add = add
          @remove = remove
          @set = set
          @type = type
        end
      end

      class MetadataAction < ::Stripe::RequestParams
        # Key-value pairs to add to schedule phase metadata. These values will merge with existing schedule phase metadata.
        attr_accessor :add
        # Keys to remove from schedule phase metadata.
        attr_accessor :remove
        # Key-value pairs to set as schedule phase metadata. Existing schedule phase metadata will be overwritten.
        attr_accessor :set
        # Select one of three ways to update phase-level `metadata` on subscription schedules.
        attr_accessor :type

        def initialize(add: nil, remove: nil, set: nil, type: nil)
          @add = add
          @remove = remove
          @set = set
          @type = type
        end
      end

      class SetPauseCollection < ::Stripe::RequestParams
        class Set < ::Stripe::RequestParams
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

      class TrialSettings < ::Stripe::RequestParams
        class EndBehavior < ::Stripe::RequestParams
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
      # Details to identify the end of the time range modified by the proposed change. If not supplied, the amendment is considered a point-in-time operation that only affects the exact timestamp at `amendment_start`, and a restricted set of attributes is supported on the amendment.
      attr_accessor :amendment_end
      # Details to identify the earliest timestamp where the proposed change should take effect.
      attr_accessor :amendment_start
      # For point-in-time amendments (having no `amendment_end`), this attribute lets you set or remove whether the subscription's billing cycle anchor is reset at the `amendment_start` timestamp.For time-span based amendments (having both `amendment_start` and `amendment_end`), the only value valid is `automatic`, which removes any previously configured billing cycle anchor resets scheduled to occur during the window of time spanned by the amendment.
      attr_accessor :billing_cycle_anchor
      # Actions to apply to the billing schedules.
      attr_accessor :billing_schedules_actions
      # Changes to the coupons being redeemed or discounts being applied during the amendment time span.
      attr_accessor :discount_actions
      # Configures how the subscription schedule handles billing for phase transitions.
      attr_accessor :effective_at
      # Changes to the subscription items during the amendment time span.
      attr_accessor :item_actions
      # Instructions for how to modify phase metadata
      attr_accessor :metadata_actions
      # Changes to how Stripe handles prorations during the amendment time span. Affects if and how prorations are created when a future phase starts. In cases where the amendment changes the currently active phase, it is used to determine whether or how to prorate now, at the time of the request. Also supported as a point-in-time operation when `amendment_end` is `null`.
      attr_accessor :proration_behavior
      # Defines how to pause collection for the underlying subscription throughout the duration of the amendment.
      attr_accessor :set_pause_collection
      # Ends the subscription schedule early as dictated by either the accompanying amendment's start or end.
      attr_accessor :set_schedule_end
      # Settings related to subscription trials.
      attr_accessor :trial_settings

      def initialize(
        amendment_end: nil,
        amendment_start: nil,
        billing_cycle_anchor: nil,
        billing_schedules_actions: nil,
        discount_actions: nil,
        effective_at: nil,
        item_actions: nil,
        metadata_actions: nil,
        proration_behavior: nil,
        set_pause_collection: nil,
        set_schedule_end: nil,
        trial_settings: nil
      )
        @amendment_end = amendment_end
        @amendment_start = amendment_start
        @billing_cycle_anchor = billing_cycle_anchor
        @billing_schedules_actions = billing_schedules_actions
        @discount_actions = discount_actions
        @effective_at = effective_at
        @item_actions = item_actions
        @metadata_actions = metadata_actions
        @proration_behavior = proration_behavior
        @set_pause_collection = set_pause_collection
        @set_schedule_end = set_schedule_end
        @trial_settings = trial_settings
      end
    end

    class Prebilling < ::Stripe::RequestParams
      class BillFrom < ::Stripe::RequestParams
        class AmendmentStart < ::Stripe::RequestParams
          # The position of the amendment in the `amendments` array with which prebilling should begin. Indexes start from 0 and must be less than the total number of supplied amendments.
          attr_accessor :index

          def initialize(index: nil)
            @index = index
          end
        end
        # Start the prebilled period when a specified amendment begins.
        attr_accessor :amendment_start
        # Start the prebilled period at a precise integer timestamp, starting from the Unix epoch.
        attr_accessor :timestamp
        # Select one of several ways to pass the `bill_from` value.
        attr_accessor :type

        def initialize(amendment_start: nil, timestamp: nil, type: nil)
          @amendment_start = amendment_start
          @timestamp = timestamp
          @type = type
        end
      end

      class BillUntil < ::Stripe::RequestParams
        class AmendmentEnd < ::Stripe::RequestParams
          # The position of the amendment in the `amendments` array at which prebilling should end. Indexes start from 0 and must be less than the total number of supplied amendments.
          attr_accessor :index

          def initialize(index: nil)
            @index = index
          end
        end

        class Duration < ::Stripe::RequestParams
          # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
          attr_accessor :interval
          # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
          attr_accessor :interval_count

          def initialize(interval: nil, interval_count: nil)
            @interval = interval
            @interval_count = interval_count
          end
        end
        # End the prebilled period when a specified amendment ends.
        attr_accessor :amendment_end
        # Time span for prebilling, starting from `bill_from`.
        attr_accessor :duration
        # End the prebilled period at a precise integer timestamp, starting from the Unix epoch.
        attr_accessor :timestamp
        # Select one of several ways to pass the `bill_until` value.
        attr_accessor :type

        def initialize(amendment_end: nil, duration: nil, timestamp: nil, type: nil)
          @amendment_end = amendment_end
          @duration = duration
          @timestamp = timestamp
          @type = type
        end
      end
      # The beginning of the prebilled time period. The default value is `now`.
      attr_accessor :bill_from
      # The end of the prebilled time period.
      attr_accessor :bill_until
      # When the prebilling invoice should be created. The default value is `now`.
      attr_accessor :invoice_at
      # Whether to cancel or preserve `prebilling` if the subscription is updated during the prebilled period. The default value is `reset`.
      attr_accessor :update_behavior

      def initialize(bill_from: nil, bill_until: nil, invoice_at: nil, update_behavior: nil)
        @bill_from = bill_from
        @bill_until = bill_until
        @invoice_at = invoice_at
        @update_behavior = update_behavior
      end
    end

    class ScheduleSettings < ::Stripe::RequestParams
      # Behavior of the subscription schedule and underlying subscription when it ends.
      attr_accessor :end_behavior

      def initialize(end_behavior: nil)
        @end_behavior = end_behavior
      end
    end
    # Changes to apply to the phases of the subscription schedule, in the order provided.
    attr_accessor :amendments
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand
    # Provide any time periods to bill in advance.
    attr_accessor :prebilling
    # In cases where the amendment changes the currently active phase,
    #  specifies if and how to prorate at the time of the request.
    attr_accessor :proration_behavior
    # Changes to apply to the subscription schedule.
    attr_accessor :schedule_settings

    def initialize(
      amendments: nil,
      expand: nil,
      prebilling: nil,
      proration_behavior: nil,
      schedule_settings: nil
    )
      @amendments = amendments
      @expand = expand
      @prebilling = prebilling
      @proration_behavior = proration_behavior
      @schedule_settings = schedule_settings
    end
  end
end
