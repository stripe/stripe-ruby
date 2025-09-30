# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Billing
    class AlertCreateParams < Stripe::RequestParams
      class CreditBalanceThreshold < Stripe::RequestParams
        class Filter < Stripe::RequestParams
          class CreditGrants < Stripe::RequestParams
            class ApplicabilityConfig < Stripe::RequestParams
              class Scope < Stripe::RequestParams
                class BillableItem < Stripe::RequestParams
                  # The billable item ID this credit grant should apply to.
                  attr_accessor :id

                  def initialize(id: nil)
                    @id = id
                  end
                end

                class Price < Stripe::RequestParams
                  # The price ID this credit grant should apply to.
                  attr_accessor :id

                  def initialize(id: nil)
                    @id = id
                  end
                end
                # A list of billable items that the credit grant can apply to. We currently only support metered billable items. Cannot be used in combination with `price_type` or `prices`.
                attr_accessor :billable_items
                # The price type that credit grants can apply to. We currently only support the `metered` price type. Cannot be used in combination with `prices`.
                attr_accessor :price_type
                # A list of prices that the credit grant can apply to. We currently only support the `metered` prices. Cannot be used in combination with `price_type`.
                attr_accessor :prices

                def initialize(billable_items: nil, price_type: nil, prices: nil)
                  @billable_items = billable_items
                  @price_type = price_type
                  @prices = prices
                end
              end
              # Specify the scope of this applicability config.
              attr_accessor :scope

              def initialize(scope: nil)
                @scope = scope
              end
            end
            # The applicability configuration for this credit grants filter.
            attr_accessor :applicability_config

            def initialize(applicability_config: nil)
              @applicability_config = applicability_config
            end
          end
          # The credit grants for which to configure the credit balance alert.
          attr_accessor :credit_grants
          # Limit the scope to this credit balance alert only to this customer.
          attr_accessor :customer
          # What type of filter is being applied to this credit balance alert.
          attr_accessor :type

          def initialize(credit_grants: nil, customer: nil, type: nil)
            @credit_grants = credit_grants
            @customer = customer
            @type = type
          end
        end

        class Lte < Stripe::RequestParams
          class CustomPricingUnit < Stripe::RequestParams
            # The ID of the custom pricing unit.
            attr_accessor :id
            # A positive decimal string representing the amount of the custom pricing unit threshold.
            attr_accessor :value

            def initialize(id: nil, value: nil)
              @id = id
              @value = value
            end
          end

          class Monetary < Stripe::RequestParams
            # Three-letter [ISO code for the currency](https://stripe.com/docs/currencies) of the `value` parameter.
            attr_accessor :currency
            # An integer representing the amount of the threshold.
            attr_accessor :value

            def initialize(currency: nil, value: nil)
              @currency = currency
              @value = value
            end
          end
          # Specify the type of this balance. We currently only support `monetary` billing credits.
          attr_accessor :balance_type
          # The custom pricing unit amount.
          attr_accessor :custom_pricing_unit
          # The monetary amount.
          attr_accessor :monetary

          def initialize(balance_type: nil, custom_pricing_unit: nil, monetary: nil)
            @balance_type = balance_type
            @custom_pricing_unit = custom_pricing_unit
            @monetary = monetary
          end
        end
        # The filters allows limiting the scope of this credit balance alert. You must specify a customer filter at this time.
        attr_accessor :filters
        # Defines at which value the alert will fire.
        attr_accessor :lte

        def initialize(filters: nil, lte: nil)
          @filters = filters
          @lte = lte
        end
      end

      class UsageThreshold < Stripe::RequestParams
        class Filter < Stripe::RequestParams
          # Limit the scope to this usage alert only to this customer.
          attr_accessor :customer
          # What type of filter is being applied to this usage alert.
          attr_accessor :type

          def initialize(customer: nil, type: nil)
            @customer = customer
            @type = type
          end
        end
        # The filters allows limiting the scope of this usage alert. You can only specify up to one filter at this time.
        attr_accessor :filters
        # Defines at which value the alert will fire.
        attr_accessor :gte
        # The [Billing Meter](/api/billing/meter) ID whose usage is monitored.
        attr_accessor :meter
        # Defines how the alert will behave.
        attr_accessor :recurrence

        def initialize(filters: nil, gte: nil, meter: nil, recurrence: nil)
          @filters = filters
          @gte = gte
          @meter = meter
          @recurrence = recurrence
        end
      end
      # The type of alert to create.
      attr_accessor :alert_type
      # The configuration of the credit balance threshold.
      attr_accessor :credit_balance_threshold
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # The title of the alert.
      attr_accessor :title
      # The configuration of the usage threshold.
      attr_accessor :usage_threshold

      def initialize(
        alert_type: nil,
        credit_balance_threshold: nil,
        expand: nil,
        title: nil,
        usage_threshold: nil
      )
        @alert_type = alert_type
        @credit_balance_threshold = credit_balance_threshold
        @expand = expand
        @title = title
        @usage_threshold = usage_threshold
      end
    end
  end
end
