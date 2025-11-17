# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class OrderCreateParams < ::Stripe::RequestParams
    class AutomaticTax < ::Stripe::RequestParams
      # Enable automatic tax calculation which will automatically compute tax rates on this order.
      sig { returns(T::Boolean) }
      def enabled; end
      sig { params(_enabled: T::Boolean).returns(T::Boolean) }
      def enabled=(_enabled); end
      sig { params(enabled: T::Boolean).void }
      def initialize(enabled: nil); end
    end
    class BillingDetails < ::Stripe::RequestParams
      class Address < ::Stripe::RequestParams
        # City, district, suburb, town, or village.
        sig { returns(T.nilable(String)) }
        def city; end
        sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
        def city=(_city); end
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        sig { returns(T.nilable(String)) }
        def country; end
        sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
        def country=(_country); end
        # Address line 1, such as the street, PO Box, or company name.
        sig { returns(T.nilable(String)) }
        def line1; end
        sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
        def line1=(_line1); end
        # Address line 2, such as the apartment, suite, unit, or building.
        sig { returns(T.nilable(String)) }
        def line2; end
        sig { params(_line2: T.nilable(String)).returns(T.nilable(String)) }
        def line2=(_line2); end
        # ZIP or postal code.
        sig { returns(T.nilable(String)) }
        def postal_code; end
        sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
        def postal_code=(_postal_code); end
        # State/province as an [ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2) subdivision code, without country prefix, such as "NY" or "TX".
        sig { returns(T.nilable(String)) }
        def state; end
        sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
        def state=(_state); end
        sig {
          params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
         }
        def initialize(
          city: nil,
          country: nil,
          line1: nil,
          line2: nil,
          postal_code: nil,
          state: nil
        ); end
      end
      # The billing address provided by the customer.
      sig { returns(T.nilable(OrderCreateParams::BillingDetails::Address)) }
      def address; end
      sig {
        params(_address: T.nilable(OrderCreateParams::BillingDetails::Address)).returns(T.nilable(OrderCreateParams::BillingDetails::Address))
       }
      def address=(_address); end
      # The billing email provided by the customer.
      sig { returns(T.nilable(String)) }
      def email; end
      sig { params(_email: T.nilable(String)).returns(T.nilable(String)) }
      def email=(_email); end
      # The billing name provided by the customer.
      sig { returns(T.nilable(String)) }
      def name; end
      sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
      def name=(_name); end
      # The billing phone number provided by the customer.
      sig { returns(T.nilable(String)) }
      def phone; end
      sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
      def phone=(_phone); end
      sig {
        params(address: T.nilable(OrderCreateParams::BillingDetails::Address), email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
       }
      def initialize(address: nil, email: nil, name: nil, phone: nil); end
    end
    class Discount < ::Stripe::RequestParams
      # ID of the coupon to create a new discount for.
      sig { returns(T.nilable(String)) }
      def coupon; end
      sig { params(_coupon: T.nilable(String)).returns(T.nilable(String)) }
      def coupon=(_coupon); end
      # ID of an existing discount on the object (or one of its ancestors) to reuse.
      sig { returns(T.nilable(String)) }
      def discount; end
      sig { params(_discount: T.nilable(String)).returns(T.nilable(String)) }
      def discount=(_discount); end
      # ID of the promotion code to create a new discount for.
      sig { returns(T.nilable(String)) }
      def promotion_code; end
      sig { params(_promotion_code: T.nilable(String)).returns(T.nilable(String)) }
      def promotion_code=(_promotion_code); end
      sig {
        params(coupon: T.nilable(String), discount: T.nilable(String), promotion_code: T.nilable(String)).void
       }
      def initialize(coupon: nil, discount: nil, promotion_code: nil); end
    end
    class LineItem < ::Stripe::RequestParams
      class Discount < ::Stripe::RequestParams
        # ID of the coupon to create a new discount for.
        sig { returns(T.nilable(String)) }
        def coupon; end
        sig { params(_coupon: T.nilable(String)).returns(T.nilable(String)) }
        def coupon=(_coupon); end
        # ID of an existing discount on the object (or one of its ancestors) to reuse.
        sig { returns(T.nilable(String)) }
        def discount; end
        sig { params(_discount: T.nilable(String)).returns(T.nilable(String)) }
        def discount=(_discount); end
        sig { params(coupon: T.nilable(String), discount: T.nilable(String)).void }
        def initialize(coupon: nil, discount: nil); end
      end
      class PriceData < ::Stripe::RequestParams
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(T.nilable(String)) }
        def currency; end
        sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
        def currency=(_currency); end
        # ID of the [Product](https://docs.stripe.com/api/products) this [Price](https://docs.stripe.com/api/prices) belongs to.
        #
        # Use this to implement a variable-pricing model in your integration. This is required if `product_data` is not specified.
        sig { returns(T.nilable(String)) }
        def product; end
        sig { params(_product: T.nilable(String)).returns(T.nilable(String)) }
        def product=(_product); end
        # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
        sig { returns(T.nilable(String)) }
        def tax_behavior; end
        sig { params(_tax_behavior: T.nilable(String)).returns(T.nilable(String)) }
        def tax_behavior=(_tax_behavior); end
        # A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge.
        sig { returns(T.nilable(Integer)) }
        def unit_amount; end
        sig { params(_unit_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def unit_amount=(_unit_amount); end
        # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
        sig { returns(T.nilable(String)) }
        def unit_amount_decimal; end
        sig { params(_unit_amount_decimal: T.nilable(String)).returns(T.nilable(String)) }
        def unit_amount_decimal=(_unit_amount_decimal); end
        sig {
          params(currency: T.nilable(String), product: T.nilable(String), tax_behavior: T.nilable(String), unit_amount: T.nilable(Integer), unit_amount_decimal: T.nilable(String)).void
         }
        def initialize(
          currency: nil,
          product: nil,
          tax_behavior: nil,
          unit_amount: nil,
          unit_amount_decimal: nil
        ); end
      end
      class ProductData < ::Stripe::RequestParams
        class PackageDimensions < ::Stripe::RequestParams
          # Height, in inches. Maximum precision is 2 decimal places.
          sig { returns(Float) }
          def height; end
          sig { params(_height: Float).returns(Float) }
          def height=(_height); end
          # Length, in inches. Maximum precision is 2 decimal places.
          sig { returns(Float) }
          def length; end
          sig { params(_length: Float).returns(Float) }
          def length=(_length); end
          # Weight, in ounces. Maximum precision is 2 decimal places.
          sig { returns(Float) }
          def weight; end
          sig { params(_weight: Float).returns(Float) }
          def weight=(_weight); end
          # Width, in inches. Maximum precision is 2 decimal places.
          sig { returns(Float) }
          def width; end
          sig { params(_width: Float).returns(Float) }
          def width=(_width); end
          sig { params(height: Float, length: Float, weight: Float, width: Float).void }
          def initialize(height: nil, length: nil, weight: nil, width: nil); end
        end
        # The product's description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes.
        sig { returns(T.nilable(String)) }
        def description; end
        sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
        def description=(_description); end
        # A unique identifier for this product.
        #
        # `product_data` automatically creates a Product with this ID. If a Product with the same ID already exists, then `product_data` re-uses it to avoid duplicates. If any of the fields in the existing Product are different from the values in `product_data`, `product_data` updates the existing Product with the new information. So set `product_data[id]` to the same string every time you sell the same product, but don't re-use the same string for different products.
        sig { returns(String) }
        def id; end
        sig { params(_id: String).returns(String) }
        def id=(_id); end
        # A list of up to 8 URLs of images for this product, meant to be displayable to the customer.
        sig { returns(T.nilable(T.any(String, T::Array[String]))) }
        def images; end
        sig {
          params(_images: T.nilable(T.any(String, T::Array[String]))).returns(T.nilable(T.any(String, T::Array[String])))
         }
        def images=(_images); end
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
         }
        def metadata=(_metadata); end
        # The product's name, meant to be displayable to the customer.
        sig { returns(String) }
        def name; end
        sig { params(_name: String).returns(String) }
        def name=(_name); end
        # The dimensions of this product for shipping purposes.
        sig {
          returns(T.nilable(T.any(String, OrderCreateParams::LineItem::ProductData::PackageDimensions)))
         }
        def package_dimensions; end
        sig {
          params(_package_dimensions: T.nilable(T.any(String, OrderCreateParams::LineItem::ProductData::PackageDimensions))).returns(T.nilable(T.any(String, OrderCreateParams::LineItem::ProductData::PackageDimensions)))
         }
        def package_dimensions=(_package_dimensions); end
        # Whether this product is shipped (i.e., physical goods).
        sig { returns(T.nilable(T::Boolean)) }
        def shippable; end
        sig { params(_shippable: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def shippable=(_shippable); end
        # A [tax code](https://stripe.com/docs/tax/tax-categories) ID.
        sig { returns(T.nilable(String)) }
        def tax_code; end
        sig { params(_tax_code: T.nilable(String)).returns(T.nilable(String)) }
        def tax_code=(_tax_code); end
        # A URL of a publicly-accessible webpage for this product.
        sig { returns(T.nilable(String)) }
        def url; end
        sig { params(_url: T.nilable(String)).returns(T.nilable(String)) }
        def url=(_url); end
        sig {
          params(description: T.nilable(String), id: String, images: T.nilable(T.any(String, T::Array[String])), metadata: T.nilable(T.any(String, T::Hash[String, String])), name: String, package_dimensions: T.nilable(T.any(String, OrderCreateParams::LineItem::ProductData::PackageDimensions)), shippable: T.nilable(T::Boolean), tax_code: T.nilable(String), url: T.nilable(String)).void
         }
        def initialize(
          description: nil,
          id: nil,
          images: nil,
          metadata: nil,
          name: nil,
          package_dimensions: nil,
          shippable: nil,
          tax_code: nil,
          url: nil
        ); end
      end
      # The description for the line item. Will default to the name of the associated product.
      sig { returns(T.nilable(String)) }
      def description; end
      sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_description); end
      # The discounts applied to this line item.
      sig { returns(T.nilable(T.any(String, T::Array[OrderCreateParams::LineItem::Discount]))) }
      def discounts; end
      sig {
        params(_discounts: T.nilable(T.any(String, T::Array[OrderCreateParams::LineItem::Discount]))).returns(T.nilable(T.any(String, T::Array[OrderCreateParams::LineItem::Discount])))
       }
      def discounts=(_discounts); end
      # The ID of a [Price](https://docs.stripe.com/api/prices) to add to the Order.
      #
      # The `price` parameter is an alternative to using the `product` parameter. If each of your products are sold at a single price, you can set `Product.default_price` and then pass the `product` parameter when creating a line item. If your products are sold at several possible prices, use the `price` parameter to explicitly specify which one to use.
      sig { returns(T.nilable(String)) }
      def price; end
      sig { params(_price: T.nilable(String)).returns(T.nilable(String)) }
      def price=(_price); end
      # Data used to generate a new Price object inline.
      #
      # The `price_data` parameter is an alternative to using the `product` or `price` parameters. If you create a Product upfront and configure a `Product.default_price`, pass the `product` parameter when creating a line item. If you prefer not to define Products upfront, or if you charge variable prices, pass the `price_data` parameter to describe the price for this line item.
      #
      # Each time you pass `price_data` we create a Price for the Product. This Price is hidden in both the Dashboard and API lists and cannot be reused.
      sig { returns(T.nilable(OrderCreateParams::LineItem::PriceData)) }
      def price_data; end
      sig {
        params(_price_data: T.nilable(OrderCreateParams::LineItem::PriceData)).returns(T.nilable(OrderCreateParams::LineItem::PriceData))
       }
      def price_data=(_price_data); end
      # The ID of a [Product](https://docs.stripe.com/api/products) to add to the Order.
      #
      # The Product must have a `default_price` specified. Otherwise, specify the price by passing the `price` or `price_data` parameter.
      sig { returns(T.nilable(String)) }
      def product; end
      sig { params(_product: T.nilable(String)).returns(T.nilable(String)) }
      def product=(_product); end
      # Defines a [Product](https://docs.stripe.com/api/products) inline and adds it to the Order.
      #
      # `product_data` is an alternative to the `product` parameter. If you created a Product upfront, use the `product` parameter to refer to the existing Product. But if you prefer not to create Products upfront, pass the `product_data` parameter to define a Product inline as part of configuring the Order.
      #
      # `product_data` automatically creates a Product, just as if you had manually created the Product. If a Product with the same ID already exists, then `product_data` re-uses it to avoid duplicates.
      sig { returns(T.nilable(OrderCreateParams::LineItem::ProductData)) }
      def product_data; end
      sig {
        params(_product_data: T.nilable(OrderCreateParams::LineItem::ProductData)).returns(T.nilable(OrderCreateParams::LineItem::ProductData))
       }
      def product_data=(_product_data); end
      # The quantity of the line item.
      sig { returns(T.nilable(Integer)) }
      def quantity; end
      sig { params(_quantity: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def quantity=(_quantity); end
      # The tax rates applied to this line item.
      sig { returns(T.nilable(T.any(String, T::Array[String]))) }
      def tax_rates; end
      sig {
        params(_tax_rates: T.nilable(T.any(String, T::Array[String]))).returns(T.nilable(T.any(String, T::Array[String])))
       }
      def tax_rates=(_tax_rates); end
      sig {
        params(description: T.nilable(String), discounts: T.nilable(T.any(String, T::Array[OrderCreateParams::LineItem::Discount])), price: T.nilable(String), price_data: T.nilable(OrderCreateParams::LineItem::PriceData), product: T.nilable(String), product_data: T.nilable(OrderCreateParams::LineItem::ProductData), quantity: T.nilable(Integer), tax_rates: T.nilable(T.any(String, T::Array[String]))).void
       }
      def initialize(
        description: nil,
        discounts: nil,
        price: nil,
        price_data: nil,
        product: nil,
        product_data: nil,
        quantity: nil,
        tax_rates: nil
      ); end
    end
    class Payment < ::Stripe::RequestParams
      class Settings < ::Stripe::RequestParams
        class PaymentMethodOptions < ::Stripe::RequestParams
          class AcssDebit < ::Stripe::RequestParams
            class MandateOptions < ::Stripe::RequestParams
              # A URL for custom mandate text to render during confirmation step.
              # The URL will be rendered with additional GET parameters `payment_intent` and `payment_intent_client_secret` when confirming a Payment Intent,
              # or `setup_intent` and `setup_intent_client_secret` when confirming a Setup Intent.
              sig { returns(T.nilable(String)) }
              def custom_mandate_url; end
              sig { params(_custom_mandate_url: T.nilable(String)).returns(T.nilable(String)) }
              def custom_mandate_url=(_custom_mandate_url); end
              # Description of the mandate interval. Only required if 'payment_schedule' parameter is 'interval' or 'combined'.
              sig { returns(T.nilable(String)) }
              def interval_description; end
              sig { params(_interval_description: T.nilable(String)).returns(T.nilable(String)) }
              def interval_description=(_interval_description); end
              # Payment schedule for the mandate.
              sig { returns(T.nilable(String)) }
              def payment_schedule; end
              sig { params(_payment_schedule: T.nilable(String)).returns(T.nilable(String)) }
              def payment_schedule=(_payment_schedule); end
              # Transaction type of the mandate.
              sig { returns(T.nilable(String)) }
              def transaction_type; end
              sig { params(_transaction_type: T.nilable(String)).returns(T.nilable(String)) }
              def transaction_type=(_transaction_type); end
              sig {
                params(custom_mandate_url: T.nilable(String), interval_description: T.nilable(String), payment_schedule: T.nilable(String), transaction_type: T.nilable(String)).void
               }
              def initialize(
                custom_mandate_url: nil,
                interval_description: nil,
                payment_schedule: nil,
                transaction_type: nil
              ); end
            end
            # Additional fields for Mandate creation
            sig {
              returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::AcssDebit::MandateOptions))
             }
            def mandate_options; end
            sig {
              params(_mandate_options: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::AcssDebit::MandateOptions)).returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::AcssDebit::MandateOptions))
             }
            def mandate_options=(_mandate_options); end
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            #
            # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
            sig { returns(T.nilable(T.any(String, String))) }
            def setup_future_usage; end
            sig {
              params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
             }
            def setup_future_usage=(_setup_future_usage); end
            # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
            sig { returns(T.nilable(String)) }
            def target_date; end
            sig { params(_target_date: T.nilable(String)).returns(T.nilable(String)) }
            def target_date=(_target_date); end
            # Bank account verification method.
            sig { returns(T.nilable(String)) }
            def verification_method; end
            sig { params(_verification_method: T.nilable(String)).returns(T.nilable(String)) }
            def verification_method=(_verification_method); end
            sig {
              params(mandate_options: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::AcssDebit::MandateOptions), setup_future_usage: T.nilable(T.any(String, String)), target_date: T.nilable(String), verification_method: T.nilable(String)).void
             }
            def initialize(
              mandate_options: nil,
              setup_future_usage: nil,
              target_date: nil,
              verification_method: nil
            ); end
          end
          class AfterpayClearpay < ::Stripe::RequestParams
            # Controls when the funds are captured from the customer's account.
            #
            # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
            #
            # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
            sig { returns(T.nilable(String)) }
            def capture_method; end
            sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
            def capture_method=(_capture_method); end
            # An internal identifier or reference this payment corresponds to. The identifier is limited to 128 characters and may contain only letters, digits, underscores, backslashes and dashes.
            sig { returns(T.nilable(String)) }
            def reference; end
            sig { params(_reference: T.nilable(String)).returns(T.nilable(String)) }
            def reference=(_reference); end
            # Indicates that you intend to make future payments with the payment method.
            #
            # Providing this parameter will [attach the payment method](https://stripe.com/docs/payments/save-during-payment) to the order's Customer, if present, after the order's PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https://stripe.com/docs/api/payment_methods/attach) to a Customer after the transaction completes.
            #
            # When processing card payments, Stripe also uses `setup_future_usage` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https://stripe.com/docs/strong-customer-authentication).
            #
            # If `setup_future_usage` is already set and you are performing a request using a publishable key, you may only update the value from `on_session` to `off_session`.
            sig { returns(T.nilable(String)) }
            def setup_future_usage; end
            sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
            def setup_future_usage=(_setup_future_usage); end
            sig {
              params(capture_method: T.nilable(String), reference: T.nilable(String), setup_future_usage: T.nilable(String)).void
             }
            def initialize(capture_method: nil, reference: nil, setup_future_usage: nil); end
          end
          class Alipay < ::Stripe::RequestParams
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            #
            # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
            sig { returns(T.nilable(T.any(String, String))) }
            def setup_future_usage; end
            sig {
              params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
             }
            def setup_future_usage=(_setup_future_usage); end
            sig { params(setup_future_usage: T.nilable(T.any(String, String))).void }
            def initialize(setup_future_usage: nil); end
          end
          class Bancontact < ::Stripe::RequestParams
            # Preferred language of the Bancontact authorization page that the customer is redirected to.
            sig { returns(T.nilable(String)) }
            def preferred_language; end
            sig { params(_preferred_language: T.nilable(String)).returns(T.nilable(String)) }
            def preferred_language=(_preferred_language); end
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            #
            # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
            sig { returns(T.nilable(T.any(String, String))) }
            def setup_future_usage; end
            sig {
              params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
             }
            def setup_future_usage=(_setup_future_usage); end
            sig {
              params(preferred_language: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
             }
            def initialize(preferred_language: nil, setup_future_usage: nil); end
          end
          class Card < ::Stripe::RequestParams
            # Controls when the funds will be captured from the customer's account.
            sig { returns(T.nilable(String)) }
            def capture_method; end
            sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
            def capture_method=(_capture_method); end
            # Indicates that you intend to make future payments with the payment method.
            #
            # Providing this parameter will [attach the payment method](https://stripe.com/docs/payments/save-during-payment) to the order's Customer, if present, after the order's PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https://stripe.com/docs/api/payment_methods/attach) to a Customer after the transaction completes.
            #
            # When processing card payments, Stripe also uses `setup_future_usage` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https://stripe.com/docs/strong-customer-authentication).
            #
            # If `setup_future_usage` is already set and you are performing a request using a publishable key, you may only update the value from `on_session` to `off_session`.
            sig { returns(T.nilable(String)) }
            def setup_future_usage; end
            sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
            def setup_future_usage=(_setup_future_usage); end
            sig {
              params(capture_method: T.nilable(String), setup_future_usage: T.nilable(String)).void
             }
            def initialize(capture_method: nil, setup_future_usage: nil); end
          end
          class CustomerBalance < ::Stripe::RequestParams
            class BankTransfer < ::Stripe::RequestParams
              class EuBankTransfer < ::Stripe::RequestParams
                # The desired country code of the bank account information. Permitted values include: `BE`, `DE`, `ES`, `FR`, `IE`, or `NL`.
                sig { returns(String) }
                def country; end
                sig { params(_country: String).returns(String) }
                def country=(_country); end
                sig { params(country: String).void }
                def initialize(country: nil); end
              end
              # Configuration for the eu_bank_transfer funding type.
              sig {
                returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer))
               }
              def eu_bank_transfer; end
              sig {
                params(_eu_bank_transfer: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer)).returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer))
               }
              def eu_bank_transfer=(_eu_bank_transfer); end
              # List of address types that should be returned in the financial_addresses response. If not specified, all valid types will be returned.
              #
              # Permitted values include: `sort_code`, `zengin`, `iban`, or `spei`.
              sig { returns(T.nilable(T::Array[String])) }
              def requested_address_types; end
              sig {
                params(_requested_address_types: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
               }
              def requested_address_types=(_requested_address_types); end
              # The list of bank transfer types that this PaymentIntent is allowed to use for funding Permitted values include: `eu_bank_transfer`, `gb_bank_transfer`, `jp_bank_transfer`, `mx_bank_transfer`, or `us_bank_transfer`.
              sig { returns(String) }
              def type; end
              sig { params(_type: String).returns(String) }
              def type=(_type); end
              sig {
                params(eu_bank_transfer: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer), requested_address_types: T.nilable(T::Array[String]), type: String).void
               }
              def initialize(eu_bank_transfer: nil, requested_address_types: nil, type: nil); end
            end
            # Configuration for the bank transfer funding type, if the `funding_type` is set to `bank_transfer`.
            sig {
              returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::CustomerBalance::BankTransfer))
             }
            def bank_transfer; end
            sig {
              params(_bank_transfer: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::CustomerBalance::BankTransfer)).returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::CustomerBalance::BankTransfer))
             }
            def bank_transfer=(_bank_transfer); end
            # The funding method type to be used when there are not enough funds in the customer balance. Permitted values include: `bank_transfer`.
            sig { returns(T.nilable(String)) }
            def funding_type; end
            sig { params(_funding_type: T.nilable(String)).returns(T.nilable(String)) }
            def funding_type=(_funding_type); end
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            #
            # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
            sig { returns(T.nilable(String)) }
            def setup_future_usage; end
            sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
            def setup_future_usage=(_setup_future_usage); end
            sig {
              params(bank_transfer: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::CustomerBalance::BankTransfer), funding_type: T.nilable(String), setup_future_usage: T.nilable(String)).void
             }
            def initialize(bank_transfer: nil, funding_type: nil, setup_future_usage: nil); end
          end
          class Ideal < ::Stripe::RequestParams
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            #
            # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
            sig { returns(T.nilable(T.any(String, String))) }
            def setup_future_usage; end
            sig {
              params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
             }
            def setup_future_usage=(_setup_future_usage); end
            sig { params(setup_future_usage: T.nilable(T.any(String, String))).void }
            def initialize(setup_future_usage: nil); end
          end
          class Klarna < ::Stripe::RequestParams
            class OnDemand < ::Stripe::RequestParams
              # Your average amount value. You can use a value across your customer base, or segment based on customer type, country, etc.
              sig { returns(T.nilable(Integer)) }
              def average_amount; end
              sig { params(_average_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def average_amount=(_average_amount); end
              # The maximum value you may charge a customer per purchase. You can use a value across your customer base, or segment based on customer type, country, etc.
              sig { returns(T.nilable(Integer)) }
              def maximum_amount; end
              sig { params(_maximum_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def maximum_amount=(_maximum_amount); end
              # The lowest or minimum value you may charge a customer per purchase. You can use a value across your customer base, or segment based on customer type, country, etc.
              sig { returns(T.nilable(Integer)) }
              def minimum_amount; end
              sig { params(_minimum_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def minimum_amount=(_minimum_amount); end
              # Interval at which the customer is making purchases
              sig { returns(T.nilable(String)) }
              def purchase_interval; end
              sig { params(_purchase_interval: T.nilable(String)).returns(T.nilable(String)) }
              def purchase_interval=(_purchase_interval); end
              # The number of `purchase_interval` between charges
              sig { returns(T.nilable(Integer)) }
              def purchase_interval_count; end
              sig {
                params(_purchase_interval_count: T.nilable(Integer)).returns(T.nilable(Integer))
               }
              def purchase_interval_count=(_purchase_interval_count); end
              sig {
                params(average_amount: T.nilable(Integer), maximum_amount: T.nilable(Integer), minimum_amount: T.nilable(Integer), purchase_interval: T.nilable(String), purchase_interval_count: T.nilable(Integer)).void
               }
              def initialize(
                average_amount: nil,
                maximum_amount: nil,
                minimum_amount: nil,
                purchase_interval: nil,
                purchase_interval_count: nil
              ); end
            end
            class Subscription < ::Stripe::RequestParams
              class NextBilling < ::Stripe::RequestParams
                # The amount of the next charge for the subscription.
                sig { returns(Integer) }
                def amount; end
                sig { params(_amount: Integer).returns(Integer) }
                def amount=(_amount); end
                # The date of the next charge for the subscription in YYYY-MM-DD format.
                sig { returns(String) }
                def date; end
                sig { params(_date: String).returns(String) }
                def date=(_date); end
                sig { params(amount: Integer, date: String).void }
                def initialize(amount: nil, date: nil); end
              end
              # Unit of time between subscription charges.
              sig { returns(String) }
              def interval; end
              sig { params(_interval: String).returns(String) }
              def interval=(_interval); end
              # The number of intervals (specified in the `interval` attribute) between subscription charges. For example, `interval=month` and `interval_count=3` charges every 3 months.
              sig { returns(T.nilable(Integer)) }
              def interval_count; end
              sig { params(_interval_count: T.nilable(Integer)).returns(T.nilable(Integer)) }
              def interval_count=(_interval_count); end
              # Name for subscription.
              sig { returns(T.nilable(String)) }
              def name; end
              sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
              def name=(_name); end
              # Describes the upcoming charge for this subscription.
              sig {
                returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::Subscription::NextBilling))
               }
              def next_billing; end
              sig {
                params(_next_billing: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::Subscription::NextBilling)).returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::Subscription::NextBilling))
               }
              def next_billing=(_next_billing); end
              # A non-customer-facing reference to correlate subscription charges in the Klarna app. Use a value that persists across subscription charges.
              sig { returns(String) }
              def reference; end
              sig { params(_reference: String).returns(String) }
              def reference=(_reference); end
              sig {
                params(interval: String, interval_count: T.nilable(Integer), name: T.nilable(String), next_billing: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::Subscription::NextBilling), reference: String).void
               }
              def initialize(
                interval: nil,
                interval_count: nil,
                name: nil,
                next_billing: nil,
                reference: nil
              ); end
            end
            class SupplementaryPurchaseData < ::Stripe::RequestParams
              class BusReservationDetail < ::Stripe::RequestParams
                class Arrival < ::Stripe::RequestParams
                  class Address < ::Stripe::RequestParams
                    # The city or town.
                    sig { returns(T.nilable(String)) }
                    def city; end
                    sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
                    def city=(_city); end
                    # The country in ISO 3166-1 alpha-2 format.
                    sig { returns(T.nilable(String)) }
                    def country; end
                    sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
                    def country=(_country); end
                    # The postal code formatted according to country.
                    sig { returns(T.nilable(String)) }
                    def postal_code; end
                    sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
                    def postal_code=(_postal_code); end
                    # The state, county, province, or region formatted according to country.
                    sig { returns(T.nilable(String)) }
                    def region; end
                    sig { params(_region: T.nilable(String)).returns(T.nilable(String)) }
                    def region=(_region); end
                    # Line 1 of the street address.
                    sig { returns(T.nilable(String)) }
                    def street_address; end
                    sig { params(_street_address: T.nilable(String)).returns(T.nilable(String)) }
                    def street_address=(_street_address); end
                    # Line 2 of the street address.
                    sig { returns(T.nilable(String)) }
                    def street_address2; end
                    sig { params(_street_address2: T.nilable(String)).returns(T.nilable(String)) }
                    def street_address2=(_street_address2); end
                    sig {
                      params(city: T.nilable(String), country: T.nilable(String), postal_code: T.nilable(String), region: T.nilable(String), street_address: T.nilable(String), street_address2: T.nilable(String)).void
                     }
                    def initialize(
                      city: nil,
                      country: nil,
                      postal_code: nil,
                      region: nil,
                      street_address: nil,
                      street_address2: nil
                    ); end
                  end
                  # Address of the arrival location.
                  sig {
                    returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::BusReservationDetail::Arrival::Address))
                   }
                  def address; end
                  sig {
                    params(_address: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::BusReservationDetail::Arrival::Address)).returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::BusReservationDetail::Arrival::Address))
                   }
                  def address=(_address); end
                  # Identifier name or reference for the arrival location.
                  sig { returns(T.nilable(String)) }
                  def arrival_location; end
                  sig { params(_arrival_location: T.nilable(String)).returns(T.nilable(String)) }
                  def arrival_location=(_arrival_location); end
                  sig {
                    params(address: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::BusReservationDetail::Arrival::Address), arrival_location: T.nilable(String)).void
                   }
                  def initialize(address: nil, arrival_location: nil); end
                end
                class Departure < ::Stripe::RequestParams
                  class Address < ::Stripe::RequestParams
                    # The city or town.
                    sig { returns(T.nilable(String)) }
                    def city; end
                    sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
                    def city=(_city); end
                    # The country in ISO 3166-1 alpha-2 format.
                    sig { returns(T.nilable(String)) }
                    def country; end
                    sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
                    def country=(_country); end
                    # The postal code formatted according to country.
                    sig { returns(T.nilable(String)) }
                    def postal_code; end
                    sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
                    def postal_code=(_postal_code); end
                    # The state, county, province, or region formatted according to country.
                    sig { returns(T.nilable(String)) }
                    def region; end
                    sig { params(_region: T.nilable(String)).returns(T.nilable(String)) }
                    def region=(_region); end
                    # Line 1 of the street address.
                    sig { returns(T.nilable(String)) }
                    def street_address; end
                    sig { params(_street_address: T.nilable(String)).returns(T.nilable(String)) }
                    def street_address=(_street_address); end
                    # Line 2 of the street address.
                    sig { returns(T.nilable(String)) }
                    def street_address2; end
                    sig { params(_street_address2: T.nilable(String)).returns(T.nilable(String)) }
                    def street_address2=(_street_address2); end
                    sig {
                      params(city: T.nilable(String), country: T.nilable(String), postal_code: T.nilable(String), region: T.nilable(String), street_address: T.nilable(String), street_address2: T.nilable(String)).void
                     }
                    def initialize(
                      city: nil,
                      country: nil,
                      postal_code: nil,
                      region: nil,
                      street_address: nil,
                      street_address2: nil
                    ); end
                  end
                  # Address of the departure location.
                  sig {
                    returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::BusReservationDetail::Departure::Address))
                   }
                  def address; end
                  sig {
                    params(_address: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::BusReservationDetail::Departure::Address)).returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::BusReservationDetail::Departure::Address))
                   }
                  def address=(_address); end
                  # Timestamp of departure.
                  sig { returns(T.nilable(Integer)) }
                  def departs_at; end
                  sig { params(_departs_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
                  def departs_at=(_departs_at); end
                  # Identifier name or reference for the origin location.
                  sig { returns(T.nilable(String)) }
                  def departure_location; end
                  sig { params(_departure_location: T.nilable(String)).returns(T.nilable(String)) }
                  def departure_location=(_departure_location); end
                  sig {
                    params(address: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::BusReservationDetail::Departure::Address), departs_at: T.nilable(Integer), departure_location: T.nilable(String)).void
                   }
                  def initialize(address: nil, departs_at: nil, departure_location: nil); end
                end
                class Insurance < ::Stripe::RequestParams
                  # Insurance currency.
                  sig { returns(T.nilable(String)) }
                  def currency; end
                  sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
                  def currency=(_currency); end
                  # Name of the company providing the insurance.
                  sig { returns(T.nilable(String)) }
                  def insurance_company_name; end
                  sig {
                    params(_insurance_company_name: T.nilable(String)).returns(T.nilable(String))
                   }
                  def insurance_company_name=(_insurance_company_name); end
                  # Type of insurance.
                  sig { returns(T.nilable(String)) }
                  def insurance_type; end
                  sig { params(_insurance_type: T.nilable(String)).returns(T.nilable(String)) }
                  def insurance_type=(_insurance_type); end
                  # Price of insurance in cents.
                  sig { returns(T.nilable(Integer)) }
                  def price; end
                  sig { params(_price: T.nilable(Integer)).returns(T.nilable(Integer)) }
                  def price=(_price); end
                  sig {
                    params(currency: T.nilable(String), insurance_company_name: T.nilable(String), insurance_type: T.nilable(String), price: T.nilable(Integer)).void
                   }
                  def initialize(
                    currency: nil,
                    insurance_company_name: nil,
                    insurance_type: nil,
                    price: nil
                  ); end
                end
                class Passenger < ::Stripe::RequestParams
                  # The family name of the person.
                  sig { returns(T.nilable(String)) }
                  def family_name; end
                  sig { params(_family_name: T.nilable(String)).returns(T.nilable(String)) }
                  def family_name=(_family_name); end
                  # The given name of the person.
                  sig { returns(T.nilable(String)) }
                  def given_name; end
                  sig { params(_given_name: T.nilable(String)).returns(T.nilable(String)) }
                  def given_name=(_given_name); end
                  sig { params(family_name: T.nilable(String), given_name: T.nilable(String)).void }
                  def initialize(family_name: nil, given_name: nil); end
                end
                # Name of associated or partner company for the service.
                sig { returns(T.nilable(String)) }
                def affiliate_name; end
                sig { params(_affiliate_name: T.nilable(String)).returns(T.nilable(String)) }
                def affiliate_name=(_affiliate_name); end
                # Arrival details.
                sig {
                  returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::BusReservationDetail::Arrival))
                 }
                def arrival; end
                sig {
                  params(_arrival: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::BusReservationDetail::Arrival)).returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::BusReservationDetail::Arrival))
                 }
                def arrival=(_arrival); end
                # Name of transportation company.
                sig { returns(T.nilable(String)) }
                def carrier_name; end
                sig { params(_carrier_name: T.nilable(String)).returns(T.nilable(String)) }
                def carrier_name=(_carrier_name); end
                # Currency.
                sig { returns(T.nilable(String)) }
                def currency; end
                sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
                def currency=(_currency); end
                # Departure details.
                sig {
                  returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::BusReservationDetail::Departure))
                 }
                def departure; end
                sig {
                  params(_departure: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::BusReservationDetail::Departure)).returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::BusReservationDetail::Departure))
                 }
                def departure=(_departure); end
                # List of insurances for this reservation.
                sig {
                  returns(T.nilable(T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::BusReservationDetail::Insurance]))
                 }
                def insurances; end
                sig {
                  params(_insurances: T.nilable(T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::BusReservationDetail::Insurance])).returns(T.nilable(T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::BusReservationDetail::Insurance]))
                 }
                def insurances=(_insurances); end
                # List of passengers that this reservation applies to.
                sig {
                  returns(T.nilable(T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::BusReservationDetail::Passenger]))
                 }
                def passengers; end
                sig {
                  params(_passengers: T.nilable(T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::BusReservationDetail::Passenger])).returns(T.nilable(T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::BusReservationDetail::Passenger]))
                 }
                def passengers=(_passengers); end
                # Price in cents.
                sig { returns(T.nilable(Integer)) }
                def price; end
                sig { params(_price: T.nilable(Integer)).returns(T.nilable(Integer)) }
                def price=(_price); end
                # Ticket class.
                sig { returns(T.nilable(String)) }
                def ticket_class; end
                sig { params(_ticket_class: T.nilable(String)).returns(T.nilable(String)) }
                def ticket_class=(_ticket_class); end
                sig {
                  params(affiliate_name: T.nilable(String), arrival: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::BusReservationDetail::Arrival), carrier_name: T.nilable(String), currency: T.nilable(String), departure: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::BusReservationDetail::Departure), insurances: T.nilable(T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::BusReservationDetail::Insurance]), passengers: T.nilable(T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::BusReservationDetail::Passenger]), price: T.nilable(Integer), ticket_class: T.nilable(String)).void
                 }
                def initialize(
                  affiliate_name: nil,
                  arrival: nil,
                  carrier_name: nil,
                  currency: nil,
                  departure: nil,
                  insurances: nil,
                  passengers: nil,
                  price: nil,
                  ticket_class: nil
                ); end
              end
              class EventReservationDetail < ::Stripe::RequestParams
                class Address < ::Stripe::RequestParams
                  # The city or town.
                  sig { returns(T.nilable(String)) }
                  def city; end
                  sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
                  def city=(_city); end
                  # The country in ISO 3166-1 alpha-2 format.
                  sig { returns(T.nilable(String)) }
                  def country; end
                  sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
                  def country=(_country); end
                  # The postal code formatted according to country.
                  sig { returns(T.nilable(String)) }
                  def postal_code; end
                  sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
                  def postal_code=(_postal_code); end
                  # The state, county, province, or region formatted according to country.
                  sig { returns(T.nilable(String)) }
                  def region; end
                  sig { params(_region: T.nilable(String)).returns(T.nilable(String)) }
                  def region=(_region); end
                  # Line 1 of the street address.
                  sig { returns(T.nilable(String)) }
                  def street_address; end
                  sig { params(_street_address: T.nilable(String)).returns(T.nilable(String)) }
                  def street_address=(_street_address); end
                  # Line 2 of the street address.
                  sig { returns(T.nilable(String)) }
                  def street_address2; end
                  sig { params(_street_address2: T.nilable(String)).returns(T.nilable(String)) }
                  def street_address2=(_street_address2); end
                  sig {
                    params(city: T.nilable(String), country: T.nilable(String), postal_code: T.nilable(String), region: T.nilable(String), street_address: T.nilable(String), street_address2: T.nilable(String)).void
                   }
                  def initialize(
                    city: nil,
                    country: nil,
                    postal_code: nil,
                    region: nil,
                    street_address: nil,
                    street_address2: nil
                  ); end
                end
                class Insurance < ::Stripe::RequestParams
                  # Insurance currency.
                  sig { returns(T.nilable(String)) }
                  def currency; end
                  sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
                  def currency=(_currency); end
                  # Name of the company providing the insurance.
                  sig { returns(T.nilable(String)) }
                  def insurance_company_name; end
                  sig {
                    params(_insurance_company_name: T.nilable(String)).returns(T.nilable(String))
                   }
                  def insurance_company_name=(_insurance_company_name); end
                  # Type of insurance.
                  sig { returns(T.nilable(String)) }
                  def insurance_type; end
                  sig { params(_insurance_type: T.nilable(String)).returns(T.nilable(String)) }
                  def insurance_type=(_insurance_type); end
                  # Price of insurance in cents.
                  sig { returns(T.nilable(Integer)) }
                  def price; end
                  sig { params(_price: T.nilable(Integer)).returns(T.nilable(Integer)) }
                  def price=(_price); end
                  sig {
                    params(currency: T.nilable(String), insurance_company_name: T.nilable(String), insurance_type: T.nilable(String), price: T.nilable(Integer)).void
                   }
                  def initialize(
                    currency: nil,
                    insurance_company_name: nil,
                    insurance_type: nil,
                    price: nil
                  ); end
                end
                # Indicates if the tickets are digitally checked when entering the venue.
                sig { returns(T.nilable(T::Boolean)) }
                def access_controlled_venue; end
                sig {
                  params(_access_controlled_venue: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
                 }
                def access_controlled_venue=(_access_controlled_venue); end
                # Address of the event.
                sig {
                  returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::EventReservationDetail::Address))
                 }
                def address; end
                sig {
                  params(_address: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::EventReservationDetail::Address)).returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::EventReservationDetail::Address))
                 }
                def address=(_address); end
                # Name of associated or partner company for the service.
                sig { returns(T.nilable(String)) }
                def affiliate_name; end
                sig { params(_affiliate_name: T.nilable(String)).returns(T.nilable(String)) }
                def affiliate_name=(_affiliate_name); end
                # End timestamp of the event.
                sig { returns(T.nilable(Integer)) }
                def ends_at; end
                sig { params(_ends_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
                def ends_at=(_ends_at); end
                # Company selling the ticket.
                sig { returns(T.nilable(String)) }
                def event_company_name; end
                sig { params(_event_company_name: T.nilable(String)).returns(T.nilable(String)) }
                def event_company_name=(_event_company_name); end
                # Name of the event.
                sig { returns(T.nilable(String)) }
                def event_name; end
                sig { params(_event_name: T.nilable(String)).returns(T.nilable(String)) }
                def event_name=(_event_name); end
                # Type of the event.
                sig { returns(T.nilable(String)) }
                def event_type; end
                sig { params(_event_type: T.nilable(String)).returns(T.nilable(String)) }
                def event_type=(_event_type); end
                # List of insurances for this event.
                sig {
                  returns(T.nilable(T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::EventReservationDetail::Insurance]))
                 }
                def insurances; end
                sig {
                  params(_insurances: T.nilable(T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::EventReservationDetail::Insurance])).returns(T.nilable(T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::EventReservationDetail::Insurance]))
                 }
                def insurances=(_insurances); end
                # Start timestamp of the event.
                sig { returns(T.nilable(Integer)) }
                def starts_at; end
                sig { params(_starts_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
                def starts_at=(_starts_at); end
                # Name of the venue where the event takes place.
                sig { returns(T.nilable(String)) }
                def venue_name; end
                sig { params(_venue_name: T.nilable(String)).returns(T.nilable(String)) }
                def venue_name=(_venue_name); end
                sig {
                  params(access_controlled_venue: T.nilable(T::Boolean), address: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::EventReservationDetail::Address), affiliate_name: T.nilable(String), ends_at: T.nilable(Integer), event_company_name: T.nilable(String), event_name: T.nilable(String), event_type: T.nilable(String), insurances: T.nilable(T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::EventReservationDetail::Insurance]), starts_at: T.nilable(Integer), venue_name: T.nilable(String)).void
                 }
                def initialize(
                  access_controlled_venue: nil,
                  address: nil,
                  affiliate_name: nil,
                  ends_at: nil,
                  event_company_name: nil,
                  event_name: nil,
                  event_type: nil,
                  insurances: nil,
                  starts_at: nil,
                  venue_name: nil
                ); end
              end
              class FerryReservationDetail < ::Stripe::RequestParams
                class Arrival < ::Stripe::RequestParams
                  class Address < ::Stripe::RequestParams
                    # The city or town.
                    sig { returns(T.nilable(String)) }
                    def city; end
                    sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
                    def city=(_city); end
                    # The country in ISO 3166-1 alpha-2 format.
                    sig { returns(T.nilable(String)) }
                    def country; end
                    sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
                    def country=(_country); end
                    # The postal code formatted according to country.
                    sig { returns(T.nilable(String)) }
                    def postal_code; end
                    sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
                    def postal_code=(_postal_code); end
                    # The state, county, province, or region formatted according to country.
                    sig { returns(T.nilable(String)) }
                    def region; end
                    sig { params(_region: T.nilable(String)).returns(T.nilable(String)) }
                    def region=(_region); end
                    # Line 1 of the street address.
                    sig { returns(T.nilable(String)) }
                    def street_address; end
                    sig { params(_street_address: T.nilable(String)).returns(T.nilable(String)) }
                    def street_address=(_street_address); end
                    # Line 2 of the street address.
                    sig { returns(T.nilable(String)) }
                    def street_address2; end
                    sig { params(_street_address2: T.nilable(String)).returns(T.nilable(String)) }
                    def street_address2=(_street_address2); end
                    sig {
                      params(city: T.nilable(String), country: T.nilable(String), postal_code: T.nilable(String), region: T.nilable(String), street_address: T.nilable(String), street_address2: T.nilable(String)).void
                     }
                    def initialize(
                      city: nil,
                      country: nil,
                      postal_code: nil,
                      region: nil,
                      street_address: nil,
                      street_address2: nil
                    ); end
                  end
                  # Address of the arrival location.
                  sig {
                    returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::FerryReservationDetail::Arrival::Address))
                   }
                  def address; end
                  sig {
                    params(_address: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::FerryReservationDetail::Arrival::Address)).returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::FerryReservationDetail::Arrival::Address))
                   }
                  def address=(_address); end
                  # Identifier name or reference for the arrival location.
                  sig { returns(T.nilable(String)) }
                  def arrival_location; end
                  sig { params(_arrival_location: T.nilable(String)).returns(T.nilable(String)) }
                  def arrival_location=(_arrival_location); end
                  sig {
                    params(address: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::FerryReservationDetail::Arrival::Address), arrival_location: T.nilable(String)).void
                   }
                  def initialize(address: nil, arrival_location: nil); end
                end
                class Departure < ::Stripe::RequestParams
                  class Address < ::Stripe::RequestParams
                    # The city or town.
                    sig { returns(T.nilable(String)) }
                    def city; end
                    sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
                    def city=(_city); end
                    # The country in ISO 3166-1 alpha-2 format.
                    sig { returns(T.nilable(String)) }
                    def country; end
                    sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
                    def country=(_country); end
                    # The postal code formatted according to country.
                    sig { returns(T.nilable(String)) }
                    def postal_code; end
                    sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
                    def postal_code=(_postal_code); end
                    # The state, county, province, or region formatted according to country.
                    sig { returns(T.nilable(String)) }
                    def region; end
                    sig { params(_region: T.nilable(String)).returns(T.nilable(String)) }
                    def region=(_region); end
                    # Line 1 of the street address.
                    sig { returns(T.nilable(String)) }
                    def street_address; end
                    sig { params(_street_address: T.nilable(String)).returns(T.nilable(String)) }
                    def street_address=(_street_address); end
                    # Line 2 of the street address.
                    sig { returns(T.nilable(String)) }
                    def street_address2; end
                    sig { params(_street_address2: T.nilable(String)).returns(T.nilable(String)) }
                    def street_address2=(_street_address2); end
                    sig {
                      params(city: T.nilable(String), country: T.nilable(String), postal_code: T.nilable(String), region: T.nilable(String), street_address: T.nilable(String), street_address2: T.nilable(String)).void
                     }
                    def initialize(
                      city: nil,
                      country: nil,
                      postal_code: nil,
                      region: nil,
                      street_address: nil,
                      street_address2: nil
                    ); end
                  end
                  # Address of the departure location.
                  sig {
                    returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::FerryReservationDetail::Departure::Address))
                   }
                  def address; end
                  sig {
                    params(_address: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::FerryReservationDetail::Departure::Address)).returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::FerryReservationDetail::Departure::Address))
                   }
                  def address=(_address); end
                  # Timestamp of departure.
                  sig { returns(T.nilable(Integer)) }
                  def departs_at; end
                  sig { params(_departs_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
                  def departs_at=(_departs_at); end
                  # Identifier name or reference for the origin location.
                  sig { returns(T.nilable(String)) }
                  def departure_location; end
                  sig { params(_departure_location: T.nilable(String)).returns(T.nilable(String)) }
                  def departure_location=(_departure_location); end
                  sig {
                    params(address: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::FerryReservationDetail::Departure::Address), departs_at: T.nilable(Integer), departure_location: T.nilable(String)).void
                   }
                  def initialize(address: nil, departs_at: nil, departure_location: nil); end
                end
                class Insurance < ::Stripe::RequestParams
                  # Insurance currency.
                  sig { returns(T.nilable(String)) }
                  def currency; end
                  sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
                  def currency=(_currency); end
                  # Name of the company providing the insurance.
                  sig { returns(T.nilable(String)) }
                  def insurance_company_name; end
                  sig {
                    params(_insurance_company_name: T.nilable(String)).returns(T.nilable(String))
                   }
                  def insurance_company_name=(_insurance_company_name); end
                  # Type of insurance.
                  sig { returns(T.nilable(String)) }
                  def insurance_type; end
                  sig { params(_insurance_type: T.nilable(String)).returns(T.nilable(String)) }
                  def insurance_type=(_insurance_type); end
                  # Price of insurance in cents.
                  sig { returns(T.nilable(Integer)) }
                  def price; end
                  sig { params(_price: T.nilable(Integer)).returns(T.nilable(Integer)) }
                  def price=(_price); end
                  sig {
                    params(currency: T.nilable(String), insurance_company_name: T.nilable(String), insurance_type: T.nilable(String), price: T.nilable(Integer)).void
                   }
                  def initialize(
                    currency: nil,
                    insurance_company_name: nil,
                    insurance_type: nil,
                    price: nil
                  ); end
                end
                class Passenger < ::Stripe::RequestParams
                  # The family name of the person.
                  sig { returns(T.nilable(String)) }
                  def family_name; end
                  sig { params(_family_name: T.nilable(String)).returns(T.nilable(String)) }
                  def family_name=(_family_name); end
                  # The given name of the person.
                  sig { returns(T.nilable(String)) }
                  def given_name; end
                  sig { params(_given_name: T.nilable(String)).returns(T.nilable(String)) }
                  def given_name=(_given_name); end
                  sig { params(family_name: T.nilable(String), given_name: T.nilable(String)).void }
                  def initialize(family_name: nil, given_name: nil); end
                end
                # Name of associated or partner company for the service.
                sig { returns(T.nilable(String)) }
                def affiliate_name; end
                sig { params(_affiliate_name: T.nilable(String)).returns(T.nilable(String)) }
                def affiliate_name=(_affiliate_name); end
                # Arrival details.
                sig {
                  returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::FerryReservationDetail::Arrival))
                 }
                def arrival; end
                sig {
                  params(_arrival: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::FerryReservationDetail::Arrival)).returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::FerryReservationDetail::Arrival))
                 }
                def arrival=(_arrival); end
                # Name of transportation company.
                sig { returns(T.nilable(String)) }
                def carrier_name; end
                sig { params(_carrier_name: T.nilable(String)).returns(T.nilable(String)) }
                def carrier_name=(_carrier_name); end
                # Currency.
                sig { returns(T.nilable(String)) }
                def currency; end
                sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
                def currency=(_currency); end
                # Departure details.
                sig {
                  returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::FerryReservationDetail::Departure))
                 }
                def departure; end
                sig {
                  params(_departure: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::FerryReservationDetail::Departure)).returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::FerryReservationDetail::Departure))
                 }
                def departure=(_departure); end
                # List of insurances for this reservation.
                sig {
                  returns(T.nilable(T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::FerryReservationDetail::Insurance]))
                 }
                def insurances; end
                sig {
                  params(_insurances: T.nilable(T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::FerryReservationDetail::Insurance])).returns(T.nilable(T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::FerryReservationDetail::Insurance]))
                 }
                def insurances=(_insurances); end
                # List of passengers that this reservation applies to.
                sig {
                  returns(T.nilable(T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::FerryReservationDetail::Passenger]))
                 }
                def passengers; end
                sig {
                  params(_passengers: T.nilable(T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::FerryReservationDetail::Passenger])).returns(T.nilable(T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::FerryReservationDetail::Passenger]))
                 }
                def passengers=(_passengers); end
                # Price in cents.
                sig { returns(T.nilable(Integer)) }
                def price; end
                sig { params(_price: T.nilable(Integer)).returns(T.nilable(Integer)) }
                def price=(_price); end
                # Ticket class.
                sig { returns(T.nilable(String)) }
                def ticket_class; end
                sig { params(_ticket_class: T.nilable(String)).returns(T.nilable(String)) }
                def ticket_class=(_ticket_class); end
                sig {
                  params(affiliate_name: T.nilable(String), arrival: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::FerryReservationDetail::Arrival), carrier_name: T.nilable(String), currency: T.nilable(String), departure: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::FerryReservationDetail::Departure), insurances: T.nilable(T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::FerryReservationDetail::Insurance]), passengers: T.nilable(T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::FerryReservationDetail::Passenger]), price: T.nilable(Integer), ticket_class: T.nilable(String)).void
                 }
                def initialize(
                  affiliate_name: nil,
                  arrival: nil,
                  carrier_name: nil,
                  currency: nil,
                  departure: nil,
                  insurances: nil,
                  passengers: nil,
                  price: nil,
                  ticket_class: nil
                ); end
              end
              class Insurance < ::Stripe::RequestParams
                # Insurance currency.
                sig { returns(T.nilable(String)) }
                def currency; end
                sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
                def currency=(_currency); end
                # Name of the company providing the insurance.
                sig { returns(T.nilable(String)) }
                def insurance_company_name; end
                sig {
                  params(_insurance_company_name: T.nilable(String)).returns(T.nilable(String))
                 }
                def insurance_company_name=(_insurance_company_name); end
                # Type of insurance
                sig { returns(T.nilable(String)) }
                def insurance_type; end
                sig { params(_insurance_type: T.nilable(String)).returns(T.nilable(String)) }
                def insurance_type=(_insurance_type); end
                # Price of insurance in cents.
                sig { returns(T.nilable(Integer)) }
                def price; end
                sig { params(_price: T.nilable(Integer)).returns(T.nilable(Integer)) }
                def price=(_price); end
                sig {
                  params(currency: T.nilable(String), insurance_company_name: T.nilable(String), insurance_type: T.nilable(String), price: T.nilable(Integer)).void
                 }
                def initialize(
                  currency: nil,
                  insurance_company_name: nil,
                  insurance_type: nil,
                  price: nil
                ); end
              end
              class MarketplaceSeller < ::Stripe::RequestParams
                class MarketplaceSellerAddress < ::Stripe::RequestParams
                  # The city or town.
                  sig { returns(T.nilable(String)) }
                  def city; end
                  sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
                  def city=(_city); end
                  # The country in ISO 3166-1 alpha-2 format.
                  sig { returns(T.nilable(String)) }
                  def country; end
                  sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
                  def country=(_country); end
                  # The postal code formatted according to country.
                  sig { returns(T.nilable(String)) }
                  def postal_code; end
                  sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
                  def postal_code=(_postal_code); end
                  # The state, county, province, or region formatted according to country.
                  sig { returns(T.nilable(String)) }
                  def region; end
                  sig { params(_region: T.nilable(String)).returns(T.nilable(String)) }
                  def region=(_region); end
                  # Line 1 of the street address.
                  sig { returns(T.nilable(String)) }
                  def street_address; end
                  sig { params(_street_address: T.nilable(String)).returns(T.nilable(String)) }
                  def street_address=(_street_address); end
                  # Line 2 of the street address.
                  sig { returns(T.nilable(String)) }
                  def street_address2; end
                  sig { params(_street_address2: T.nilable(String)).returns(T.nilable(String)) }
                  def street_address2=(_street_address2); end
                  sig {
                    params(city: T.nilable(String), country: T.nilable(String), postal_code: T.nilable(String), region: T.nilable(String), street_address: T.nilable(String), street_address2: T.nilable(String)).void
                   }
                  def initialize(
                    city: nil,
                    country: nil,
                    postal_code: nil,
                    region: nil,
                    street_address: nil,
                    street_address2: nil
                  ); end
                end
                # The references to line items for purchases with multiple associated sub-sellers.
                sig { returns(T.nilable(T::Array[String])) }
                def line_item_references; end
                sig {
                  params(_line_item_references: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
                 }
                def line_item_references=(_line_item_references); end
                # The address of the selling or delivering merchant.
                sig {
                  returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::MarketplaceSeller::MarketplaceSellerAddress))
                 }
                def marketplace_seller_address; end
                sig {
                  params(_marketplace_seller_address: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::MarketplaceSeller::MarketplaceSellerAddress)).returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::MarketplaceSeller::MarketplaceSellerAddress))
                 }
                def marketplace_seller_address=(_marketplace_seller_address); end
                # The name of the marketplace seller.
                sig { returns(T.nilable(String)) }
                def marketplace_seller_name; end
                sig {
                  params(_marketplace_seller_name: T.nilable(String)).returns(T.nilable(String))
                 }
                def marketplace_seller_name=(_marketplace_seller_name); end
                # The unique identifier for the marketplace seller.
                sig { returns(T.nilable(String)) }
                def marketplace_seller_reference; end
                sig {
                  params(_marketplace_seller_reference: T.nilable(String)).returns(T.nilable(String))
                 }
                def marketplace_seller_reference=(_marketplace_seller_reference); end
                # The number of transactions the sub-seller completed in the last 12 months.
                sig { returns(T.nilable(Integer)) }
                def number_of_transactions; end
                sig {
                  params(_number_of_transactions: T.nilable(Integer)).returns(T.nilable(Integer))
                 }
                def number_of_transactions=(_number_of_transactions); end
                # The category of the product.
                sig { returns(T.nilable(String)) }
                def product_category; end
                sig { params(_product_category: T.nilable(String)).returns(T.nilable(String)) }
                def product_category=(_product_category); end
                # The date when the seller's account with the marketplace was last logged in.
                sig { returns(T.nilable(Integer)) }
                def seller_last_login_at; end
                sig {
                  params(_seller_last_login_at: T.nilable(Integer)).returns(T.nilable(Integer))
                 }
                def seller_last_login_at=(_seller_last_login_at); end
                # The current rating of the marketplace seller. If the marketplace uses numeric ranking, map these to the enum values.
                sig { returns(T.nilable(String)) }
                def seller_rating; end
                sig { params(_seller_rating: T.nilable(String)).returns(T.nilable(String)) }
                def seller_rating=(_seller_rating); end
                # The date when the seller's account with the marketplace was created.
                sig { returns(T.nilable(Integer)) }
                def seller_registered_at; end
                sig {
                  params(_seller_registered_at: T.nilable(Integer)).returns(T.nilable(Integer))
                 }
                def seller_registered_at=(_seller_registered_at); end
                # The date when the seller's account with the marketplace was last updated.
                sig { returns(T.nilable(Integer)) }
                def seller_updated_at; end
                sig { params(_seller_updated_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
                def seller_updated_at=(_seller_updated_at); end
                # The references to shipping addresses for purchases with multiple associated sub-sellers.
                sig { returns(T.nilable(T::Array[String])) }
                def shipping_references; end
                sig {
                  params(_shipping_references: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
                 }
                def shipping_references=(_shipping_references); end
                # The accumulated amount of sales transactions made by the sub-merchant or sub-seller within the past 12 months in the payment currency. These transactions are in minor currency units.
                sig { returns(T.nilable(Integer)) }
                def volume_of_transactions; end
                sig {
                  params(_volume_of_transactions: T.nilable(Integer)).returns(T.nilable(Integer))
                 }
                def volume_of_transactions=(_volume_of_transactions); end
                sig {
                  params(line_item_references: T.nilable(T::Array[String]), marketplace_seller_address: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::MarketplaceSeller::MarketplaceSellerAddress), marketplace_seller_name: T.nilable(String), marketplace_seller_reference: T.nilable(String), number_of_transactions: T.nilable(Integer), product_category: T.nilable(String), seller_last_login_at: T.nilable(Integer), seller_rating: T.nilable(String), seller_registered_at: T.nilable(Integer), seller_updated_at: T.nilable(Integer), shipping_references: T.nilable(T::Array[String]), volume_of_transactions: T.nilable(Integer)).void
                 }
                def initialize(
                  line_item_references: nil,
                  marketplace_seller_address: nil,
                  marketplace_seller_name: nil,
                  marketplace_seller_reference: nil,
                  number_of_transactions: nil,
                  product_category: nil,
                  seller_last_login_at: nil,
                  seller_rating: nil,
                  seller_registered_at: nil,
                  seller_updated_at: nil,
                  shipping_references: nil,
                  volume_of_transactions: nil
                ); end
              end
              class RoundTripReservationDetail < ::Stripe::RequestParams
                class Arrival < ::Stripe::RequestParams
                  class Address < ::Stripe::RequestParams
                    # The city or town.
                    sig { returns(T.nilable(String)) }
                    def city; end
                    sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
                    def city=(_city); end
                    # The country in ISO 3166-1 alpha-2 format.
                    sig { returns(T.nilable(String)) }
                    def country; end
                    sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
                    def country=(_country); end
                    # The postal code formatted according to country.
                    sig { returns(T.nilable(String)) }
                    def postal_code; end
                    sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
                    def postal_code=(_postal_code); end
                    # The state, county, province, or region formatted according to country.
                    sig { returns(T.nilable(String)) }
                    def region; end
                    sig { params(_region: T.nilable(String)).returns(T.nilable(String)) }
                    def region=(_region); end
                    # Line 1 of the street address.
                    sig { returns(T.nilable(String)) }
                    def street_address; end
                    sig { params(_street_address: T.nilable(String)).returns(T.nilable(String)) }
                    def street_address=(_street_address); end
                    # Line 2 of the street address.
                    sig { returns(T.nilable(String)) }
                    def street_address2; end
                    sig { params(_street_address2: T.nilable(String)).returns(T.nilable(String)) }
                    def street_address2=(_street_address2); end
                    sig {
                      params(city: T.nilable(String), country: T.nilable(String), postal_code: T.nilable(String), region: T.nilable(String), street_address: T.nilable(String), street_address2: T.nilable(String)).void
                     }
                    def initialize(
                      city: nil,
                      country: nil,
                      postal_code: nil,
                      region: nil,
                      street_address: nil,
                      street_address2: nil
                    ); end
                  end
                  # Address of the arrival location.
                  sig {
                    returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::RoundTripReservationDetail::Arrival::Address))
                   }
                  def address; end
                  sig {
                    params(_address: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::RoundTripReservationDetail::Arrival::Address)).returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::RoundTripReservationDetail::Arrival::Address))
                   }
                  def address=(_address); end
                  # Identifier name or reference for the arrival location.
                  sig { returns(T.nilable(String)) }
                  def arrival_location; end
                  sig { params(_arrival_location: T.nilable(String)).returns(T.nilable(String)) }
                  def arrival_location=(_arrival_location); end
                  sig {
                    params(address: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::RoundTripReservationDetail::Arrival::Address), arrival_location: T.nilable(String)).void
                   }
                  def initialize(address: nil, arrival_location: nil); end
                end
                class Departure < ::Stripe::RequestParams
                  class Address < ::Stripe::RequestParams
                    # The city or town.
                    sig { returns(T.nilable(String)) }
                    def city; end
                    sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
                    def city=(_city); end
                    # The country in ISO 3166-1 alpha-2 format.
                    sig { returns(T.nilable(String)) }
                    def country; end
                    sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
                    def country=(_country); end
                    # The postal code formatted according to country.
                    sig { returns(T.nilable(String)) }
                    def postal_code; end
                    sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
                    def postal_code=(_postal_code); end
                    # The state, county, province, or region formatted according to country.
                    sig { returns(T.nilable(String)) }
                    def region; end
                    sig { params(_region: T.nilable(String)).returns(T.nilable(String)) }
                    def region=(_region); end
                    # Line 1 of the street address.
                    sig { returns(T.nilable(String)) }
                    def street_address; end
                    sig { params(_street_address: T.nilable(String)).returns(T.nilable(String)) }
                    def street_address=(_street_address); end
                    # Line 2 of the street address.
                    sig { returns(T.nilable(String)) }
                    def street_address2; end
                    sig { params(_street_address2: T.nilable(String)).returns(T.nilable(String)) }
                    def street_address2=(_street_address2); end
                    sig {
                      params(city: T.nilable(String), country: T.nilable(String), postal_code: T.nilable(String), region: T.nilable(String), street_address: T.nilable(String), street_address2: T.nilable(String)).void
                     }
                    def initialize(
                      city: nil,
                      country: nil,
                      postal_code: nil,
                      region: nil,
                      street_address: nil,
                      street_address2: nil
                    ); end
                  end
                  # Address of the departure location.
                  sig {
                    returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::RoundTripReservationDetail::Departure::Address))
                   }
                  def address; end
                  sig {
                    params(_address: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::RoundTripReservationDetail::Departure::Address)).returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::RoundTripReservationDetail::Departure::Address))
                   }
                  def address=(_address); end
                  # Timestamp of departure.
                  sig { returns(T.nilable(Integer)) }
                  def departs_at; end
                  sig { params(_departs_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
                  def departs_at=(_departs_at); end
                  # Identifier name or reference for the origin location.
                  sig { returns(T.nilable(String)) }
                  def departure_location; end
                  sig { params(_departure_location: T.nilable(String)).returns(T.nilable(String)) }
                  def departure_location=(_departure_location); end
                  sig {
                    params(address: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::RoundTripReservationDetail::Departure::Address), departs_at: T.nilable(Integer), departure_location: T.nilable(String)).void
                   }
                  def initialize(address: nil, departs_at: nil, departure_location: nil); end
                end
                class Insurance < ::Stripe::RequestParams
                  # Insurance currency.
                  sig { returns(T.nilable(String)) }
                  def currency; end
                  sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
                  def currency=(_currency); end
                  # Name of the company providing the insurance.
                  sig { returns(T.nilable(String)) }
                  def insurance_company_name; end
                  sig {
                    params(_insurance_company_name: T.nilable(String)).returns(T.nilable(String))
                   }
                  def insurance_company_name=(_insurance_company_name); end
                  # Type of insurance.
                  sig { returns(T.nilable(String)) }
                  def insurance_type; end
                  sig { params(_insurance_type: T.nilable(String)).returns(T.nilable(String)) }
                  def insurance_type=(_insurance_type); end
                  # Price of insurance in cents.
                  sig { returns(T.nilable(Integer)) }
                  def price; end
                  sig { params(_price: T.nilable(Integer)).returns(T.nilable(Integer)) }
                  def price=(_price); end
                  sig {
                    params(currency: T.nilable(String), insurance_company_name: T.nilable(String), insurance_type: T.nilable(String), price: T.nilable(Integer)).void
                   }
                  def initialize(
                    currency: nil,
                    insurance_company_name: nil,
                    insurance_type: nil,
                    price: nil
                  ); end
                end
                class Passenger < ::Stripe::RequestParams
                  # The family name of the person.
                  sig { returns(T.nilable(String)) }
                  def family_name; end
                  sig { params(_family_name: T.nilable(String)).returns(T.nilable(String)) }
                  def family_name=(_family_name); end
                  # The given name of the person.
                  sig { returns(T.nilable(String)) }
                  def given_name; end
                  sig { params(_given_name: T.nilable(String)).returns(T.nilable(String)) }
                  def given_name=(_given_name); end
                  sig { params(family_name: T.nilable(String), given_name: T.nilable(String)).void }
                  def initialize(family_name: nil, given_name: nil); end
                end
                # Name of associated or partner company for the service.
                sig { returns(T.nilable(String)) }
                def affiliate_name; end
                sig { params(_affiliate_name: T.nilable(String)).returns(T.nilable(String)) }
                def affiliate_name=(_affiliate_name); end
                # Arrival details.
                sig {
                  returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::RoundTripReservationDetail::Arrival))
                 }
                def arrival; end
                sig {
                  params(_arrival: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::RoundTripReservationDetail::Arrival)).returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::RoundTripReservationDetail::Arrival))
                 }
                def arrival=(_arrival); end
                # Name of transportation company.
                sig { returns(T.nilable(String)) }
                def carrier_name; end
                sig { params(_carrier_name: T.nilable(String)).returns(T.nilable(String)) }
                def carrier_name=(_carrier_name); end
                # Currency.
                sig { returns(T.nilable(String)) }
                def currency; end
                sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
                def currency=(_currency); end
                # Departure details.
                sig {
                  returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::RoundTripReservationDetail::Departure))
                 }
                def departure; end
                sig {
                  params(_departure: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::RoundTripReservationDetail::Departure)).returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::RoundTripReservationDetail::Departure))
                 }
                def departure=(_departure); end
                # List of insurances for this reservation.
                sig {
                  returns(T.nilable(T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::RoundTripReservationDetail::Insurance]))
                 }
                def insurances; end
                sig {
                  params(_insurances: T.nilable(T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::RoundTripReservationDetail::Insurance])).returns(T.nilable(T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::RoundTripReservationDetail::Insurance]))
                 }
                def insurances=(_insurances); end
                # List of passengers that this reservation applies to.
                sig {
                  returns(T.nilable(T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::RoundTripReservationDetail::Passenger]))
                 }
                def passengers; end
                sig {
                  params(_passengers: T.nilable(T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::RoundTripReservationDetail::Passenger])).returns(T.nilable(T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::RoundTripReservationDetail::Passenger]))
                 }
                def passengers=(_passengers); end
                # Price in cents.
                sig { returns(T.nilable(Integer)) }
                def price; end
                sig { params(_price: T.nilable(Integer)).returns(T.nilable(Integer)) }
                def price=(_price); end
                # Ticket class.
                sig { returns(T.nilable(String)) }
                def ticket_class; end
                sig { params(_ticket_class: T.nilable(String)).returns(T.nilable(String)) }
                def ticket_class=(_ticket_class); end
                sig {
                  params(affiliate_name: T.nilable(String), arrival: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::RoundTripReservationDetail::Arrival), carrier_name: T.nilable(String), currency: T.nilable(String), departure: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::RoundTripReservationDetail::Departure), insurances: T.nilable(T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::RoundTripReservationDetail::Insurance]), passengers: T.nilable(T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::RoundTripReservationDetail::Passenger]), price: T.nilable(Integer), ticket_class: T.nilable(String)).void
                 }
                def initialize(
                  affiliate_name: nil,
                  arrival: nil,
                  carrier_name: nil,
                  currency: nil,
                  departure: nil,
                  insurances: nil,
                  passengers: nil,
                  price: nil,
                  ticket_class: nil
                ); end
              end
              class TrainReservationDetail < ::Stripe::RequestParams
                class Arrival < ::Stripe::RequestParams
                  class Address < ::Stripe::RequestParams
                    # The city or town.
                    sig { returns(T.nilable(String)) }
                    def city; end
                    sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
                    def city=(_city); end
                    # The country in ISO 3166-1 alpha-2 format.
                    sig { returns(T.nilable(String)) }
                    def country; end
                    sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
                    def country=(_country); end
                    # The postal code formatted according to country.
                    sig { returns(T.nilable(String)) }
                    def postal_code; end
                    sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
                    def postal_code=(_postal_code); end
                    # The state, county, province, or region formatted according to country.
                    sig { returns(T.nilable(String)) }
                    def region; end
                    sig { params(_region: T.nilable(String)).returns(T.nilable(String)) }
                    def region=(_region); end
                    # Line 1 of the street address.
                    sig { returns(T.nilable(String)) }
                    def street_address; end
                    sig { params(_street_address: T.nilable(String)).returns(T.nilable(String)) }
                    def street_address=(_street_address); end
                    # Line 2 of the street address.
                    sig { returns(T.nilable(String)) }
                    def street_address2; end
                    sig { params(_street_address2: T.nilable(String)).returns(T.nilable(String)) }
                    def street_address2=(_street_address2); end
                    sig {
                      params(city: T.nilable(String), country: T.nilable(String), postal_code: T.nilable(String), region: T.nilable(String), street_address: T.nilable(String), street_address2: T.nilable(String)).void
                     }
                    def initialize(
                      city: nil,
                      country: nil,
                      postal_code: nil,
                      region: nil,
                      street_address: nil,
                      street_address2: nil
                    ); end
                  end
                  # Address of the arrival location.
                  sig {
                    returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::TrainReservationDetail::Arrival::Address))
                   }
                  def address; end
                  sig {
                    params(_address: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::TrainReservationDetail::Arrival::Address)).returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::TrainReservationDetail::Arrival::Address))
                   }
                  def address=(_address); end
                  # Identifier name or reference for the arrival location.
                  sig { returns(T.nilable(String)) }
                  def arrival_location; end
                  sig { params(_arrival_location: T.nilable(String)).returns(T.nilable(String)) }
                  def arrival_location=(_arrival_location); end
                  sig {
                    params(address: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::TrainReservationDetail::Arrival::Address), arrival_location: T.nilable(String)).void
                   }
                  def initialize(address: nil, arrival_location: nil); end
                end
                class Departure < ::Stripe::RequestParams
                  class Address < ::Stripe::RequestParams
                    # The city or town.
                    sig { returns(T.nilable(String)) }
                    def city; end
                    sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
                    def city=(_city); end
                    # The country in ISO 3166-1 alpha-2 format.
                    sig { returns(T.nilable(String)) }
                    def country; end
                    sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
                    def country=(_country); end
                    # The postal code formatted according to country.
                    sig { returns(T.nilable(String)) }
                    def postal_code; end
                    sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
                    def postal_code=(_postal_code); end
                    # The state, county, province, or region formatted according to country.
                    sig { returns(T.nilable(String)) }
                    def region; end
                    sig { params(_region: T.nilable(String)).returns(T.nilable(String)) }
                    def region=(_region); end
                    # Line 1 of the street address.
                    sig { returns(T.nilable(String)) }
                    def street_address; end
                    sig { params(_street_address: T.nilable(String)).returns(T.nilable(String)) }
                    def street_address=(_street_address); end
                    # Line 2 of the street address.
                    sig { returns(T.nilable(String)) }
                    def street_address2; end
                    sig { params(_street_address2: T.nilable(String)).returns(T.nilable(String)) }
                    def street_address2=(_street_address2); end
                    sig {
                      params(city: T.nilable(String), country: T.nilable(String), postal_code: T.nilable(String), region: T.nilable(String), street_address: T.nilable(String), street_address2: T.nilable(String)).void
                     }
                    def initialize(
                      city: nil,
                      country: nil,
                      postal_code: nil,
                      region: nil,
                      street_address: nil,
                      street_address2: nil
                    ); end
                  end
                  # Address of the departure location.
                  sig {
                    returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::TrainReservationDetail::Departure::Address))
                   }
                  def address; end
                  sig {
                    params(_address: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::TrainReservationDetail::Departure::Address)).returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::TrainReservationDetail::Departure::Address))
                   }
                  def address=(_address); end
                  # Timestamp of departure.
                  sig { returns(T.nilable(Integer)) }
                  def departs_at; end
                  sig { params(_departs_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
                  def departs_at=(_departs_at); end
                  # Identifier name or reference for the origin location.
                  sig { returns(T.nilable(String)) }
                  def departure_location; end
                  sig { params(_departure_location: T.nilable(String)).returns(T.nilable(String)) }
                  def departure_location=(_departure_location); end
                  sig {
                    params(address: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::TrainReservationDetail::Departure::Address), departs_at: T.nilable(Integer), departure_location: T.nilable(String)).void
                   }
                  def initialize(address: nil, departs_at: nil, departure_location: nil); end
                end
                class Insurance < ::Stripe::RequestParams
                  # Insurance currency.
                  sig { returns(T.nilable(String)) }
                  def currency; end
                  sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
                  def currency=(_currency); end
                  # Name of the company providing the insurance.
                  sig { returns(T.nilable(String)) }
                  def insurance_company_name; end
                  sig {
                    params(_insurance_company_name: T.nilable(String)).returns(T.nilable(String))
                   }
                  def insurance_company_name=(_insurance_company_name); end
                  # Type of insurance.
                  sig { returns(T.nilable(String)) }
                  def insurance_type; end
                  sig { params(_insurance_type: T.nilable(String)).returns(T.nilable(String)) }
                  def insurance_type=(_insurance_type); end
                  # Price of insurance in cents.
                  sig { returns(T.nilable(Integer)) }
                  def price; end
                  sig { params(_price: T.nilable(Integer)).returns(T.nilable(Integer)) }
                  def price=(_price); end
                  sig {
                    params(currency: T.nilable(String), insurance_company_name: T.nilable(String), insurance_type: T.nilable(String), price: T.nilable(Integer)).void
                   }
                  def initialize(
                    currency: nil,
                    insurance_company_name: nil,
                    insurance_type: nil,
                    price: nil
                  ); end
                end
                class Passenger < ::Stripe::RequestParams
                  # The family name of the person.
                  sig { returns(T.nilable(String)) }
                  def family_name; end
                  sig { params(_family_name: T.nilable(String)).returns(T.nilable(String)) }
                  def family_name=(_family_name); end
                  # The given name of the person.
                  sig { returns(T.nilable(String)) }
                  def given_name; end
                  sig { params(_given_name: T.nilable(String)).returns(T.nilable(String)) }
                  def given_name=(_given_name); end
                  sig { params(family_name: T.nilable(String), given_name: T.nilable(String)).void }
                  def initialize(family_name: nil, given_name: nil); end
                end
                # Name of associated or partner company for the service.
                sig { returns(T.nilable(String)) }
                def affiliate_name; end
                sig { params(_affiliate_name: T.nilable(String)).returns(T.nilable(String)) }
                def affiliate_name=(_affiliate_name); end
                # Arrival details.
                sig {
                  returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::TrainReservationDetail::Arrival))
                 }
                def arrival; end
                sig {
                  params(_arrival: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::TrainReservationDetail::Arrival)).returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::TrainReservationDetail::Arrival))
                 }
                def arrival=(_arrival); end
                # Name of transportation company.
                sig { returns(T.nilable(String)) }
                def carrier_name; end
                sig { params(_carrier_name: T.nilable(String)).returns(T.nilable(String)) }
                def carrier_name=(_carrier_name); end
                # Currency.
                sig { returns(T.nilable(String)) }
                def currency; end
                sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
                def currency=(_currency); end
                # Departure details.
                sig {
                  returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::TrainReservationDetail::Departure))
                 }
                def departure; end
                sig {
                  params(_departure: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::TrainReservationDetail::Departure)).returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::TrainReservationDetail::Departure))
                 }
                def departure=(_departure); end
                # List of insurances for this reservation.
                sig {
                  returns(T.nilable(T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::TrainReservationDetail::Insurance]))
                 }
                def insurances; end
                sig {
                  params(_insurances: T.nilable(T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::TrainReservationDetail::Insurance])).returns(T.nilable(T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::TrainReservationDetail::Insurance]))
                 }
                def insurances=(_insurances); end
                # List of passengers that this reservation applies to.
                sig {
                  returns(T.nilable(T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::TrainReservationDetail::Passenger]))
                 }
                def passengers; end
                sig {
                  params(_passengers: T.nilable(T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::TrainReservationDetail::Passenger])).returns(T.nilable(T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::TrainReservationDetail::Passenger]))
                 }
                def passengers=(_passengers); end
                # Price in cents.
                sig { returns(T.nilable(Integer)) }
                def price; end
                sig { params(_price: T.nilable(Integer)).returns(T.nilable(Integer)) }
                def price=(_price); end
                # Ticket class.
                sig { returns(T.nilable(String)) }
                def ticket_class; end
                sig { params(_ticket_class: T.nilable(String)).returns(T.nilable(String)) }
                def ticket_class=(_ticket_class); end
                sig {
                  params(affiliate_name: T.nilable(String), arrival: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::TrainReservationDetail::Arrival), carrier_name: T.nilable(String), currency: T.nilable(String), departure: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::TrainReservationDetail::Departure), insurances: T.nilable(T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::TrainReservationDetail::Insurance]), passengers: T.nilable(T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::TrainReservationDetail::Passenger]), price: T.nilable(Integer), ticket_class: T.nilable(String)).void
                 }
                def initialize(
                  affiliate_name: nil,
                  arrival: nil,
                  carrier_name: nil,
                  currency: nil,
                  departure: nil,
                  insurances: nil,
                  passengers: nil,
                  price: nil,
                  ticket_class: nil
                ); end
              end
              class Voucher < ::Stripe::RequestParams
                # Name of associated or partner company for this voucher.
                sig { returns(T.nilable(String)) }
                def affiliate_name; end
                sig { params(_affiliate_name: T.nilable(String)).returns(T.nilable(String)) }
                def affiliate_name=(_affiliate_name); end
                # The voucher validity end time.
                sig { returns(T.nilable(Integer)) }
                def ends_at; end
                sig { params(_ends_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
                def ends_at=(_ends_at); end
                # The voucher validity start time.
                sig { returns(T.nilable(Integer)) }
                def starts_at; end
                sig { params(_starts_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
                def starts_at=(_starts_at); end
                # The issuer or provider of this voucher.
                sig { returns(T.nilable(String)) }
                def voucher_company; end
                sig { params(_voucher_company: T.nilable(String)).returns(T.nilable(String)) }
                def voucher_company=(_voucher_company); end
                # The name or reference to identify the voucher.
                sig { returns(T.nilable(String)) }
                def voucher_name; end
                sig { params(_voucher_name: T.nilable(String)).returns(T.nilable(String)) }
                def voucher_name=(_voucher_name); end
                # The type of this voucher.
                sig { returns(T.nilable(String)) }
                def voucher_type; end
                sig { params(_voucher_type: T.nilable(String)).returns(T.nilable(String)) }
                def voucher_type=(_voucher_type); end
                sig {
                  params(affiliate_name: T.nilable(String), ends_at: T.nilable(Integer), starts_at: T.nilable(Integer), voucher_company: T.nilable(String), voucher_name: T.nilable(String), voucher_type: T.nilable(String)).void
                 }
                def initialize(
                  affiliate_name: nil,
                  ends_at: nil,
                  starts_at: nil,
                  voucher_company: nil,
                  voucher_name: nil,
                  voucher_type: nil
                ); end
              end
              # Supplementary bus reservation details.
              sig {
                returns(T.nilable(T.any(String, T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::BusReservationDetail])))
               }
              def bus_reservation_details; end
              sig {
                params(_bus_reservation_details: T.nilable(T.any(String, T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::BusReservationDetail]))).returns(T.nilable(T.any(String, T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::BusReservationDetail])))
               }
              def bus_reservation_details=(_bus_reservation_details); end
              # Supplementary event reservation details.
              sig {
                returns(T.nilable(T.any(String, T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::EventReservationDetail])))
               }
              def event_reservation_details; end
              sig {
                params(_event_reservation_details: T.nilable(T.any(String, T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::EventReservationDetail]))).returns(T.nilable(T.any(String, T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::EventReservationDetail])))
               }
              def event_reservation_details=(_event_reservation_details); end
              # Supplementary ferry reservation details.
              sig {
                returns(T.nilable(T.any(String, T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::FerryReservationDetail])))
               }
              def ferry_reservation_details; end
              sig {
                params(_ferry_reservation_details: T.nilable(T.any(String, T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::FerryReservationDetail]))).returns(T.nilable(T.any(String, T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::FerryReservationDetail])))
               }
              def ferry_reservation_details=(_ferry_reservation_details); end
              # Supplementary insurance details.
              sig {
                returns(T.nilable(T.any(String, T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::Insurance])))
               }
              def insurances; end
              sig {
                params(_insurances: T.nilable(T.any(String, T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::Insurance]))).returns(T.nilable(T.any(String, T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::Insurance])))
               }
              def insurances=(_insurances); end
              # Supplementary marketplace seller details.
              sig {
                returns(T.nilable(T.any(String, T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::MarketplaceSeller])))
               }
              def marketplace_sellers; end
              sig {
                params(_marketplace_sellers: T.nilable(T.any(String, T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::MarketplaceSeller]))).returns(T.nilable(T.any(String, T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::MarketplaceSeller])))
               }
              def marketplace_sellers=(_marketplace_sellers); end
              # Supplementary round trip reservation details.
              sig {
                returns(T.nilable(T.any(String, T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::RoundTripReservationDetail])))
               }
              def round_trip_reservation_details; end
              sig {
                params(_round_trip_reservation_details: T.nilable(T.any(String, T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::RoundTripReservationDetail]))).returns(T.nilable(T.any(String, T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::RoundTripReservationDetail])))
               }
              def round_trip_reservation_details=(_round_trip_reservation_details); end
              # Supplementary train reservation details.
              sig {
                returns(T.nilable(T.any(String, T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::TrainReservationDetail])))
               }
              def train_reservation_details; end
              sig {
                params(_train_reservation_details: T.nilable(T.any(String, T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::TrainReservationDetail]))).returns(T.nilable(T.any(String, T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::TrainReservationDetail])))
               }
              def train_reservation_details=(_train_reservation_details); end
              # Voucher details, such as a gift card or discount code.
              sig {
                returns(T.nilable(T.any(String, T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::Voucher])))
               }
              def vouchers; end
              sig {
                params(_vouchers: T.nilable(T.any(String, T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::Voucher]))).returns(T.nilable(T.any(String, T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::Voucher])))
               }
              def vouchers=(_vouchers); end
              sig {
                params(bus_reservation_details: T.nilable(T.any(String, T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::BusReservationDetail])), event_reservation_details: T.nilable(T.any(String, T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::EventReservationDetail])), ferry_reservation_details: T.nilable(T.any(String, T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::FerryReservationDetail])), insurances: T.nilable(T.any(String, T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::Insurance])), marketplace_sellers: T.nilable(T.any(String, T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::MarketplaceSeller])), round_trip_reservation_details: T.nilable(T.any(String, T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::RoundTripReservationDetail])), train_reservation_details: T.nilable(T.any(String, T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::TrainReservationDetail])), vouchers: T.nilable(T.any(String, T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData::Voucher]))).void
               }
              def initialize(
                bus_reservation_details: nil,
                event_reservation_details: nil,
                ferry_reservation_details: nil,
                insurances: nil,
                marketplace_sellers: nil,
                round_trip_reservation_details: nil,
                train_reservation_details: nil,
                vouchers: nil
              ); end
            end
            # Controls when the funds are captured from the customer's account.
            #
            # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
            #
            # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
            sig { returns(T.nilable(String)) }
            def capture_method; end
            sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
            def capture_method=(_capture_method); end
            # On-demand details if setting up or charging an on-demand payment.
            sig {
              returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::OnDemand))
             }
            def on_demand; end
            sig {
              params(_on_demand: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::OnDemand)).returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::OnDemand))
             }
            def on_demand=(_on_demand); end
            # Preferred language of the Klarna authorization page that the customer is redirected to
            sig { returns(T.nilable(String)) }
            def preferred_locale; end
            sig { params(_preferred_locale: T.nilable(String)).returns(T.nilable(String)) }
            def preferred_locale=(_preferred_locale); end
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            #
            # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
            sig { returns(T.nilable(String)) }
            def setup_future_usage; end
            sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
            def setup_future_usage=(_setup_future_usage); end
            # Subscription details if setting up or charging a subscription.
            sig {
              returns(T.nilable(T.any(String, T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::Subscription])))
             }
            def subscriptions; end
            sig {
              params(_subscriptions: T.nilable(T.any(String, T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::Subscription]))).returns(T.nilable(T.any(String, T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::Subscription])))
             }
            def subscriptions=(_subscriptions); end
            # Supplementary Purchase Data for the corresponding Klarna payment
            sig {
              returns(T.nilable(T.any(String, OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData)))
             }
            def supplementary_purchase_data; end
            sig {
              params(_supplementary_purchase_data: T.nilable(T.any(String, OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData))).returns(T.nilable(T.any(String, OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData)))
             }
            def supplementary_purchase_data=(_supplementary_purchase_data); end
            sig {
              params(capture_method: T.nilable(String), on_demand: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::OnDemand), preferred_locale: T.nilable(String), setup_future_usage: T.nilable(String), subscriptions: T.nilable(T.any(String, T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::Subscription])), supplementary_purchase_data: T.nilable(T.any(String, OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna::SupplementaryPurchaseData))).void
             }
            def initialize(
              capture_method: nil,
              on_demand: nil,
              preferred_locale: nil,
              setup_future_usage: nil,
              subscriptions: nil,
              supplementary_purchase_data: nil
            ); end
          end
          class Link < ::Stripe::RequestParams
            # Controls when the funds are captured from the customer's account.
            #
            # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
            #
            # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
            sig { returns(T.nilable(String)) }
            def capture_method; end
            sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
            def capture_method=(_capture_method); end
            # [Deprecated] This is a legacy parameter that no longer has any function.
            sig { returns(T.nilable(String)) }
            def persistent_token; end
            sig { params(_persistent_token: T.nilable(String)).returns(T.nilable(String)) }
            def persistent_token=(_persistent_token); end
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            #
            # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
            sig { returns(T.nilable(T.any(String, String))) }
            def setup_future_usage; end
            sig {
              params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
             }
            def setup_future_usage=(_setup_future_usage); end
            sig {
              params(capture_method: T.nilable(String), persistent_token: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String))).void
             }
            def initialize(capture_method: nil, persistent_token: nil, setup_future_usage: nil); end
          end
          class Oxxo < ::Stripe::RequestParams
            # The number of calendar days before an OXXO voucher expires. For example, if you create an OXXO voucher on Monday and you set expires_after_days to 2, the OXXO invoice will expire on Wednesday at 23:59 America/Mexico_City time.
            sig { returns(T.nilable(Integer)) }
            def expires_after_days; end
            sig { params(_expires_after_days: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def expires_after_days=(_expires_after_days); end
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            #
            # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
            sig { returns(T.nilable(String)) }
            def setup_future_usage; end
            sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
            def setup_future_usage=(_setup_future_usage); end
            sig {
              params(expires_after_days: T.nilable(Integer), setup_future_usage: T.nilable(String)).void
             }
            def initialize(expires_after_days: nil, setup_future_usage: nil); end
          end
          class P24 < ::Stripe::RequestParams
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            #
            # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
            sig { returns(T.nilable(String)) }
            def setup_future_usage; end
            sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
            def setup_future_usage=(_setup_future_usage); end
            # Confirm that the payer has accepted the P24 terms and conditions.
            sig { returns(T.nilable(T::Boolean)) }
            def tos_shown_and_accepted; end
            sig {
              params(_tos_shown_and_accepted: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
             }
            def tos_shown_and_accepted=(_tos_shown_and_accepted); end
            sig {
              params(setup_future_usage: T.nilable(String), tos_shown_and_accepted: T.nilable(T::Boolean)).void
             }
            def initialize(setup_future_usage: nil, tos_shown_and_accepted: nil); end
          end
          class Paypal < ::Stripe::RequestParams
            class LineItem < ::Stripe::RequestParams
              class Tax < ::Stripe::RequestParams
                # The tax for a single unit of the line item in minor units. Cannot be a negative number.
                sig { returns(Integer) }
                def amount; end
                sig { params(_amount: Integer).returns(Integer) }
                def amount=(_amount); end
                # The tax behavior for the line item.
                sig { returns(String) }
                def behavior; end
                sig { params(_behavior: String).returns(String) }
                def behavior=(_behavior); end
                sig { params(amount: Integer, behavior: String).void }
                def initialize(amount: nil, behavior: nil); end
              end
              # Type of the line item.
              sig { returns(T.nilable(String)) }
              def category; end
              sig { params(_category: T.nilable(String)).returns(T.nilable(String)) }
              def category=(_category); end
              # Description of the line item.
              sig { returns(T.nilable(String)) }
              def description; end
              sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
              def description=(_description); end
              # Descriptive name of the line item.
              sig { returns(String) }
              def name; end
              sig { params(_name: String).returns(String) }
              def name=(_name); end
              # Quantity of the line item. Must be a positive number.
              sig { returns(Integer) }
              def quantity; end
              sig { params(_quantity: Integer).returns(Integer) }
              def quantity=(_quantity); end
              # Client facing stock keeping unit, article number or similar.
              sig { returns(T.nilable(String)) }
              def sku; end
              sig { params(_sku: T.nilable(String)).returns(T.nilable(String)) }
              def sku=(_sku); end
              # The Stripe account ID of the connected account that sells the item.
              sig { returns(T.nilable(String)) }
              def sold_by; end
              sig { params(_sold_by: T.nilable(String)).returns(T.nilable(String)) }
              def sold_by=(_sold_by); end
              # The tax information for the line item.
              sig {
                returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Paypal::LineItem::Tax))
               }
              def tax; end
              sig {
                params(_tax: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Paypal::LineItem::Tax)).returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Paypal::LineItem::Tax))
               }
              def tax=(_tax); end
              # Price for a single unit of the line item in minor units. Cannot be a negative number.
              sig { returns(Integer) }
              def unit_amount; end
              sig { params(_unit_amount: Integer).returns(Integer) }
              def unit_amount=(_unit_amount); end
              sig {
                params(category: T.nilable(String), description: T.nilable(String), name: String, quantity: Integer, sku: T.nilable(String), sold_by: T.nilable(String), tax: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Paypal::LineItem::Tax), unit_amount: Integer).void
               }
              def initialize(
                category: nil,
                description: nil,
                name: nil,
                quantity: nil,
                sku: nil,
                sold_by: nil,
                tax: nil,
                unit_amount: nil
              ); end
            end
            # Controls when the funds will be captured from the customer's account.
            sig { returns(T.nilable(String)) }
            def capture_method; end
            sig { params(_capture_method: T.nilable(String)).returns(T.nilable(String)) }
            def capture_method=(_capture_method); end
            # The line items purchased by the customer.
            sig {
              returns(T.nilable(T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Paypal::LineItem]))
             }
            def line_items; end
            sig {
              params(_line_items: T.nilable(T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Paypal::LineItem])).returns(T.nilable(T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Paypal::LineItem]))
             }
            def line_items=(_line_items); end
            # [Preferred locale](https://stripe.com/docs/payments/paypal/supported-locales) of the PayPal checkout page that the customer is redirected to.
            sig { returns(T.nilable(String)) }
            def preferred_locale; end
            sig { params(_preferred_locale: T.nilable(String)).returns(T.nilable(String)) }
            def preferred_locale=(_preferred_locale); end
            # A reference of the PayPal transaction visible to customer which is mapped to PayPal's invoice ID. This must be a globally unique ID if you have configured in your PayPal settings to block multiple payments per invoice ID.
            sig { returns(T.nilable(String)) }
            def reference; end
            sig { params(_reference: T.nilable(String)).returns(T.nilable(String)) }
            def reference=(_reference); end
            # A reference of the PayPal transaction visible to customer which is mapped to PayPal's invoice ID. This must be a globally unique ID if you have configured in your PayPal settings to block multiple payments per invoice ID.
            sig { returns(T.nilable(String)) }
            def reference_id; end
            sig { params(_reference_id: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_reference_id); end
            # The risk correlation ID for an on-session payment using a saved PayPal payment method.
            sig { returns(T.nilable(String)) }
            def risk_correlation_id; end
            sig { params(_risk_correlation_id: T.nilable(String)).returns(T.nilable(String)) }
            def risk_correlation_id=(_risk_correlation_id); end
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            #
            # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
            sig { returns(T.nilable(T.any(String, String))) }
            def setup_future_usage; end
            sig {
              params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
             }
            def setup_future_usage=(_setup_future_usage); end
            # The Stripe connected account IDs of the sellers on the platform for this transaction (optional). Only allowed when [separate charges and transfers](https://stripe.com/docs/connect/separate-charges-and-transfers) are used.
            sig { returns(T.nilable(T::Array[String])) }
            def subsellers; end
            sig {
              params(_subsellers: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
             }
            def subsellers=(_subsellers); end
            sig {
              params(capture_method: T.nilable(String), line_items: T.nilable(T::Array[OrderCreateParams::Payment::Settings::PaymentMethodOptions::Paypal::LineItem]), preferred_locale: T.nilable(String), reference: T.nilable(String), reference_id: T.nilable(String), risk_correlation_id: T.nilable(String), setup_future_usage: T.nilable(T.any(String, String)), subsellers: T.nilable(T::Array[String])).void
             }
            def initialize(
              capture_method: nil,
              line_items: nil,
              preferred_locale: nil,
              reference: nil,
              reference_id: nil,
              risk_correlation_id: nil,
              setup_future_usage: nil,
              subsellers: nil
            ); end
          end
          class SepaDebit < ::Stripe::RequestParams
            class MandateOptions < ::Stripe::RequestParams
              # Prefix used to generate the Mandate reference. Must be at most 12 characters long. Must consist of only uppercase letters, numbers, spaces, or the following special characters: '/', '_', '-', '&', '.'. Cannot begin with 'STRIPE'.
              sig { returns(T.nilable(String)) }
              def reference_prefix; end
              sig { params(_reference_prefix: T.nilable(String)).returns(T.nilable(String)) }
              def reference_prefix=(_reference_prefix); end
              sig { params(reference_prefix: T.nilable(String)).void }
              def initialize(reference_prefix: nil); end
            end
            # Additional fields for Mandate creation
            sig {
              returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::SepaDebit::MandateOptions))
             }
            def mandate_options; end
            sig {
              params(_mandate_options: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::SepaDebit::MandateOptions)).returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::SepaDebit::MandateOptions))
             }
            def mandate_options=(_mandate_options); end
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            #
            # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
            sig { returns(T.nilable(T.any(String, String))) }
            def setup_future_usage; end
            sig {
              params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
             }
            def setup_future_usage=(_setup_future_usage); end
            # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
            sig { returns(T.nilable(String)) }
            def target_date; end
            sig { params(_target_date: T.nilable(String)).returns(T.nilable(String)) }
            def target_date=(_target_date); end
            sig {
              params(mandate_options: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::SepaDebit::MandateOptions), setup_future_usage: T.nilable(T.any(String, String)), target_date: T.nilable(String)).void
             }
            def initialize(mandate_options: nil, setup_future_usage: nil, target_date: nil); end
          end
          class Sofort < ::Stripe::RequestParams
            # Language shown to the payer on redirect.
            sig { returns(T.nilable(T.any(String, String))) }
            def preferred_language; end
            sig {
              params(_preferred_language: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
             }
            def preferred_language=(_preferred_language); end
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            #
            # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
            sig { returns(T.nilable(T.any(String, String))) }
            def setup_future_usage; end
            sig {
              params(_setup_future_usage: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
             }
            def setup_future_usage=(_setup_future_usage); end
            sig {
              params(preferred_language: T.nilable(T.any(String, String)), setup_future_usage: T.nilable(T.any(String, String))).void
             }
            def initialize(preferred_language: nil, setup_future_usage: nil); end
          end
          class WechatPay < ::Stripe::RequestParams
            # The app ID registered with WeChat Pay. Only required when client is ios or android.
            sig { returns(T.nilable(String)) }
            def app_id; end
            sig { params(_app_id: T.nilable(String)).returns(T.nilable(String)) }
            def app_id=(_app_id); end
            # The client type that the end customer will pay from
            sig { returns(T.nilable(String)) }
            def client; end
            sig { params(_client: T.nilable(String)).returns(T.nilable(String)) }
            def client=(_client); end
            # Indicates that you intend to make future payments with this PaymentIntent's payment method.
            #
            # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
            #
            # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
            #
            # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
            #
            # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
            sig { returns(T.nilable(String)) }
            def setup_future_usage; end
            sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
            def setup_future_usage=(_setup_future_usage); end
            sig {
              params(app_id: T.nilable(String), client: T.nilable(String), setup_future_usage: T.nilable(String)).void
             }
            def initialize(app_id: nil, client: nil, setup_future_usage: nil); end
          end
          # If paying by `acss_debit`, this sub-hash contains details about the ACSS Debit payment method options to pass to the order's PaymentIntent.
          sig {
            returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::AcssDebit))
           }
          def acss_debit; end
          sig {
            params(_acss_debit: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::AcssDebit)).returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::AcssDebit))
           }
          def acss_debit=(_acss_debit); end
          # If paying by `afterpay_clearpay`, this sub-hash contains details about the AfterpayClearpay payment method options to pass to the order's PaymentIntent.
          sig {
            returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::AfterpayClearpay))
           }
          def afterpay_clearpay; end
          sig {
            params(_afterpay_clearpay: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::AfterpayClearpay)).returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::AfterpayClearpay))
           }
          def afterpay_clearpay=(_afterpay_clearpay); end
          # If paying by `alipay`, this sub-hash contains details about the Alipay payment method options to pass to the order's PaymentIntent.
          sig {
            returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Alipay))
           }
          def alipay; end
          sig {
            params(_alipay: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Alipay)).returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Alipay))
           }
          def alipay=(_alipay); end
          # If paying by `bancontact`, this sub-hash contains details about the Bancontact payment method options to pass to the order's PaymentIntent.
          sig {
            returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Bancontact))
           }
          def bancontact; end
          sig {
            params(_bancontact: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Bancontact)).returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Bancontact))
           }
          def bancontact=(_bancontact); end
          # If paying by `card`, this sub-hash contains details about the Card payment method options to pass to the order's PaymentIntent.
          sig {
            returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Card))
           }
          def card; end
          sig {
            params(_card: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Card)).returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Card))
           }
          def card=(_card); end
          # If paying by `customer_balance`, this sub-hash contains details about the Customer Balance payment method options to pass to the order's PaymentIntent.
          sig {
            returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::CustomerBalance))
           }
          def customer_balance; end
          sig {
            params(_customer_balance: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::CustomerBalance)).returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::CustomerBalance))
           }
          def customer_balance=(_customer_balance); end
          # If paying by `ideal`, this sub-hash contains details about the iDEAL payment method options to pass to the order's PaymentIntent.
          sig {
            returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Ideal))
           }
          def ideal; end
          sig {
            params(_ideal: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Ideal)).returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Ideal))
           }
          def ideal=(_ideal); end
          # If paying by `klarna`, this sub-hash contains details about the Klarna payment method options to pass to the order's PaymentIntent.
          sig {
            returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna))
           }
          def klarna; end
          sig {
            params(_klarna: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna)).returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna))
           }
          def klarna=(_klarna); end
          # If paying by `link`, this sub-hash contains details about the Link payment method options to pass to the order's PaymentIntent.
          sig {
            returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Link))
           }
          def link; end
          sig {
            params(_link: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Link)).returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Link))
           }
          def link=(_link); end
          # If paying by `oxxo`, this sub-hash contains details about the OXXO payment method options to pass to the order's PaymentIntent.
          sig {
            returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Oxxo))
           }
          def oxxo; end
          sig {
            params(_oxxo: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Oxxo)).returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Oxxo))
           }
          def oxxo=(_oxxo); end
          # If paying by `p24`, this sub-hash contains details about the P24 payment method options to pass to the order's PaymentIntent.
          sig {
            returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::P24))
           }
          def p24; end
          sig {
            params(_p24: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::P24)).returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::P24))
           }
          def p24=(_p24); end
          # If paying by `paypal`, this sub-hash contains details about the PayPal payment method options to pass to the order's PaymentIntent.
          sig {
            returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Paypal))
           }
          def paypal; end
          sig {
            params(_paypal: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Paypal)).returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Paypal))
           }
          def paypal=(_paypal); end
          # If paying by `sepa_debit`, this sub-hash contains details about the SEPA Debit payment method options to pass to the order's PaymentIntent.
          sig {
            returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::SepaDebit))
           }
          def sepa_debit; end
          sig {
            params(_sepa_debit: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::SepaDebit)).returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::SepaDebit))
           }
          def sepa_debit=(_sepa_debit); end
          # If paying by `sofort`, this sub-hash contains details about the Sofort payment method options to pass to the order's PaymentIntent.
          sig {
            returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Sofort))
           }
          def sofort; end
          sig {
            params(_sofort: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Sofort)).returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Sofort))
           }
          def sofort=(_sofort); end
          # If paying by `wechat_pay`, this sub-hash contains details about the WeChat Pay payment method options to pass to the order's PaymentIntent.
          sig {
            returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::WechatPay))
           }
          def wechat_pay; end
          sig {
            params(_wechat_pay: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::WechatPay)).returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::WechatPay))
           }
          def wechat_pay=(_wechat_pay); end
          sig {
            params(acss_debit: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::AcssDebit), afterpay_clearpay: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::AfterpayClearpay), alipay: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Alipay), bancontact: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Bancontact), card: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Card), customer_balance: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::CustomerBalance), ideal: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Ideal), klarna: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Klarna), link: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Link), oxxo: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Oxxo), p24: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::P24), paypal: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Paypal), sepa_debit: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::SepaDebit), sofort: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::Sofort), wechat_pay: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions::WechatPay)).void
           }
          def initialize(
            acss_debit: nil,
            afterpay_clearpay: nil,
            alipay: nil,
            bancontact: nil,
            card: nil,
            customer_balance: nil,
            ideal: nil,
            klarna: nil,
            link: nil,
            oxxo: nil,
            p24: nil,
            paypal: nil,
            sepa_debit: nil,
            sofort: nil,
            wechat_pay: nil
          ); end
        end
        class TransferData < ::Stripe::RequestParams
          # The amount that will be transferred automatically when the order is paid. If no amount is set, the full amount is transferred. There cannot be any line items with recurring prices when using this field.
          sig { returns(T.nilable(Integer)) }
          def amount; end
          sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def amount=(_amount); end
          # ID of the Connected account receiving the transfer.
          sig { returns(String) }
          def destination; end
          sig { params(_destination: String).returns(String) }
          def destination=(_destination); end
          sig { params(amount: T.nilable(Integer), destination: String).void }
          def initialize(amount: nil, destination: nil); end
        end
        # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account.
        sig { returns(T.nilable(Integer)) }
        def application_fee_amount; end
        sig { params(_application_fee_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def application_fee_amount=(_application_fee_amount); end
        # PaymentMethod-specific configuration to provide to the order's PaymentIntent.
        sig { returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions)) }
        def payment_method_options; end
        sig {
          params(_payment_method_options: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions)).returns(T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions))
         }
        def payment_method_options=(_payment_method_options); end
        # The list of [payment method types](https://stripe.com/docs/payments/payment-methods/overview) to provide to the order's PaymentIntent. Do not include this attribute if you prefer to manage your payment methods from the [Stripe Dashboard](https://dashboard.stripe.com/settings/payment_methods).
        sig { returns(T.nilable(T::Array[String])) }
        def payment_method_types; end
        sig {
          params(_payment_method_types: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
         }
        def payment_method_types=(_payment_method_types); end
        # The URL to redirect the customer to after they authenticate their payment.
        sig { returns(T.nilable(String)) }
        def return_url; end
        sig { params(_return_url: T.nilable(String)).returns(T.nilable(String)) }
        def return_url=(_return_url); end
        # For non-card charges, you can use this value as the complete description that appears on your customers' statements. Must contain at least one letter, maximum 22 characters.
        sig { returns(T.nilable(String)) }
        def statement_descriptor; end
        sig { params(_statement_descriptor: T.nilable(String)).returns(T.nilable(String)) }
        def statement_descriptor=(_statement_descriptor); end
        # Provides information about a card payment that customers see on their statements. Concatenated with the prefix (shortened descriptor) or statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 22 characters for the concatenated descriptor.
        sig { returns(T.nilable(String)) }
        def statement_descriptor_suffix; end
        sig { params(_statement_descriptor_suffix: T.nilable(String)).returns(T.nilable(String)) }
        def statement_descriptor_suffix=(_statement_descriptor_suffix); end
        # Provides configuration for completing a transfer for the order after it is paid.
        sig { returns(T.nilable(OrderCreateParams::Payment::Settings::TransferData)) }
        def transfer_data; end
        sig {
          params(_transfer_data: T.nilable(OrderCreateParams::Payment::Settings::TransferData)).returns(T.nilable(OrderCreateParams::Payment::Settings::TransferData))
         }
        def transfer_data=(_transfer_data); end
        sig {
          params(application_fee_amount: T.nilable(Integer), payment_method_options: T.nilable(OrderCreateParams::Payment::Settings::PaymentMethodOptions), payment_method_types: T.nilable(T::Array[String]), return_url: T.nilable(String), statement_descriptor: T.nilable(String), statement_descriptor_suffix: T.nilable(String), transfer_data: T.nilable(OrderCreateParams::Payment::Settings::TransferData)).void
         }
        def initialize(
          application_fee_amount: nil,
          payment_method_options: nil,
          payment_method_types: nil,
          return_url: nil,
          statement_descriptor: nil,
          statement_descriptor_suffix: nil,
          transfer_data: nil
        ); end
      end
      # Settings describing how the order should configure generated PaymentIntents.
      sig { returns(OrderCreateParams::Payment::Settings) }
      def settings; end
      sig {
        params(_settings: OrderCreateParams::Payment::Settings).returns(OrderCreateParams::Payment::Settings)
       }
      def settings=(_settings); end
      sig { params(settings: OrderCreateParams::Payment::Settings).void }
      def initialize(settings: nil); end
    end
    class ShippingCost < ::Stripe::RequestParams
      class ShippingRateData < ::Stripe::RequestParams
        class DeliveryEstimate < ::Stripe::RequestParams
          class Maximum < ::Stripe::RequestParams
            # A unit of time.
            sig { returns(String) }
            def unit; end
            sig { params(_unit: String).returns(String) }
            def unit=(_unit); end
            # Must be greater than 0.
            sig { returns(Integer) }
            def value; end
            sig { params(_value: Integer).returns(Integer) }
            def value=(_value); end
            sig { params(unit: String, value: Integer).void }
            def initialize(unit: nil, value: nil); end
          end
          class Minimum < ::Stripe::RequestParams
            # A unit of time.
            sig { returns(String) }
            def unit; end
            sig { params(_unit: String).returns(String) }
            def unit=(_unit); end
            # Must be greater than 0.
            sig { returns(Integer) }
            def value; end
            sig { params(_value: Integer).returns(Integer) }
            def value=(_value); end
            sig { params(unit: String, value: Integer).void }
            def initialize(unit: nil, value: nil); end
          end
          # The upper bound of the estimated range. If empty, represents no upper bound i.e., infinite.
          sig {
            returns(T.nilable(OrderCreateParams::ShippingCost::ShippingRateData::DeliveryEstimate::Maximum))
           }
          def maximum; end
          sig {
            params(_maximum: T.nilable(OrderCreateParams::ShippingCost::ShippingRateData::DeliveryEstimate::Maximum)).returns(T.nilable(OrderCreateParams::ShippingCost::ShippingRateData::DeliveryEstimate::Maximum))
           }
          def maximum=(_maximum); end
          # The lower bound of the estimated range. If empty, represents no lower bound.
          sig {
            returns(T.nilable(OrderCreateParams::ShippingCost::ShippingRateData::DeliveryEstimate::Minimum))
           }
          def minimum; end
          sig {
            params(_minimum: T.nilable(OrderCreateParams::ShippingCost::ShippingRateData::DeliveryEstimate::Minimum)).returns(T.nilable(OrderCreateParams::ShippingCost::ShippingRateData::DeliveryEstimate::Minimum))
           }
          def minimum=(_minimum); end
          sig {
            params(maximum: T.nilable(OrderCreateParams::ShippingCost::ShippingRateData::DeliveryEstimate::Maximum), minimum: T.nilable(OrderCreateParams::ShippingCost::ShippingRateData::DeliveryEstimate::Minimum)).void
           }
          def initialize(maximum: nil, minimum: nil); end
        end
        class FixedAmount < ::Stripe::RequestParams
          class CurrencyOptions < ::Stripe::RequestParams
            # A non-negative integer in cents representing how much to charge.
            sig { returns(Integer) }
            def amount; end
            sig { params(_amount: Integer).returns(Integer) }
            def amount=(_amount); end
            # Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`.
            sig { returns(T.nilable(String)) }
            def tax_behavior; end
            sig { params(_tax_behavior: T.nilable(String)).returns(T.nilable(String)) }
            def tax_behavior=(_tax_behavior); end
            sig { params(amount: Integer, tax_behavior: T.nilable(String)).void }
            def initialize(amount: nil, tax_behavior: nil); end
          end
          # A non-negative integer in cents representing how much to charge.
          sig { returns(Integer) }
          def amount; end
          sig { params(_amount: Integer).returns(Integer) }
          def amount=(_amount); end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(String) }
          def currency; end
          sig { params(_currency: String).returns(String) }
          def currency=(_currency); end
          # Shipping rates defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
          sig {
            returns(T.nilable(T::Hash[String, OrderCreateParams::ShippingCost::ShippingRateData::FixedAmount::CurrencyOptions]))
           }
          def currency_options; end
          sig {
            params(_currency_options: T.nilable(T::Hash[String, OrderCreateParams::ShippingCost::ShippingRateData::FixedAmount::CurrencyOptions])).returns(T.nilable(T::Hash[String, OrderCreateParams::ShippingCost::ShippingRateData::FixedAmount::CurrencyOptions]))
           }
          def currency_options=(_currency_options); end
          sig {
            params(amount: Integer, currency: String, currency_options: T.nilable(T::Hash[String, OrderCreateParams::ShippingCost::ShippingRateData::FixedAmount::CurrencyOptions])).void
           }
          def initialize(amount: nil, currency: nil, currency_options: nil); end
        end
        # The estimated range for how long shipping will take, meant to be displayable to the customer. This will appear on CheckoutSessions.
        sig {
          returns(T.nilable(OrderCreateParams::ShippingCost::ShippingRateData::DeliveryEstimate))
         }
        def delivery_estimate; end
        sig {
          params(_delivery_estimate: T.nilable(OrderCreateParams::ShippingCost::ShippingRateData::DeliveryEstimate)).returns(T.nilable(OrderCreateParams::ShippingCost::ShippingRateData::DeliveryEstimate))
         }
        def delivery_estimate=(_delivery_estimate); end
        # The name of the shipping rate, meant to be displayable to the customer. This will appear on CheckoutSessions.
        sig { returns(String) }
        def display_name; end
        sig { params(_display_name: String).returns(String) }
        def display_name=(_display_name); end
        # Describes a fixed amount to charge for shipping. Must be present if type is `fixed_amount`.
        sig { returns(T.nilable(OrderCreateParams::ShippingCost::ShippingRateData::FixedAmount)) }
        def fixed_amount; end
        sig {
          params(_fixed_amount: T.nilable(OrderCreateParams::ShippingCost::ShippingRateData::FixedAmount)).returns(T.nilable(OrderCreateParams::ShippingCost::ShippingRateData::FixedAmount))
         }
        def fixed_amount=(_fixed_amount); end
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        # Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`.
        sig { returns(T.nilable(String)) }
        def tax_behavior; end
        sig { params(_tax_behavior: T.nilable(String)).returns(T.nilable(String)) }
        def tax_behavior=(_tax_behavior); end
        # A [tax code](https://stripe.com/docs/tax/tax-categories) ID. The Shipping tax code is `txcd_92010001`.
        sig { returns(T.nilable(String)) }
        def tax_code; end
        sig { params(_tax_code: T.nilable(String)).returns(T.nilable(String)) }
        def tax_code=(_tax_code); end
        # The type of calculation to use on the shipping rate.
        sig { returns(T.nilable(String)) }
        def type; end
        sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
        def type=(_type); end
        sig {
          params(delivery_estimate: T.nilable(OrderCreateParams::ShippingCost::ShippingRateData::DeliveryEstimate), display_name: String, fixed_amount: T.nilable(OrderCreateParams::ShippingCost::ShippingRateData::FixedAmount), metadata: T.nilable(T::Hash[String, String]), tax_behavior: T.nilable(String), tax_code: T.nilable(String), type: T.nilable(String)).void
         }
        def initialize(
          delivery_estimate: nil,
          display_name: nil,
          fixed_amount: nil,
          metadata: nil,
          tax_behavior: nil,
          tax_code: nil,
          type: nil
        ); end
      end
      # The ID of the shipping rate to use for this order.
      sig { returns(T.nilable(String)) }
      def shipping_rate; end
      sig { params(_shipping_rate: T.nilable(String)).returns(T.nilable(String)) }
      def shipping_rate=(_shipping_rate); end
      # Parameters to create a new ad-hoc shipping rate for this order.
      sig { returns(T.nilable(OrderCreateParams::ShippingCost::ShippingRateData)) }
      def shipping_rate_data; end
      sig {
        params(_shipping_rate_data: T.nilable(OrderCreateParams::ShippingCost::ShippingRateData)).returns(T.nilable(OrderCreateParams::ShippingCost::ShippingRateData))
       }
      def shipping_rate_data=(_shipping_rate_data); end
      sig {
        params(shipping_rate: T.nilable(String), shipping_rate_data: T.nilable(OrderCreateParams::ShippingCost::ShippingRateData)).void
       }
      def initialize(shipping_rate: nil, shipping_rate_data: nil); end
    end
    class ShippingDetails < ::Stripe::RequestParams
      class Address < ::Stripe::RequestParams
        # City, district, suburb, town, or village.
        sig { returns(T.nilable(String)) }
        def city; end
        sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
        def city=(_city); end
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        sig { returns(T.nilable(String)) }
        def country; end
        sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
        def country=(_country); end
        # Address line 1, such as the street, PO Box, or company name.
        sig { returns(T.nilable(String)) }
        def line1; end
        sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
        def line1=(_line1); end
        # Address line 2, such as the apartment, suite, unit, or building.
        sig { returns(T.nilable(String)) }
        def line2; end
        sig { params(_line2: T.nilable(String)).returns(T.nilable(String)) }
        def line2=(_line2); end
        # ZIP or postal code.
        sig { returns(T.nilable(String)) }
        def postal_code; end
        sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
        def postal_code=(_postal_code); end
        # State/province as an [ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2) subdivision code, without country prefix, such as "NY" or "TX".
        sig { returns(T.nilable(String)) }
        def state; end
        sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
        def state=(_state); end
        sig {
          params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
         }
        def initialize(
          city: nil,
          country: nil,
          line1: nil,
          line2: nil,
          postal_code: nil,
          state: nil
        ); end
      end
      # The shipping address for the order.
      sig { returns(OrderCreateParams::ShippingDetails::Address) }
      def address; end
      sig {
        params(_address: OrderCreateParams::ShippingDetails::Address).returns(OrderCreateParams::ShippingDetails::Address)
       }
      def address=(_address); end
      # The name of the recipient of the order.
      sig { returns(String) }
      def name; end
      sig { params(_name: String).returns(String) }
      def name=(_name); end
      # The phone number (including extension) for the recipient of the order.
      sig { returns(T.nilable(String)) }
      def phone; end
      sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
      def phone=(_phone); end
      sig {
        params(address: OrderCreateParams::ShippingDetails::Address, name: String, phone: T.nilable(String)).void
       }
      def initialize(address: nil, name: nil, phone: nil); end
    end
    class TaxDetails < ::Stripe::RequestParams
      class TaxId < ::Stripe::RequestParams
        # Type of the tax ID, one of `ad_nrt`, `ae_trn`, `al_tin`, `am_tin`, `ao_tin`, `ar_cuit`, `au_abn`, `au_arn`, `aw_tin`, `az_tin`, `ba_tin`, `bb_tin`, `bd_bin`, `bf_ifu`, `bg_uic`, `bh_vat`, `bj_ifu`, `bo_tin`, `br_cnpj`, `br_cpf`, `bs_tin`, `by_tin`, `ca_bn`, `ca_gst_hst`, `ca_pst_bc`, `ca_pst_mb`, `ca_pst_sk`, `ca_qst`, `cd_nif`, `ch_uid`, `ch_vat`, `cl_tin`, `cm_niu`, `cn_tin`, `co_nit`, `cr_tin`, `cv_nif`, `de_stn`, `do_rcn`, `ec_ruc`, `eg_tin`, `es_cif`, `et_tin`, `eu_oss_vat`, `eu_vat`, `gb_vat`, `ge_vat`, `gn_nif`, `hk_br`, `hr_oib`, `hu_tin`, `id_npwp`, `il_vat`, `in_gst`, `is_vat`, `jp_cn`, `jp_rn`, `jp_trn`, `ke_pin`, `kg_tin`, `kh_tin`, `kr_brn`, `kz_bin`, `la_tin`, `li_uid`, `li_vat`, `ma_vat`, `md_vat`, `me_pib`, `mk_vat`, `mr_nif`, `mx_rfc`, `my_frp`, `my_itn`, `my_sst`, `ng_tin`, `no_vat`, `no_voec`, `np_pan`, `nz_gst`, `om_vat`, `pe_ruc`, `ph_tin`, `ro_tin`, `rs_pib`, `ru_inn`, `ru_kpp`, `sa_vat`, `sg_gst`, `sg_uen`, `si_tin`, `sn_ninea`, `sr_fin`, `sv_nit`, `th_vat`, `tj_tin`, `tr_tin`, `tw_vat`, `tz_vat`, `ua_vat`, `ug_tin`, `us_ein`, `uy_ruc`, `uz_tin`, `uz_vat`, `ve_rif`, `vn_tin`, `za_vat`, `zm_tin`, or `zw_tin`
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        # Value of the tax ID.
        sig { returns(String) }
        def value; end
        sig { params(_value: String).returns(String) }
        def value=(_value); end
        sig { params(type: String, value: String).void }
        def initialize(type: nil, value: nil); end
      end
      # The purchaser's tax exemption status. One of `none`, `exempt`, or `reverse`.
      sig { returns(T.nilable(T.any(String, String))) }
      def tax_exempt; end
      sig {
        params(_tax_exempt: T.nilable(T.any(String, String))).returns(T.nilable(T.any(String, String)))
       }
      def tax_exempt=(_tax_exempt); end
      # The purchaser's tax IDs to be used for this order.
      sig { returns(T.nilable(T::Array[OrderCreateParams::TaxDetails::TaxId])) }
      def tax_ids; end
      sig {
        params(_tax_ids: T.nilable(T::Array[OrderCreateParams::TaxDetails::TaxId])).returns(T.nilable(T::Array[OrderCreateParams::TaxDetails::TaxId]))
       }
      def tax_ids=(_tax_ids); end
      sig {
        params(tax_exempt: T.nilable(T.any(String, String)), tax_ids: T.nilable(T::Array[OrderCreateParams::TaxDetails::TaxId])).void
       }
      def initialize(tax_exempt: nil, tax_ids: nil); end
    end
    # Settings for automatic tax calculation for this order.
    sig { returns(T.nilable(OrderCreateParams::AutomaticTax)) }
    def automatic_tax; end
    sig {
      params(_automatic_tax: T.nilable(OrderCreateParams::AutomaticTax)).returns(T.nilable(OrderCreateParams::AutomaticTax))
     }
    def automatic_tax=(_automatic_tax); end
    # Billing details for the customer. If a customer is provided, this will be automatically populated with values from that customer if override values are not provided.
    sig { returns(T.nilable(T.any(String, OrderCreateParams::BillingDetails))) }
    def billing_details; end
    sig {
      params(_billing_details: T.nilable(T.any(String, OrderCreateParams::BillingDetails))).returns(T.nilable(T.any(String, OrderCreateParams::BillingDetails)))
     }
    def billing_details=(_billing_details); end
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(String) }
    def currency; end
    sig { params(_currency: String).returns(String) }
    def currency=(_currency); end
    # The customer associated with this order.
    sig { returns(T.nilable(String)) }
    def customer; end
    sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
    def customer=(_customer); end
    # An arbitrary string attached to the object. Often useful for displaying to users.
    sig { returns(T.nilable(String)) }
    def description; end
    sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
    def description=(_description); end
    # The coupons, promotion codes, and/or discounts to apply to the order.
    sig { returns(T.nilable(T.any(String, T::Array[OrderCreateParams::Discount]))) }
    def discounts; end
    sig {
      params(_discounts: T.nilable(T.any(String, T::Array[OrderCreateParams::Discount]))).returns(T.nilable(T.any(String, T::Array[OrderCreateParams::Discount])))
     }
    def discounts=(_discounts); end
    # Specifies which fields in the response should be expanded.
    sig { returns(T.nilable(T::Array[String])) }
    def expand; end
    sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
    def expand=(_expand); end
    # The IP address of the purchaser for this order.
    sig { returns(T.nilable(String)) }
    def ip_address; end
    sig { params(_ip_address: T.nilable(String)).returns(T.nilable(String)) }
    def ip_address=(_ip_address); end
    # A list of line items the customer is ordering. Each line item includes information about the product, the quantity, and the resulting cost.
    sig { returns(T::Array[OrderCreateParams::LineItem]) }
    def line_items; end
    sig {
      params(_line_items: T::Array[OrderCreateParams::LineItem]).returns(T::Array[OrderCreateParams::LineItem])
     }
    def line_items=(_line_items); end
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    sig { returns(T.nilable(T::Hash[String, String])) }
    def metadata; end
    sig {
      params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
     }
    def metadata=(_metadata); end
    # Payment information associated with the order, including payment settings.
    sig { returns(T.nilable(OrderCreateParams::Payment)) }
    def payment; end
    sig {
      params(_payment: T.nilable(OrderCreateParams::Payment)).returns(T.nilable(OrderCreateParams::Payment))
     }
    def payment=(_payment); end
    # Settings for the customer cost of shipping for this order.
    sig { returns(T.nilable(T.any(String, OrderCreateParams::ShippingCost))) }
    def shipping_cost; end
    sig {
      params(_shipping_cost: T.nilable(T.any(String, OrderCreateParams::ShippingCost))).returns(T.nilable(T.any(String, OrderCreateParams::ShippingCost)))
     }
    def shipping_cost=(_shipping_cost); end
    # Shipping details for the order.
    sig { returns(T.nilable(T.any(String, OrderCreateParams::ShippingDetails))) }
    def shipping_details; end
    sig {
      params(_shipping_details: T.nilable(T.any(String, OrderCreateParams::ShippingDetails))).returns(T.nilable(T.any(String, OrderCreateParams::ShippingDetails)))
     }
    def shipping_details=(_shipping_details); end
    # Additional tax details about the purchaser to be used for this order.
    sig { returns(T.nilable(OrderCreateParams::TaxDetails)) }
    def tax_details; end
    sig {
      params(_tax_details: T.nilable(OrderCreateParams::TaxDetails)).returns(T.nilable(OrderCreateParams::TaxDetails))
     }
    def tax_details=(_tax_details); end
    sig {
      params(automatic_tax: T.nilable(OrderCreateParams::AutomaticTax), billing_details: T.nilable(T.any(String, OrderCreateParams::BillingDetails)), currency: String, customer: T.nilable(String), description: T.nilable(String), discounts: T.nilable(T.any(String, T::Array[OrderCreateParams::Discount])), expand: T.nilable(T::Array[String]), ip_address: T.nilable(String), line_items: T::Array[OrderCreateParams::LineItem], metadata: T.nilable(T::Hash[String, String]), payment: T.nilable(OrderCreateParams::Payment), shipping_cost: T.nilable(T.any(String, OrderCreateParams::ShippingCost)), shipping_details: T.nilable(T.any(String, OrderCreateParams::ShippingDetails)), tax_details: T.nilable(OrderCreateParams::TaxDetails)).void
     }
    def initialize(
      automatic_tax: nil,
      billing_details: nil,
      currency: nil,
      customer: nil,
      description: nil,
      discounts: nil,
      expand: nil,
      ip_address: nil,
      line_items: nil,
      metadata: nil,
      payment: nil,
      shipping_cost: nil,
      shipping_details: nil,
      tax_details: nil
    ); end
  end
end