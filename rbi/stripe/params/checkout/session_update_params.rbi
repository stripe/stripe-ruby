# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Checkout
    class SessionUpdateParams < ::Stripe::RequestParams
      class AutomaticTax < ::Stripe::RequestParams
        class Liability < ::Stripe::RequestParams
          # The connected account being referenced when `type` is `account`.
          sig { returns(T.nilable(String)) }
          def account; end
          sig { params(_account: T.nilable(String)).returns(T.nilable(String)) }
          def account=(_account); end
          # Type of the account referenced in the request.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig { params(account: T.nilable(String), type: String).void }
          def initialize(account: nil, type: nil); end
        end
        # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
        sig { returns(T.nilable(Checkout::SessionUpdateParams::AutomaticTax::Liability)) }
        def liability; end
        sig {
          params(_liability: T.nilable(Checkout::SessionUpdateParams::AutomaticTax::Liability)).returns(T.nilable(Checkout::SessionUpdateParams::AutomaticTax::Liability))
         }
        def liability=(_liability); end
        sig {
          params(liability: T.nilable(Checkout::SessionUpdateParams::AutomaticTax::Liability)).void
         }
        def initialize(liability: nil); end
      end
      class CollectedInformation < ::Stripe::RequestParams
        class ShippingDetails < ::Stripe::RequestParams
          class Address < ::Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            def city; end
            sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
            def city=(_city); end
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(String) }
            def country; end
            sig { params(_country: String).returns(String) }
            def country=(_country); end
            # Address line 1, such as the street, PO Box, or company name.
            sig { returns(String) }
            def line1; end
            sig { params(_line1: String).returns(String) }
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
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            def state; end
            sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
            def state=(_state); end
            sig {
              params(city: T.nilable(String), country: String, line1: String, line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
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
          # The address of the customer
          sig {
            returns(Checkout::SessionUpdateParams::CollectedInformation::ShippingDetails::Address)
           }
          def address; end
          sig {
            params(_address: Checkout::SessionUpdateParams::CollectedInformation::ShippingDetails::Address).returns(Checkout::SessionUpdateParams::CollectedInformation::ShippingDetails::Address)
           }
          def address=(_address); end
          # The name of customer
          sig { returns(String) }
          def name; end
          sig { params(_name: String).returns(String) }
          def name=(_name); end
          sig {
            params(address: Checkout::SessionUpdateParams::CollectedInformation::ShippingDetails::Address, name: String).void
           }
          def initialize(address: nil, name: nil); end
        end
        # The shipping details to apply to this Session.
        sig {
          returns(T.nilable(Checkout::SessionUpdateParams::CollectedInformation::ShippingDetails))
         }
        def shipping_details; end
        sig {
          params(_shipping_details: T.nilable(Checkout::SessionUpdateParams::CollectedInformation::ShippingDetails)).returns(T.nilable(Checkout::SessionUpdateParams::CollectedInformation::ShippingDetails))
         }
        def shipping_details=(_shipping_details); end
        sig {
          params(shipping_details: T.nilable(Checkout::SessionUpdateParams::CollectedInformation::ShippingDetails)).void
         }
        def initialize(shipping_details: nil); end
      end
      class Discount < ::Stripe::RequestParams
        class CouponData < ::Stripe::RequestParams
          # A positive integer representing the amount to subtract from an invoice total (required if `percent_off` is not passed).
          sig { returns(T.nilable(Integer)) }
          def amount_off; end
          sig { params(_amount_off: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def amount_off=(_amount_off); end
          # Three-letter [ISO code for the currency](https://stripe.com/docs/currencies) of the `amount_off` parameter (required if `amount_off` is passed).
          sig { returns(T.nilable(String)) }
          def currency; end
          sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_currency); end
          # Specifies how long the discount will be in effect if used on a subscription. Defaults to `once`.
          sig { returns(T.nilable(String)) }
          def duration; end
          sig { params(_duration: T.nilable(String)).returns(T.nilable(String)) }
          def duration=(_duration); end
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
          sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
          def metadata; end
          sig {
            params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
           }
          def metadata=(_metadata); end
          # Name of the coupon displayed to customers on, for instance invoices, or receipts. By default the `id` is shown if `name` is not set.
          sig { returns(T.nilable(String)) }
          def name; end
          sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
          def name=(_name); end
          # A positive float larger than 0, and smaller or equal to 100, that represents the discount the coupon will apply (required if `amount_off` is not passed).
          sig { returns(T.nilable(Float)) }
          def percent_off; end
          sig { params(_percent_off: T.nilable(Float)).returns(T.nilable(Float)) }
          def percent_off=(_percent_off); end
          sig {
            params(amount_off: T.nilable(Integer), currency: T.nilable(String), duration: T.nilable(String), metadata: T.nilable(T.any(String, T::Hash[String, String])), name: T.nilable(String), percent_off: T.nilable(Float)).void
           }
          def initialize(
            amount_off: nil,
            currency: nil,
            duration: nil,
            metadata: nil,
            name: nil,
            percent_off: nil
          ); end
        end
        # The ID of the [Coupon](https://stripe.com/docs/api/coupons) to apply to this Session. One of `coupon` or `coupon_data` is required when updating discounts.
        sig { returns(T.nilable(String)) }
        def coupon; end
        sig { params(_coupon: T.nilable(String)).returns(T.nilable(String)) }
        def coupon=(_coupon); end
        # Data used to generate a new [Coupon](https://stripe.com/docs/api/coupon) object inline. One of `coupon` or `coupon_data` is required when updating discounts.
        sig { returns(T.nilable(Checkout::SessionUpdateParams::Discount::CouponData)) }
        def coupon_data; end
        sig {
          params(_coupon_data: T.nilable(Checkout::SessionUpdateParams::Discount::CouponData)).returns(T.nilable(Checkout::SessionUpdateParams::Discount::CouponData))
         }
        def coupon_data=(_coupon_data); end
        sig {
          params(coupon: T.nilable(String), coupon_data: T.nilable(Checkout::SessionUpdateParams::Discount::CouponData)).void
         }
        def initialize(coupon: nil, coupon_data: nil); end
      end
      class InvoiceCreation < ::Stripe::RequestParams
        class InvoiceData < ::Stripe::RequestParams
          class Issuer < ::Stripe::RequestParams
            # The connected account being referenced when `type` is `account`.
            sig { returns(T.nilable(String)) }
            def account; end
            sig { params(_account: T.nilable(String)).returns(T.nilable(String)) }
            def account=(_account); end
            # Type of the account referenced in the request.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(account: T.nilable(String), type: String).void }
            def initialize(account: nil, type: nil); end
          end
          # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
          sig {
            returns(T.nilable(Checkout::SessionUpdateParams::InvoiceCreation::InvoiceData::Issuer))
           }
          def issuer; end
          sig {
            params(_issuer: T.nilable(Checkout::SessionUpdateParams::InvoiceCreation::InvoiceData::Issuer)).returns(T.nilable(Checkout::SessionUpdateParams::InvoiceCreation::InvoiceData::Issuer))
           }
          def issuer=(_issuer); end
          sig {
            params(issuer: T.nilable(Checkout::SessionUpdateParams::InvoiceCreation::InvoiceData::Issuer)).void
           }
          def initialize(issuer: nil); end
        end
        # Parameters passed when creating invoices for payment-mode Checkout Sessions.
        sig { returns(T.nilable(Checkout::SessionUpdateParams::InvoiceCreation::InvoiceData)) }
        def invoice_data; end
        sig {
          params(_invoice_data: T.nilable(Checkout::SessionUpdateParams::InvoiceCreation::InvoiceData)).returns(T.nilable(Checkout::SessionUpdateParams::InvoiceCreation::InvoiceData))
         }
        def invoice_data=(_invoice_data); end
        sig {
          params(invoice_data: T.nilable(Checkout::SessionUpdateParams::InvoiceCreation::InvoiceData)).void
         }
        def initialize(invoice_data: nil); end
      end
      class LineItem < ::Stripe::RequestParams
        class AdjustableQuantity < ::Stripe::RequestParams
          # Set to true if the quantity can be adjusted to any positive integer. Setting to false will remove any previously specified constraints on quantity.
          sig { returns(T::Boolean) }
          def enabled; end
          sig { params(_enabled: T::Boolean).returns(T::Boolean) }
          def enabled=(_enabled); end
          # The maximum quantity the customer can purchase for the Checkout Session. By default this value is 99. You can specify a value up to 999999.
          sig { returns(T.nilable(Integer)) }
          def maximum; end
          sig { params(_maximum: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def maximum=(_maximum); end
          # The minimum quantity the customer must purchase for the Checkout Session. By default this value is 0.
          sig { returns(T.nilable(Integer)) }
          def minimum; end
          sig { params(_minimum: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def minimum=(_minimum); end
          sig {
            params(enabled: T::Boolean, maximum: T.nilable(Integer), minimum: T.nilable(Integer)).void
           }
          def initialize(enabled: nil, maximum: nil, minimum: nil); end
        end
        class PriceData < ::Stripe::RequestParams
          class ProductData < ::Stripe::RequestParams
            # The product's description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes.
            sig { returns(T.nilable(String)) }
            def description; end
            sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
            def description=(_description); end
            # A list of up to 8 URLs of images for this product, meant to be displayable to the customer.
            sig { returns(T.nilable(T::Array[String])) }
            def images; end
            sig {
              params(_images: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
             }
            def images=(_images); end
            # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
            sig { returns(T.nilable(T::Hash[String, String])) }
            def metadata; end
            sig {
              params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
             }
            def metadata=(_metadata); end
            # The product's name, meant to be displayable to the customer.
            sig { returns(String) }
            def name; end
            sig { params(_name: String).returns(String) }
            def name=(_name); end
            # A [tax code](https://stripe.com/docs/tax/tax-categories) ID.
            sig { returns(T.nilable(String)) }
            def tax_code; end
            sig { params(_tax_code: T.nilable(String)).returns(T.nilable(String)) }
            def tax_code=(_tax_code); end
            # A label that represents units of this product. When set, this will be included in customers' receipts, invoices, Checkout, and the customer portal.
            sig { returns(T.nilable(String)) }
            def unit_label; end
            sig { params(_unit_label: T.nilable(String)).returns(T.nilable(String)) }
            def unit_label=(_unit_label); end
            sig {
              params(description: T.nilable(String), images: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), name: String, tax_code: T.nilable(String), unit_label: T.nilable(String)).void
             }
            def initialize(
              description: nil,
              images: nil,
              metadata: nil,
              name: nil,
              tax_code: nil,
              unit_label: nil
            ); end
          end
          class Recurring < ::Stripe::RequestParams
            # Specifies billing frequency. Either `day`, `week`, `month` or `year`.
            sig { returns(String) }
            def interval; end
            sig { params(_interval: String).returns(String) }
            def interval=(_interval); end
            # The number of intervals between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months. Maximum of three years interval allowed (3 years, 36 months, or 156 weeks).
            sig { returns(T.nilable(Integer)) }
            def interval_count; end
            sig { params(_interval_count: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def interval_count=(_interval_count); end
            sig { params(interval: String, interval_count: T.nilable(Integer)).void }
            def initialize(interval: nil, interval_count: nil); end
          end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(String) }
          def currency; end
          sig { params(_currency: String).returns(String) }
          def currency=(_currency); end
          # The ID of the [Product](https://docs.stripe.com/api/products) that this [Price](https://docs.stripe.com/api/prices) will belong to. One of `product` or `product_data` is required.
          sig { returns(T.nilable(String)) }
          def product; end
          sig { params(_product: T.nilable(String)).returns(T.nilable(String)) }
          def product=(_product); end
          # Data used to generate a new [Product](https://docs.stripe.com/api/products) object inline. One of `product` or `product_data` is required.
          sig {
            returns(T.nilable(Checkout::SessionUpdateParams::LineItem::PriceData::ProductData))
           }
          def product_data; end
          sig {
            params(_product_data: T.nilable(Checkout::SessionUpdateParams::LineItem::PriceData::ProductData)).returns(T.nilable(Checkout::SessionUpdateParams::LineItem::PriceData::ProductData))
           }
          def product_data=(_product_data); end
          # The recurring components of a price such as `interval` and `interval_count`.
          sig { returns(T.nilable(Checkout::SessionUpdateParams::LineItem::PriceData::Recurring)) }
          def recurring; end
          sig {
            params(_recurring: T.nilable(Checkout::SessionUpdateParams::LineItem::PriceData::Recurring)).returns(T.nilable(Checkout::SessionUpdateParams::LineItem::PriceData::Recurring))
           }
          def recurring=(_recurring); end
          # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
          sig { returns(T.nilable(String)) }
          def tax_behavior; end
          sig { params(_tax_behavior: T.nilable(String)).returns(T.nilable(String)) }
          def tax_behavior=(_tax_behavior); end
          # A non-negative integer in cents (or local equivalent) representing how much to charge. One of `unit_amount` or `unit_amount_decimal` is required.
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
            params(currency: String, product: T.nilable(String), product_data: T.nilable(Checkout::SessionUpdateParams::LineItem::PriceData::ProductData), recurring: T.nilable(Checkout::SessionUpdateParams::LineItem::PriceData::Recurring), tax_behavior: T.nilable(String), unit_amount: T.nilable(Integer), unit_amount_decimal: T.nilable(String)).void
           }
          def initialize(
            currency: nil,
            product: nil,
            product_data: nil,
            recurring: nil,
            tax_behavior: nil,
            unit_amount: nil,
            unit_amount_decimal: nil
          ); end
        end
        # When set, provides configuration for this item’s quantity to be adjusted by the customer during Checkout.
        sig { returns(T.nilable(Checkout::SessionUpdateParams::LineItem::AdjustableQuantity)) }
        def adjustable_quantity; end
        sig {
          params(_adjustable_quantity: T.nilable(Checkout::SessionUpdateParams::LineItem::AdjustableQuantity)).returns(T.nilable(Checkout::SessionUpdateParams::LineItem::AdjustableQuantity))
         }
        def adjustable_quantity=(_adjustable_quantity); end
        # ID of an existing line item.
        sig { returns(T.nilable(String)) }
        def id; end
        sig { params(_id: T.nilable(String)).returns(T.nilable(String)) }
        def id=(_id); end
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
         }
        def metadata=(_metadata); end
        # The ID of the [Price](https://stripe.com/docs/api/prices). One of `price` or `price_data` is required when creating a new line item.
        sig { returns(T.nilable(String)) }
        def price; end
        sig { params(_price: T.nilable(String)).returns(T.nilable(String)) }
        def price=(_price); end
        # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline. One of `price` or `price_data` is required when creating a new line item.
        sig { returns(T.nilable(Checkout::SessionUpdateParams::LineItem::PriceData)) }
        def price_data; end
        sig {
          params(_price_data: T.nilable(Checkout::SessionUpdateParams::LineItem::PriceData)).returns(T.nilable(Checkout::SessionUpdateParams::LineItem::PriceData))
         }
        def price_data=(_price_data); end
        # The quantity of the line item being purchased. Quantity should not be defined when `recurring.usage_type=metered`.
        sig { returns(T.nilable(Integer)) }
        def quantity; end
        sig { params(_quantity: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def quantity=(_quantity); end
        # The [tax rates](https://stripe.com/docs/api/tax_rates) which apply to this line item.
        sig { returns(T.nilable(T.any(String, T::Array[String]))) }
        def tax_rates; end
        sig {
          params(_tax_rates: T.nilable(T.any(String, T::Array[String]))).returns(T.nilable(T.any(String, T::Array[String])))
         }
        def tax_rates=(_tax_rates); end
        sig {
          params(adjustable_quantity: T.nilable(Checkout::SessionUpdateParams::LineItem::AdjustableQuantity), id: T.nilable(String), metadata: T.nilable(T.any(String, T::Hash[String, String])), price: T.nilable(String), price_data: T.nilable(Checkout::SessionUpdateParams::LineItem::PriceData), quantity: T.nilable(Integer), tax_rates: T.nilable(T.any(String, T::Array[String]))).void
         }
        def initialize(
          adjustable_quantity: nil,
          id: nil,
          metadata: nil,
          price: nil,
          price_data: nil,
          quantity: nil,
          tax_rates: nil
        ); end
      end
      class ShippingOption < ::Stripe::RequestParams
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
              returns(T.nilable(Checkout::SessionUpdateParams::ShippingOption::ShippingRateData::DeliveryEstimate::Maximum))
             }
            def maximum; end
            sig {
              params(_maximum: T.nilable(Checkout::SessionUpdateParams::ShippingOption::ShippingRateData::DeliveryEstimate::Maximum)).returns(T.nilable(Checkout::SessionUpdateParams::ShippingOption::ShippingRateData::DeliveryEstimate::Maximum))
             }
            def maximum=(_maximum); end
            # The lower bound of the estimated range. If empty, represents no lower bound.
            sig {
              returns(T.nilable(Checkout::SessionUpdateParams::ShippingOption::ShippingRateData::DeliveryEstimate::Minimum))
             }
            def minimum; end
            sig {
              params(_minimum: T.nilable(Checkout::SessionUpdateParams::ShippingOption::ShippingRateData::DeliveryEstimate::Minimum)).returns(T.nilable(Checkout::SessionUpdateParams::ShippingOption::ShippingRateData::DeliveryEstimate::Minimum))
             }
            def minimum=(_minimum); end
            sig {
              params(maximum: T.nilable(Checkout::SessionUpdateParams::ShippingOption::ShippingRateData::DeliveryEstimate::Maximum), minimum: T.nilable(Checkout::SessionUpdateParams::ShippingOption::ShippingRateData::DeliveryEstimate::Minimum)).void
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
              returns(T.nilable(T::Hash[String, Checkout::SessionUpdateParams::ShippingOption::ShippingRateData::FixedAmount::CurrencyOptions]))
             }
            def currency_options; end
            sig {
              params(_currency_options: T.nilable(T::Hash[String, Checkout::SessionUpdateParams::ShippingOption::ShippingRateData::FixedAmount::CurrencyOptions])).returns(T.nilable(T::Hash[String, Checkout::SessionUpdateParams::ShippingOption::ShippingRateData::FixedAmount::CurrencyOptions]))
             }
            def currency_options=(_currency_options); end
            sig {
              params(amount: Integer, currency: String, currency_options: T.nilable(T::Hash[String, Checkout::SessionUpdateParams::ShippingOption::ShippingRateData::FixedAmount::CurrencyOptions])).void
             }
            def initialize(amount: nil, currency: nil, currency_options: nil); end
          end
          # The estimated range for how long shipping will take, meant to be displayable to the customer. This will appear on CheckoutSessions.
          sig {
            returns(T.nilable(Checkout::SessionUpdateParams::ShippingOption::ShippingRateData::DeliveryEstimate))
           }
          def delivery_estimate; end
          sig {
            params(_delivery_estimate: T.nilable(Checkout::SessionUpdateParams::ShippingOption::ShippingRateData::DeliveryEstimate)).returns(T.nilable(Checkout::SessionUpdateParams::ShippingOption::ShippingRateData::DeliveryEstimate))
           }
          def delivery_estimate=(_delivery_estimate); end
          # The name of the shipping rate, meant to be displayable to the customer. This will appear on CheckoutSessions.
          sig { returns(String) }
          def display_name; end
          sig { params(_display_name: String).returns(String) }
          def display_name=(_display_name); end
          # Describes a fixed amount to charge for shipping. Must be present if type is `fixed_amount`.
          sig {
            returns(T.nilable(Checkout::SessionUpdateParams::ShippingOption::ShippingRateData::FixedAmount))
           }
          def fixed_amount; end
          sig {
            params(_fixed_amount: T.nilable(Checkout::SessionUpdateParams::ShippingOption::ShippingRateData::FixedAmount)).returns(T.nilable(Checkout::SessionUpdateParams::ShippingOption::ShippingRateData::FixedAmount))
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
            params(delivery_estimate: T.nilable(Checkout::SessionUpdateParams::ShippingOption::ShippingRateData::DeliveryEstimate), display_name: String, fixed_amount: T.nilable(Checkout::SessionUpdateParams::ShippingOption::ShippingRateData::FixedAmount), metadata: T.nilable(T::Hash[String, String]), tax_behavior: T.nilable(String), tax_code: T.nilable(String), type: T.nilable(String)).void
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
        # The ID of the Shipping Rate to use for this shipping option.
        sig { returns(T.nilable(String)) }
        def shipping_rate; end
        sig { params(_shipping_rate: T.nilable(String)).returns(T.nilable(String)) }
        def shipping_rate=(_shipping_rate); end
        # Parameters to be passed to Shipping Rate creation for this shipping option.
        sig { returns(T.nilable(Checkout::SessionUpdateParams::ShippingOption::ShippingRateData)) }
        def shipping_rate_data; end
        sig {
          params(_shipping_rate_data: T.nilable(Checkout::SessionUpdateParams::ShippingOption::ShippingRateData)).returns(T.nilable(Checkout::SessionUpdateParams::ShippingOption::ShippingRateData))
         }
        def shipping_rate_data=(_shipping_rate_data); end
        sig {
          params(shipping_rate: T.nilable(String), shipping_rate_data: T.nilable(Checkout::SessionUpdateParams::ShippingOption::ShippingRateData)).void
         }
        def initialize(shipping_rate: nil, shipping_rate_data: nil); end
      end
      class SubscriptionData < ::Stripe::RequestParams
        class InvoiceSettings < ::Stripe::RequestParams
          class Issuer < ::Stripe::RequestParams
            # The connected account being referenced when `type` is `account`.
            sig { returns(T.nilable(String)) }
            def account; end
            sig { params(_account: T.nilable(String)).returns(T.nilable(String)) }
            def account=(_account); end
            # Type of the account referenced in the request.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(account: T.nilable(String), type: String).void }
            def initialize(account: nil, type: nil); end
          end
          # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
          sig {
            returns(T.nilable(Checkout::SessionUpdateParams::SubscriptionData::InvoiceSettings::Issuer))
           }
          def issuer; end
          sig {
            params(_issuer: T.nilable(Checkout::SessionUpdateParams::SubscriptionData::InvoiceSettings::Issuer)).returns(T.nilable(Checkout::SessionUpdateParams::SubscriptionData::InvoiceSettings::Issuer))
           }
          def issuer=(_issuer); end
          sig {
            params(issuer: T.nilable(Checkout::SessionUpdateParams::SubscriptionData::InvoiceSettings::Issuer)).void
           }
          def initialize(issuer: nil); end
        end
        # All invoices will be billed using the specified settings.
        sig { returns(T.nilable(Checkout::SessionUpdateParams::SubscriptionData::InvoiceSettings)) }
        def invoice_settings; end
        sig {
          params(_invoice_settings: T.nilable(Checkout::SessionUpdateParams::SubscriptionData::InvoiceSettings)).returns(T.nilable(Checkout::SessionUpdateParams::SubscriptionData::InvoiceSettings))
         }
        def invoice_settings=(_invoice_settings); end
        # Unix timestamp representing the end of the trial period the customer will get before being charged for the first time. Has to be at least 48 hours in the future.
        sig { returns(T.nilable(Integer)) }
        def trial_end; end
        sig { params(_trial_end: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def trial_end=(_trial_end); end
        # Integer representing the number of trial period days before the customer is charged for the first time. Has to be at least 1.
        sig { returns(T.nilable(T.any(String, Integer))) }
        def trial_period_days; end
        sig {
          params(_trial_period_days: T.nilable(T.any(String, Integer))).returns(T.nilable(T.any(String, Integer)))
         }
        def trial_period_days=(_trial_period_days); end
        sig {
          params(invoice_settings: T.nilable(Checkout::SessionUpdateParams::SubscriptionData::InvoiceSettings), trial_end: T.nilable(Integer), trial_period_days: T.nilable(T.any(String, Integer))).void
         }
        def initialize(invoice_settings: nil, trial_end: nil, trial_period_days: nil); end
      end
      # Settings for automatic tax lookup for this session and resulting payments, invoices, and subscriptions.
      sig { returns(T.nilable(Checkout::SessionUpdateParams::AutomaticTax)) }
      def automatic_tax; end
      sig {
        params(_automatic_tax: T.nilable(Checkout::SessionUpdateParams::AutomaticTax)).returns(T.nilable(Checkout::SessionUpdateParams::AutomaticTax))
       }
      def automatic_tax=(_automatic_tax); end
      # Information about the customer collected within the Checkout Session. Can only be set when updating `embedded` or `custom` sessions.
      sig { returns(T.nilable(Checkout::SessionUpdateParams::CollectedInformation)) }
      def collected_information; end
      sig {
        params(_collected_information: T.nilable(Checkout::SessionUpdateParams::CollectedInformation)).returns(T.nilable(Checkout::SessionUpdateParams::CollectedInformation))
       }
      def collected_information=(_collected_information); end
      # List of coupons and promotion codes attached to the Checkout Session.
      sig { returns(T.nilable(T.any(String, T::Array[Checkout::SessionUpdateParams::Discount]))) }
      def discounts; end
      sig {
        params(_discounts: T.nilable(T.any(String, T::Array[Checkout::SessionUpdateParams::Discount]))).returns(T.nilable(T.any(String, T::Array[Checkout::SessionUpdateParams::Discount])))
       }
      def discounts=(_discounts); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Generate a post-purchase Invoice for one-time payments.
      sig { returns(T.nilable(Checkout::SessionUpdateParams::InvoiceCreation)) }
      def invoice_creation; end
      sig {
        params(_invoice_creation: T.nilable(Checkout::SessionUpdateParams::InvoiceCreation)).returns(T.nilable(Checkout::SessionUpdateParams::InvoiceCreation))
       }
      def invoice_creation=(_invoice_creation); end
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
      sig { returns(T.nilable(T::Array[Checkout::SessionUpdateParams::LineItem])) }
      def line_items; end
      sig {
        params(_line_items: T.nilable(T::Array[Checkout::SessionUpdateParams::LineItem])).returns(T.nilable(T::Array[Checkout::SessionUpdateParams::LineItem]))
       }
      def line_items=(_line_items); end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
       }
      def metadata=(_metadata); end
      # The shipping rate options to apply to this Session. Up to a maximum of 5.
      sig {
        returns(T.nilable(T.any(String, T::Array[Checkout::SessionUpdateParams::ShippingOption])))
       }
      def shipping_options; end
      sig {
        params(_shipping_options: T.nilable(T.any(String, T::Array[Checkout::SessionUpdateParams::ShippingOption]))).returns(T.nilable(T.any(String, T::Array[Checkout::SessionUpdateParams::ShippingOption])))
       }
      def shipping_options=(_shipping_options); end
      # A subset of parameters to be passed to subscription creation for Checkout Sessions in `subscription` mode.
      sig { returns(T.nilable(Checkout::SessionUpdateParams::SubscriptionData)) }
      def subscription_data; end
      sig {
        params(_subscription_data: T.nilable(Checkout::SessionUpdateParams::SubscriptionData)).returns(T.nilable(Checkout::SessionUpdateParams::SubscriptionData))
       }
      def subscription_data=(_subscription_data); end
      sig {
        params(automatic_tax: T.nilable(Checkout::SessionUpdateParams::AutomaticTax), collected_information: T.nilable(Checkout::SessionUpdateParams::CollectedInformation), discounts: T.nilable(T.any(String, T::Array[Checkout::SessionUpdateParams::Discount])), expand: T.nilable(T::Array[String]), invoice_creation: T.nilable(Checkout::SessionUpdateParams::InvoiceCreation), line_items: T.nilable(T::Array[Checkout::SessionUpdateParams::LineItem]), metadata: T.nilable(T.any(String, T::Hash[String, String])), shipping_options: T.nilable(T.any(String, T::Array[Checkout::SessionUpdateParams::ShippingOption])), subscription_data: T.nilable(Checkout::SessionUpdateParams::SubscriptionData)).void
       }
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
      ); end
    end
  end
end