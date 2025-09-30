# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Checkout
    class SessionUpdateParams < Stripe::RequestParams
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
        # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
        attr_accessor :liability

        def initialize(liability: nil)
          @liability = liability
        end
      end

      class CollectedInformation < Stripe::RequestParams
        class ShippingDetails < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            attr_accessor :country
            # Address line 1, such as the street, PO Box, or company name.
            attr_accessor :line1
            # Address line 2, such as the apartment, suite, unit, or building.
            attr_accessor :line2
            # ZIP or postal code.
            attr_accessor :postal_code
            # State, county, province, or region.
            attr_accessor :state

            def initialize(
              city: nil,
              country: nil,
              line1: nil,
              line2: nil,
              postal_code: nil,
              state: nil
            )
              @city = city
              @country = country
              @line1 = line1
              @line2 = line2
              @postal_code = postal_code
              @state = state
            end
          end
          # The address of the customer
          attr_accessor :address
          # The name of customer
          attr_accessor :name

          def initialize(address: nil, name: nil)
            @address = address
            @name = name
          end
        end
        # The shipping details to apply to this Session.
        attr_accessor :shipping_details

        def initialize(shipping_details: nil)
          @shipping_details = shipping_details
        end
      end

      class Discount < Stripe::RequestParams
        class CouponData < Stripe::RequestParams
          # A positive integer representing the amount to subtract from an invoice total (required if `percent_off` is not passed).
          attr_accessor :amount_off
          # Three-letter [ISO code for the currency](https://stripe.com/docs/currencies) of the `amount_off` parameter (required if `amount_off` is passed).
          attr_accessor :currency
          # Specifies how long the discount will be in effect if used on a subscription. Defaults to `once`.
          attr_accessor :duration
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
          attr_accessor :metadata
          # Name of the coupon displayed to customers on, for instance invoices, or receipts. By default the `id` is shown if `name` is not set.
          attr_accessor :name
          # A positive float larger than 0, and smaller or equal to 100, that represents the discount the coupon will apply (required if `amount_off` is not passed).
          attr_accessor :percent_off

          def initialize(
            amount_off: nil,
            currency: nil,
            duration: nil,
            metadata: nil,
            name: nil,
            percent_off: nil
          )
            @amount_off = amount_off
            @currency = currency
            @duration = duration
            @metadata = metadata
            @name = name
            @percent_off = percent_off
          end
        end
        # The ID of the [Coupon](https://stripe.com/docs/api/coupons) to apply to this Session. One of `coupon` or `coupon_data` is required when updating discounts.
        attr_accessor :coupon
        # Data used to generate a new [Coupon](https://stripe.com/docs/api/coupon) object inline. One of `coupon` or `coupon_data` is required when updating discounts.
        attr_accessor :coupon_data

        def initialize(coupon: nil, coupon_data: nil)
          @coupon = coupon
          @coupon_data = coupon_data
        end
      end

      class InvoiceCreation < Stripe::RequestParams
        class InvoiceData < Stripe::RequestParams
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
          # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
          attr_accessor :issuer

          def initialize(issuer: nil)
            @issuer = issuer
          end
        end
        # Parameters passed when creating invoices for payment-mode Checkout Sessions.
        attr_accessor :invoice_data

        def initialize(invoice_data: nil)
          @invoice_data = invoice_data
        end
      end

      class LineItem < Stripe::RequestParams
        class AdjustableQuantity < Stripe::RequestParams
          # Set to true if the quantity can be adjusted to any positive integer. Setting to false will remove any previously specified constraints on quantity.
          attr_accessor :enabled
          # The maximum quantity the customer can purchase for the Checkout Session. By default this value is 99. You can specify a value up to 999999.
          attr_accessor :maximum
          # The minimum quantity the customer must purchase for the Checkout Session. By default this value is 0.
          attr_accessor :minimum

          def initialize(enabled: nil, maximum: nil, minimum: nil)
            @enabled = enabled
            @maximum = maximum
            @minimum = minimum
          end
        end

        class PriceData < Stripe::RequestParams
          class ProductData < Stripe::RequestParams
            # The product's description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes.
            attr_accessor :description
            # A list of up to 8 URLs of images for this product, meant to be displayable to the customer.
            attr_accessor :images
            # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
            attr_accessor :metadata
            # The product's name, meant to be displayable to the customer.
            attr_accessor :name
            # A [tax code](https://stripe.com/docs/tax/tax-categories) ID.
            attr_accessor :tax_code
            # A label that represents units of this product. When set, this will be included in customers' receipts, invoices, Checkout, and the customer portal.
            attr_accessor :unit_label

            def initialize(
              description: nil,
              images: nil,
              metadata: nil,
              name: nil,
              tax_code: nil,
              unit_label: nil
            )
              @description = description
              @images = images
              @metadata = metadata
              @name = name
              @tax_code = tax_code
              @unit_label = unit_label
            end
          end

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
          # The ID of the [Product](https://docs.stripe.com/api/products) that this [Price](https://docs.stripe.com/api/prices) will belong to. One of `product` or `product_data` is required.
          attr_accessor :product
          # Data used to generate a new [Product](https://docs.stripe.com/api/products) object inline. One of `product` or `product_data` is required.
          attr_accessor :product_data
          # The recurring components of a price such as `interval` and `interval_count`.
          attr_accessor :recurring
          # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
          attr_accessor :tax_behavior
          # A non-negative integer in cents (or local equivalent) representing how much to charge. One of `unit_amount` or `unit_amount_decimal` is required.
          attr_accessor :unit_amount
          # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
          attr_accessor :unit_amount_decimal

          def initialize(
            currency: nil,
            product: nil,
            product_data: nil,
            recurring: nil,
            tax_behavior: nil,
            unit_amount: nil,
            unit_amount_decimal: nil
          )
            @currency = currency
            @product = product
            @product_data = product_data
            @recurring = recurring
            @tax_behavior = tax_behavior
            @unit_amount = unit_amount
            @unit_amount_decimal = unit_amount_decimal
          end
        end
        # When set, provides configuration for this item’s quantity to be adjusted by the customer during Checkout.
        attr_accessor :adjustable_quantity
        # ID of an existing line item.
        attr_accessor :id
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata
        # The ID of the [Price](https://stripe.com/docs/api/prices). One of `price` or `price_data` is required when creating a new line item.
        attr_accessor :price
        # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline. One of `price` or `price_data` is required when creating a new line item.
        attr_accessor :price_data
        # The quantity of the line item being purchased. Quantity should not be defined when `recurring.usage_type=metered`.
        attr_accessor :quantity
        # The [tax rates](https://stripe.com/docs/api/tax_rates) which apply to this line item.
        attr_accessor :tax_rates

        def initialize(
          adjustable_quantity: nil,
          id: nil,
          metadata: nil,
          price: nil,
          price_data: nil,
          quantity: nil,
          tax_rates: nil
        )
          @adjustable_quantity = adjustable_quantity
          @id = id
          @metadata = metadata
          @price = price
          @price_data = price_data
          @quantity = quantity
          @tax_rates = tax_rates
        end
      end

      class ShippingOption < Stripe::RequestParams
        class ShippingRateData < Stripe::RequestParams
          class DeliveryEstimate < Stripe::RequestParams
            class Maximum < Stripe::RequestParams
              # A unit of time.
              attr_accessor :unit
              # Must be greater than 0.
              attr_accessor :value

              def initialize(unit: nil, value: nil)
                @unit = unit
                @value = value
              end
            end

            class Minimum < Stripe::RequestParams
              # A unit of time.
              attr_accessor :unit
              # Must be greater than 0.
              attr_accessor :value

              def initialize(unit: nil, value: nil)
                @unit = unit
                @value = value
              end
            end
            # The upper bound of the estimated range. If empty, represents no upper bound i.e., infinite.
            attr_accessor :maximum
            # The lower bound of the estimated range. If empty, represents no lower bound.
            attr_accessor :minimum

            def initialize(maximum: nil, minimum: nil)
              @maximum = maximum
              @minimum = minimum
            end
          end

          class FixedAmount < Stripe::RequestParams
            class CurrencyOptions < Stripe::RequestParams
              # A non-negative integer in cents representing how much to charge.
              attr_accessor :amount
              # Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`.
              attr_accessor :tax_behavior

              def initialize(amount: nil, tax_behavior: nil)
                @amount = amount
                @tax_behavior = tax_behavior
              end
            end
            # A non-negative integer in cents representing how much to charge.
            attr_accessor :amount
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            attr_accessor :currency
            # Shipping rates defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
            attr_accessor :currency_options

            def initialize(amount: nil, currency: nil, currency_options: nil)
              @amount = amount
              @currency = currency
              @currency_options = currency_options
            end
          end
          # The estimated range for how long shipping will take, meant to be displayable to the customer. This will appear on CheckoutSessions.
          attr_accessor :delivery_estimate
          # The name of the shipping rate, meant to be displayable to the customer. This will appear on CheckoutSessions.
          attr_accessor :display_name
          # Describes a fixed amount to charge for shipping. Must be present if type is `fixed_amount`.
          attr_accessor :fixed_amount
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
          attr_accessor :metadata
          # Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`.
          attr_accessor :tax_behavior
          # A [tax code](https://stripe.com/docs/tax/tax-categories) ID. The Shipping tax code is `txcd_92010001`.
          attr_accessor :tax_code
          # The type of calculation to use on the shipping rate.
          attr_accessor :type

          def initialize(
            delivery_estimate: nil,
            display_name: nil,
            fixed_amount: nil,
            metadata: nil,
            tax_behavior: nil,
            tax_code: nil,
            type: nil
          )
            @delivery_estimate = delivery_estimate
            @display_name = display_name
            @fixed_amount = fixed_amount
            @metadata = metadata
            @tax_behavior = tax_behavior
            @tax_code = tax_code
            @type = type
          end
        end
        # The ID of the Shipping Rate to use for this shipping option.
        attr_accessor :shipping_rate
        # Parameters to be passed to Shipping Rate creation for this shipping option.
        attr_accessor :shipping_rate_data

        def initialize(shipping_rate: nil, shipping_rate_data: nil)
          @shipping_rate = shipping_rate
          @shipping_rate_data = shipping_rate_data
        end
      end

      class SubscriptionData < Stripe::RequestParams
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
          # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
          attr_accessor :issuer

          def initialize(issuer: nil)
            @issuer = issuer
          end
        end
        # All invoices will be billed using the specified settings.
        attr_accessor :invoice_settings
        # Unix timestamp representing the end of the trial period the customer will get before being charged for the first time. Has to be at least 48 hours in the future.
        attr_accessor :trial_end
        # Integer representing the number of trial period days before the customer is charged for the first time. Has to be at least 1.
        attr_accessor :trial_period_days

        def initialize(invoice_settings: nil, trial_end: nil, trial_period_days: nil)
          @invoice_settings = invoice_settings
          @trial_end = trial_end
          @trial_period_days = trial_period_days
        end
      end
      # Settings for automatic tax lookup for this session and resulting payments, invoices, and subscriptions.
      attr_accessor :automatic_tax
      # Information about the customer collected within the Checkout Session. Can only be set when updating `embedded` or `custom` sessions.
      attr_accessor :collected_information
      # List of coupons and promotion codes attached to the Checkout Session.
      attr_accessor :discounts
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Generate a post-purchase Invoice for one-time payments.
      attr_accessor :invoice_creation
      # A list of items the customer is purchasing.
      #
      # When updating line items, you must retransmit the entire array of line items.
      #
      # To retain an existing line item, specify its `id`.
      #
      # To update an existing line item, specify its `id` along with the new values of the fields to update.
      #
      # To add a new line item, specify one of `price` or `price_data` and `quantity`.
      #
      # To remove an existing line item, omit the line item's ID from the retransmitted array.
      #
      # To reorder a line item, specify it at the desired position in the retransmitted array.
      attr_accessor :line_items
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # The shipping rate options to apply to this Session. Up to a maximum of 5.
      attr_accessor :shipping_options
      # A subset of parameters to be passed to subscription creation for Checkout Sessions in `subscription` mode.
      attr_accessor :subscription_data

      def initialize(
        automatic_tax: nil,
        collected_information: nil,
        discounts: nil,
        expand: nil,
        invoice_creation: nil,
        line_items: nil,
        metadata: nil,
        shipping_options: nil,
        subscription_data: nil
      )
        @automatic_tax = automatic_tax
        @collected_information = collected_information
        @discounts = discounts
        @expand = expand
        @invoice_creation = invoice_creation
        @line_items = line_items
        @metadata = metadata
        @shipping_options = shipping_options
        @subscription_data = subscription_data
      end
    end
  end
end
