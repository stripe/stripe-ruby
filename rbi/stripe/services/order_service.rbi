# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class OrderService < StripeService
    attr_reader :line_items
    class ListParams < Stripe::RequestParams
      # Only return orders for the given customer.
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
      sig {
        params(customer: T.nilable(String), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
       }
      def initialize(
        customer: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        starting_after: nil
      ); end
    end
    class CreateParams < Stripe::RequestParams
      class AutomaticTax < Stripe::RequestParams
        # Enable automatic tax calculation which will automatically compute tax rates on this order.
        sig { returns(T::Boolean) }
        attr_accessor :enabled
        sig { params(enabled: T::Boolean).void }
        def initialize(enabled: nil); end
      end
      class BillingDetails < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          sig { returns(T.nilable(String)) }
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(T.nilable(String)) }
          attr_accessor :country
          # Address line 1 (e.g., street, PO Box, or company name).
          sig { returns(T.nilable(String)) }
          attr_accessor :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          sig { returns(T.nilable(String)) }
          attr_accessor :line2
          # ZIP or postal code.
          sig { returns(T.nilable(String)) }
          attr_accessor :postal_code
          # State/province as an [ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2) subdivision code, without country prefix. Example: "NY" or "TX".
          sig { returns(T.nilable(String)) }
          attr_accessor :state
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
        sig { returns(T.nilable(::Stripe::OrderService::CreateParams::BillingDetails::Address)) }
        attr_accessor :address
        # The billing email provided by the customer.
        sig { returns(T.nilable(String)) }
        attr_accessor :email
        # The billing name provided by the customer.
        sig { returns(T.nilable(String)) }
        attr_accessor :name
        # The billing phone number provided by the customer.
        sig { returns(T.nilable(String)) }
        attr_accessor :phone
        sig {
          params(address: T.nilable(::Stripe::OrderService::CreateParams::BillingDetails::Address), email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
         }
        def initialize(address: nil, email: nil, name: nil, phone: nil); end
      end
      class Credit < Stripe::RequestParams
        # The gift card to apply to the order.
        sig { returns(T.nilable(String)) }
        attr_accessor :gift_card
        # The type of credit to apply to the order, only `gift_card` currently supported.
        sig { returns(String) }
        attr_accessor :type
        sig { params(gift_card: T.nilable(String), type: String).void }
        def initialize(gift_card: nil, type: nil); end
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
      class LineItem < Stripe::RequestParams
        class Discount < Stripe::RequestParams
          # ID of the coupon to create a new discount for.
          sig { returns(T.nilable(String)) }
          attr_accessor :coupon
          # ID of an existing discount on the object (or one of its ancestors) to reuse.
          sig { returns(T.nilable(String)) }
          attr_accessor :discount
          sig { params(coupon: T.nilable(String), discount: T.nilable(String)).void }
          def initialize(coupon: nil, discount: nil); end
        end
        class PriceData < Stripe::RequestParams
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(T.nilable(String)) }
          attr_accessor :currency
          # ID of the [Product](https://docs.stripe.com/api/products) this [Price](https://docs.stripe.com/api/prices) belongs to.
          #
          # Use this to implement a variable-pricing model in your integration. This is required if `product_data` is not specified.
          sig { returns(T.nilable(String)) }
          attr_accessor :product
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
        class ProductData < Stripe::RequestParams
          class PackageDimensions < Stripe::RequestParams
            # Height, in inches. Maximum precision is 2 decimal places.
            sig { returns(Float) }
            attr_accessor :height
            # Length, in inches. Maximum precision is 2 decimal places.
            sig { returns(Float) }
            attr_accessor :length
            # Weight, in ounces. Maximum precision is 2 decimal places.
            sig { returns(Float) }
            attr_accessor :weight
            # Width, in inches. Maximum precision is 2 decimal places.
            sig { returns(Float) }
            attr_accessor :width
            sig { params(height: Float, length: Float, weight: Float, width: Float).void }
            def initialize(height: nil, length: nil, weight: nil, width: nil); end
          end
          # The product's description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes.
          sig { returns(T.nilable(T.nilable(String))) }
          attr_accessor :description
          # A unique identifier for this product.
          #
          # `product_data` automatically creates a Product with this ID. If a Product with the same ID already exists, then `product_data` re-uses it to avoid duplicates. If any of the fields in the existing Product are different from the values in `product_data`, `product_data` updates the existing Product with the new information. So set `product_data[id]` to the same string every time you sell the same product, but don't re-use the same string for different products.
          sig { returns(String) }
          attr_accessor :id
          # A list of up to 8 URLs of images for this product, meant to be displayable to the customer.
          sig { returns(T.nilable(T.nilable(T.any(String, T::Array[String])))) }
          attr_accessor :images
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
          sig { returns(T.nilable(T.nilable(T.any(String, T::Hash[String, String])))) }
          attr_accessor :metadata
          # The product's name, meant to be displayable to the customer.
          sig { returns(String) }
          attr_accessor :name
          # The dimensions of this product for shipping purposes.
          sig {
            returns(T.nilable(T.nilable(T.any(String, ::Stripe::OrderService::CreateParams::LineItem::ProductData::PackageDimensions))))
           }
          attr_accessor :package_dimensions
          # Whether this product is shipped (i.e., physical goods).
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :shippable
          # A [tax code](https://stripe.com/docs/tax/tax-categories) ID.
          sig { returns(T.nilable(T.nilable(String))) }
          attr_accessor :tax_code
          # A URL of a publicly-accessible webpage for this product.
          sig { returns(T.nilable(T.nilable(String))) }
          attr_accessor :url
          sig {
            params(description: T.nilable(T.nilable(String)), id: String, images: T.nilable(T.nilable(T.any(String, T::Array[String]))), metadata: T.nilable(T.nilable(T.any(String, T::Hash[String, String]))), name: String, package_dimensions: T.nilable(T.nilable(T.any(String, ::Stripe::OrderService::CreateParams::LineItem::ProductData::PackageDimensions))), shippable: T.nilable(T::Boolean), tax_code: T.nilable(T.nilable(String)), url: T.nilable(T.nilable(String))).void
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
        attr_accessor :description
        # The discounts applied to this line item.
        sig {
          returns(T.nilable(T.nilable(T.any(String, T::Array[::Stripe::OrderService::CreateParams::LineItem::Discount]))))
         }
        attr_accessor :discounts
        # The ID of a [Price](https://docs.stripe.com/api/prices) to add to the Order.
        #
        # The `price` parameter is an alternative to using the `product` parameter. If each of your products are sold at a single price, you can set `Product.default_price` and then pass the `product` parameter when creating a line item. If your products are sold at several possible prices, use the `price` parameter to explicitly specify which one to use.
        sig { returns(T.nilable(String)) }
        attr_accessor :price
        # Data used to generate a new Price object inline.
        #
        # The `price_data` parameter is an alternative to using the `product` or `price` parameters. If you create a Product upfront and configure a `Product.default_price`, pass the `product` parameter when creating a line item. If you prefer not to define Products upfront, or if you charge variable prices, pass the `price_data` parameter to describe the price for this line item.
        #
        # Each time you pass `price_data` we create a Price for the Product. This Price is hidden in both the Dashboard and API lists and cannot be reused.
        sig { returns(T.nilable(::Stripe::OrderService::CreateParams::LineItem::PriceData)) }
        attr_accessor :price_data
        # The ID of a [Product](https://docs.stripe.com/api/products) to add to the Order.
        #
        # The Product must have a `default_price` specified. Otherwise, specify the price by passing the `price` or `price_data` parameter.
        sig { returns(T.nilable(String)) }
        attr_accessor :product
        # Defines a [Product](https://docs.stripe.com/api/products) inline and adds it to the Order.
        #
        # `product_data` is an alternative to the `product` parameter. If you created a Product upfront, use the `product` parameter to refer to the existing Product. But if you prefer not to create Products upfront, pass the `product_data` parameter to define a Product inline as part of configuring the Order.
        #
        # `product_data` automatically creates a Product, just as if you had manually created the Product. If a Product with the same ID already exists, then `product_data` re-uses it to avoid duplicates.
        sig { returns(T.nilable(::Stripe::OrderService::CreateParams::LineItem::ProductData)) }
        attr_accessor :product_data
        # The quantity of the line item.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :quantity
        # The tax rates applied to this line item.
        sig { returns(T.nilable(T.nilable(T.any(String, T::Array[String])))) }
        attr_accessor :tax_rates
        sig {
          params(description: T.nilable(String), discounts: T.nilable(T.nilable(T.any(String, T::Array[::Stripe::OrderService::CreateParams::LineItem::Discount]))), price: T.nilable(String), price_data: T.nilable(::Stripe::OrderService::CreateParams::LineItem::PriceData), product: T.nilable(String), product_data: T.nilable(::Stripe::OrderService::CreateParams::LineItem::ProductData), quantity: T.nilable(Integer), tax_rates: T.nilable(T.nilable(T.any(String, T::Array[String])))).void
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
      class Payment < Stripe::RequestParams
        class Settings < Stripe::RequestParams
          class PaymentMethodOptions < Stripe::RequestParams
            class AcssDebit < Stripe::RequestParams
              class MandateOptions < Stripe::RequestParams
                # A URL for custom mandate text to render during confirmation step.
                # The URL will be rendered with additional GET parameters `payment_intent` and `payment_intent_client_secret` when confirming a Payment Intent,
                # or `setup_intent` and `setup_intent_client_secret` when confirming a Setup Intent.
                sig { returns(T.nilable(T.nilable(String))) }
                attr_accessor :custom_mandate_url
                # Description of the mandate interval. Only required if 'payment_schedule' parameter is 'interval' or 'combined'.
                sig { returns(T.nilable(String)) }
                attr_accessor :interval_description
                # Payment schedule for the mandate.
                sig { returns(T.nilable(String)) }
                attr_accessor :payment_schedule
                # Transaction type of the mandate.
                sig { returns(T.nilable(String)) }
                attr_accessor :transaction_type
                sig {
                  params(custom_mandate_url: T.nilable(T.nilable(String)), interval_description: T.nilable(String), payment_schedule: T.nilable(String), transaction_type: T.nilable(String)).void
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
                returns(T.nilable(::Stripe::OrderService::CreateParams::Payment::Settings::PaymentMethodOptions::AcssDebit::MandateOptions))
               }
              attr_accessor :mandate_options
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(T.nilable(T.any(String, String)))) }
              attr_accessor :setup_future_usage
              # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
              sig { returns(T.nilable(String)) }
              attr_accessor :target_date
              # Bank account verification method.
              sig { returns(T.nilable(String)) }
              attr_accessor :verification_method
              sig {
                params(mandate_options: T.nilable(::Stripe::OrderService::CreateParams::Payment::Settings::PaymentMethodOptions::AcssDebit::MandateOptions), setup_future_usage: T.nilable(T.nilable(T.any(String, String))), target_date: T.nilable(String), verification_method: T.nilable(String)).void
               }
              def initialize(
                mandate_options: nil,
                setup_future_usage: nil,
                target_date: nil,
                verification_method: nil
              ); end
            end
            class AfterpayClearpay < Stripe::RequestParams
              # Controls when the funds are captured from the customer's account.
              #
              # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
              #
              # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
              sig { returns(T.nilable(String)) }
              attr_accessor :capture_method
              # An internal identifier or reference this payment corresponds to. The identifier is limited to 128 characters and may contain only letters, digits, underscores, backslashes and dashes.
              sig { returns(T.nilable(String)) }
              attr_accessor :reference
              # Indicates that you intend to make future payments with the payment method.
              #
              # Providing this parameter will [attach the payment method](https://stripe.com/docs/payments/save-during-payment) to the order's Customer, if present, after the order's PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https://stripe.com/docs/api/payment_methods/attach) to a Customer after the transaction completes.
              #
              # When processing card payments, Stripe also uses `setup_future_usage` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https://stripe.com/docs/strong-customer-authentication).
              #
              # If `setup_future_usage` is already set and you are performing a request using a publishable key, you may only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(String)) }
              attr_accessor :setup_future_usage
              sig {
                params(capture_method: T.nilable(String), reference: T.nilable(String), setup_future_usage: T.nilable(String)).void
               }
              def initialize(capture_method: nil, reference: nil, setup_future_usage: nil); end
            end
            class Alipay < Stripe::RequestParams
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(T.nilable(T.any(String, String)))) }
              attr_accessor :setup_future_usage
              sig { params(setup_future_usage: T.nilable(T.nilable(T.any(String, String)))).void }
              def initialize(setup_future_usage: nil); end
            end
            class Bancontact < Stripe::RequestParams
              # Preferred language of the Bancontact authorization page that the customer is redirected to.
              sig { returns(T.nilable(String)) }
              attr_accessor :preferred_language
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(T.nilable(T.any(String, String)))) }
              attr_accessor :setup_future_usage
              sig {
                params(preferred_language: T.nilable(String), setup_future_usage: T.nilable(T.nilable(T.any(String, String)))).void
               }
              def initialize(preferred_language: nil, setup_future_usage: nil); end
            end
            class Card < Stripe::RequestParams
              # Controls when the funds will be captured from the customer's account.
              sig { returns(T.nilable(String)) }
              attr_accessor :capture_method
              # Indicates that you intend to make future payments with the payment method.
              #
              # Providing this parameter will [attach the payment method](https://stripe.com/docs/payments/save-during-payment) to the order's Customer, if present, after the order's PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https://stripe.com/docs/api/payment_methods/attach) to a Customer after the transaction completes.
              #
              # When processing card payments, Stripe also uses `setup_future_usage` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https://stripe.com/docs/strong-customer-authentication).
              #
              # If `setup_future_usage` is already set and you are performing a request using a publishable key, you may only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(String)) }
              attr_accessor :setup_future_usage
              sig {
                params(capture_method: T.nilable(String), setup_future_usage: T.nilable(String)).void
               }
              def initialize(capture_method: nil, setup_future_usage: nil); end
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
                # Configuration for the eu_bank_transfer funding type.
                sig {
                  returns(T.nilable(::Stripe::OrderService::CreateParams::Payment::Settings::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer))
                 }
                attr_accessor :eu_bank_transfer
                # List of address types that should be returned in the financial_addresses response. If not specified, all valid types will be returned.
                #
                # Permitted values include: `sort_code`, `zengin`, `iban`, or `spei`.
                sig { returns(T.nilable(T::Array[String])) }
                attr_accessor :requested_address_types
                # The list of bank transfer types that this PaymentIntent is allowed to use for funding Permitted values include: `eu_bank_transfer`, `gb_bank_transfer`, `jp_bank_transfer`, `mx_bank_transfer`, or `us_bank_transfer`.
                sig { returns(String) }
                attr_accessor :type
                sig {
                  params(eu_bank_transfer: T.nilable(::Stripe::OrderService::CreateParams::Payment::Settings::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer), requested_address_types: T.nilable(T::Array[String]), type: String).void
                 }
                def initialize(eu_bank_transfer: nil, requested_address_types: nil, type: nil); end
              end
              # Configuration for the bank transfer funding type, if the `funding_type` is set to `bank_transfer`.
              sig {
                returns(T.nilable(::Stripe::OrderService::CreateParams::Payment::Settings::PaymentMethodOptions::CustomerBalance::BankTransfer))
               }
              attr_accessor :bank_transfer
              # The funding method type to be used when there are not enough funds in the customer balance. Permitted values include: `bank_transfer`.
              sig { returns(T.nilable(String)) }
              attr_accessor :funding_type
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
              attr_accessor :setup_future_usage
              sig {
                params(bank_transfer: T.nilable(::Stripe::OrderService::CreateParams::Payment::Settings::PaymentMethodOptions::CustomerBalance::BankTransfer), funding_type: T.nilable(String), setup_future_usage: T.nilable(String)).void
               }
              def initialize(bank_transfer: nil, funding_type: nil, setup_future_usage: nil); end
            end
            class Ideal < Stripe::RequestParams
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(T.nilable(T.any(String, String)))) }
              attr_accessor :setup_future_usage
              sig { params(setup_future_usage: T.nilable(T.nilable(T.any(String, String)))).void }
              def initialize(setup_future_usage: nil); end
            end
            class Klarna < Stripe::RequestParams
              # Controls when the funds are captured from the customer's account.
              #
              # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
              #
              # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
              sig { returns(T.nilable(T.nilable(String))) }
              attr_accessor :capture_method
              # Preferred language of the Klarna authorization page that the customer is redirected to
              sig { returns(T.nilable(String)) }
              attr_accessor :preferred_locale
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
              attr_accessor :setup_future_usage
              sig {
                params(capture_method: T.nilable(T.nilable(String)), preferred_locale: T.nilable(String), setup_future_usage: T.nilable(String)).void
               }
              def initialize(
                capture_method: nil,
                preferred_locale: nil,
                setup_future_usage: nil
              ); end
            end
            class Link < Stripe::RequestParams
              # Controls when the funds are captured from the customer's account.
              #
              # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
              #
              # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
              sig { returns(T.nilable(T.nilable(String))) }
              attr_accessor :capture_method
              # [Deprecated] This is a legacy parameter that no longer has any function.
              sig { returns(T.nilable(String)) }
              attr_accessor :persistent_token
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(T.nilable(T.any(String, String)))) }
              attr_accessor :setup_future_usage
              sig {
                params(capture_method: T.nilable(T.nilable(String)), persistent_token: T.nilable(String), setup_future_usage: T.nilable(T.nilable(T.any(String, String)))).void
               }
              def initialize(
                capture_method: nil,
                persistent_token: nil,
                setup_future_usage: nil
              ); end
            end
            class Oxxo < Stripe::RequestParams
              # The number of calendar days before an OXXO voucher expires. For example, if you create an OXXO voucher on Monday and you set expires_after_days to 2, the OXXO invoice will expire on Wednesday at 23:59 America/Mexico_City time.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :expires_after_days
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
              attr_accessor :setup_future_usage
              sig {
                params(expires_after_days: T.nilable(Integer), setup_future_usage: T.nilable(String)).void
               }
              def initialize(expires_after_days: nil, setup_future_usage: nil); end
            end
            class P24 < Stripe::RequestParams
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
              attr_accessor :setup_future_usage
              # Confirm that the payer has accepted the P24 terms and conditions.
              sig { returns(T.nilable(T::Boolean)) }
              attr_accessor :tos_shown_and_accepted
              sig {
                params(setup_future_usage: T.nilable(String), tos_shown_and_accepted: T.nilable(T::Boolean)).void
               }
              def initialize(setup_future_usage: nil, tos_shown_and_accepted: nil); end
            end
            class Paypal < Stripe::RequestParams
              class LineItem < Stripe::RequestParams
                class Tax < Stripe::RequestParams
                  # The tax for a single unit of the line item in minor units. Cannot be a negative number.
                  sig { returns(Integer) }
                  attr_accessor :amount
                  # The tax behavior for the line item.
                  sig { returns(String) }
                  attr_accessor :behavior
                  sig { params(amount: Integer, behavior: String).void }
                  def initialize(amount: nil, behavior: nil); end
                end
                # Type of the line item.
                sig { returns(T.nilable(String)) }
                attr_accessor :category
                # Description of the line item.
                sig { returns(T.nilable(String)) }
                attr_accessor :description
                # Descriptive name of the line item.
                sig { returns(String) }
                attr_accessor :name
                # Quantity of the line item. Must be a positive number.
                sig { returns(Integer) }
                attr_accessor :quantity
                # Client facing stock keeping unit, article number or similar.
                sig { returns(T.nilable(String)) }
                attr_accessor :sku
                # The Stripe account ID of the connected account that sells the item.
                sig { returns(T.nilable(String)) }
                attr_accessor :sold_by
                # The tax information for the line item.
                sig {
                  returns(T.nilable(::Stripe::OrderService::CreateParams::Payment::Settings::PaymentMethodOptions::Paypal::LineItem::Tax))
                 }
                attr_accessor :tax
                # Price for a single unit of the line item in minor units. Cannot be a negative number.
                sig { returns(Integer) }
                attr_accessor :unit_amount
                sig {
                  params(category: T.nilable(String), description: T.nilable(String), name: String, quantity: Integer, sku: T.nilable(String), sold_by: T.nilable(String), tax: T.nilable(::Stripe::OrderService::CreateParams::Payment::Settings::PaymentMethodOptions::Paypal::LineItem::Tax), unit_amount: Integer).void
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
              sig { returns(T.nilable(T.nilable(String))) }
              attr_accessor :capture_method
              # The line items purchased by the customer.
              sig {
                returns(T.nilable(T::Array[::Stripe::OrderService::CreateParams::Payment::Settings::PaymentMethodOptions::Paypal::LineItem]))
               }
              attr_accessor :line_items
              # [Preferred locale](https://stripe.com/docs/payments/paypal/supported-locales) of the PayPal checkout page that the customer is redirected to.
              sig { returns(T.nilable(String)) }
              attr_accessor :preferred_locale
              # A reference of the PayPal transaction visible to customer which is mapped to PayPal's invoice ID. This must be a globally unique ID if you have configured in your PayPal settings to block multiple payments per invoice ID.
              sig { returns(T.nilable(String)) }
              attr_accessor :reference
              # A reference of the PayPal transaction visible to customer which is mapped to PayPal's invoice ID. This must be a globally unique ID if you have configured in your PayPal settings to block multiple payments per invoice ID.
              sig { returns(T.nilable(String)) }
              attr_accessor :reference_id
              # The risk correlation ID for an on-session payment using a saved PayPal payment method.
              sig { returns(T.nilable(String)) }
              attr_accessor :risk_correlation_id
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(T.nilable(T.any(String, String)))) }
              attr_accessor :setup_future_usage
              # The Stripe connected account IDs of the sellers on the platform for this transaction (optional). Only allowed when [separate charges and transfers](https://stripe.com/docs/connect/separate-charges-and-transfers) are used.
              sig { returns(T.nilable(T::Array[String])) }
              attr_accessor :subsellers
              sig {
                params(capture_method: T.nilable(T.nilable(String)), line_items: T.nilable(T::Array[::Stripe::OrderService::CreateParams::Payment::Settings::PaymentMethodOptions::Paypal::LineItem]), preferred_locale: T.nilable(String), reference: T.nilable(String), reference_id: T.nilable(String), risk_correlation_id: T.nilable(String), setup_future_usage: T.nilable(T.nilable(T.any(String, String))), subsellers: T.nilable(T::Array[String])).void
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
            class SepaDebit < Stripe::RequestParams
              class MandateOptions < Stripe::RequestParams
                # Prefix used to generate the Mandate reference. Must be at most 12 characters long. Must consist of only uppercase letters, numbers, spaces, or the following special characters: '/', '_', '-', '&', '.'. Cannot begin with 'STRIPE'.
                sig { returns(T.nilable(T.nilable(String))) }
                attr_accessor :reference_prefix
                sig { params(reference_prefix: T.nilable(T.nilable(String))).void }
                def initialize(reference_prefix: nil); end
              end
              # Additional fields for Mandate creation
              sig {
                returns(T.nilable(::Stripe::OrderService::CreateParams::Payment::Settings::PaymentMethodOptions::SepaDebit::MandateOptions))
               }
              attr_accessor :mandate_options
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(T.nilable(T.any(String, String)))) }
              attr_accessor :setup_future_usage
              # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
              sig { returns(T.nilable(String)) }
              attr_accessor :target_date
              sig {
                params(mandate_options: T.nilable(::Stripe::OrderService::CreateParams::Payment::Settings::PaymentMethodOptions::SepaDebit::MandateOptions), setup_future_usage: T.nilable(T.nilable(T.any(String, String))), target_date: T.nilable(String)).void
               }
              def initialize(mandate_options: nil, setup_future_usage: nil, target_date: nil); end
            end
            class Sofort < Stripe::RequestParams
              # Language shown to the payer on redirect.
              sig { returns(T.nilable(T.nilable(T.any(String, String)))) }
              attr_accessor :preferred_language
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(T.nilable(T.any(String, String)))) }
              attr_accessor :setup_future_usage
              sig {
                params(preferred_language: T.nilable(T.nilable(T.any(String, String))), setup_future_usage: T.nilable(T.nilable(T.any(String, String)))).void
               }
              def initialize(preferred_language: nil, setup_future_usage: nil); end
            end
            class WechatPay < Stripe::RequestParams
              # The app ID registered with WeChat Pay. Only required when client is ios or android.
              sig { returns(T.nilable(String)) }
              attr_accessor :app_id
              # The client type that the end customer will pay from
              sig { returns(T.nilable(String)) }
              attr_accessor :client
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
              attr_accessor :setup_future_usage
              sig {
                params(app_id: T.nilable(String), client: T.nilable(String), setup_future_usage: T.nilable(String)).void
               }
              def initialize(app_id: nil, client: nil, setup_future_usage: nil); end
            end
            # If paying by `acss_debit`, this sub-hash contains details about the ACSS Debit payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(::Stripe::OrderService::CreateParams::Payment::Settings::PaymentMethodOptions::AcssDebit))
             }
            attr_accessor :acss_debit
            # If paying by `afterpay_clearpay`, this sub-hash contains details about the AfterpayClearpay payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(::Stripe::OrderService::CreateParams::Payment::Settings::PaymentMethodOptions::AfterpayClearpay))
             }
            attr_accessor :afterpay_clearpay
            # If paying by `alipay`, this sub-hash contains details about the Alipay payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(::Stripe::OrderService::CreateParams::Payment::Settings::PaymentMethodOptions::Alipay))
             }
            attr_accessor :alipay
            # If paying by `bancontact`, this sub-hash contains details about the Bancontact payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(::Stripe::OrderService::CreateParams::Payment::Settings::PaymentMethodOptions::Bancontact))
             }
            attr_accessor :bancontact
            # If paying by `card`, this sub-hash contains details about the Card payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(::Stripe::OrderService::CreateParams::Payment::Settings::PaymentMethodOptions::Card))
             }
            attr_accessor :card
            # If paying by `customer_balance`, this sub-hash contains details about the Customer Balance payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(::Stripe::OrderService::CreateParams::Payment::Settings::PaymentMethodOptions::CustomerBalance))
             }
            attr_accessor :customer_balance
            # If paying by `ideal`, this sub-hash contains details about the iDEAL payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(::Stripe::OrderService::CreateParams::Payment::Settings::PaymentMethodOptions::Ideal))
             }
            attr_accessor :ideal
            # If paying by `klarna`, this sub-hash contains details about the Klarna payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(::Stripe::OrderService::CreateParams::Payment::Settings::PaymentMethodOptions::Klarna))
             }
            attr_accessor :klarna
            # If paying by `link`, this sub-hash contains details about the Link payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(::Stripe::OrderService::CreateParams::Payment::Settings::PaymentMethodOptions::Link))
             }
            attr_accessor :link
            # If paying by `oxxo`, this sub-hash contains details about the OXXO payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(::Stripe::OrderService::CreateParams::Payment::Settings::PaymentMethodOptions::Oxxo))
             }
            attr_accessor :oxxo
            # If paying by `p24`, this sub-hash contains details about the P24 payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(::Stripe::OrderService::CreateParams::Payment::Settings::PaymentMethodOptions::P24))
             }
            attr_accessor :p24
            # If paying by `paypal`, this sub-hash contains details about the PayPal payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(::Stripe::OrderService::CreateParams::Payment::Settings::PaymentMethodOptions::Paypal))
             }
            attr_accessor :paypal
            # If paying by `sepa_debit`, this sub-hash contains details about the SEPA Debit payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(::Stripe::OrderService::CreateParams::Payment::Settings::PaymentMethodOptions::SepaDebit))
             }
            attr_accessor :sepa_debit
            # If paying by `sofort`, this sub-hash contains details about the Sofort payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(::Stripe::OrderService::CreateParams::Payment::Settings::PaymentMethodOptions::Sofort))
             }
            attr_accessor :sofort
            # If paying by `wechat_pay`, this sub-hash contains details about the WeChat Pay payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(::Stripe::OrderService::CreateParams::Payment::Settings::PaymentMethodOptions::WechatPay))
             }
            attr_accessor :wechat_pay
            sig {
              params(acss_debit: T.nilable(::Stripe::OrderService::CreateParams::Payment::Settings::PaymentMethodOptions::AcssDebit), afterpay_clearpay: T.nilable(::Stripe::OrderService::CreateParams::Payment::Settings::PaymentMethodOptions::AfterpayClearpay), alipay: T.nilable(::Stripe::OrderService::CreateParams::Payment::Settings::PaymentMethodOptions::Alipay), bancontact: T.nilable(::Stripe::OrderService::CreateParams::Payment::Settings::PaymentMethodOptions::Bancontact), card: T.nilable(::Stripe::OrderService::CreateParams::Payment::Settings::PaymentMethodOptions::Card), customer_balance: T.nilable(::Stripe::OrderService::CreateParams::Payment::Settings::PaymentMethodOptions::CustomerBalance), ideal: T.nilable(::Stripe::OrderService::CreateParams::Payment::Settings::PaymentMethodOptions::Ideal), klarna: T.nilable(::Stripe::OrderService::CreateParams::Payment::Settings::PaymentMethodOptions::Klarna), link: T.nilable(::Stripe::OrderService::CreateParams::Payment::Settings::PaymentMethodOptions::Link), oxxo: T.nilable(::Stripe::OrderService::CreateParams::Payment::Settings::PaymentMethodOptions::Oxxo), p24: T.nilable(::Stripe::OrderService::CreateParams::Payment::Settings::PaymentMethodOptions::P24), paypal: T.nilable(::Stripe::OrderService::CreateParams::Payment::Settings::PaymentMethodOptions::Paypal), sepa_debit: T.nilable(::Stripe::OrderService::CreateParams::Payment::Settings::PaymentMethodOptions::SepaDebit), sofort: T.nilable(::Stripe::OrderService::CreateParams::Payment::Settings::PaymentMethodOptions::Sofort), wechat_pay: T.nilable(::Stripe::OrderService::CreateParams::Payment::Settings::PaymentMethodOptions::WechatPay)).void
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
          class TransferData < Stripe::RequestParams
            # The amount that will be transferred automatically when the order is paid. If no amount is set, the full amount is transferred. There cannot be any line items with recurring prices when using this field.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :amount
            # ID of the Connected account receiving the transfer.
            sig { returns(String) }
            attr_accessor :destination
            sig { params(amount: T.nilable(Integer), destination: String).void }
            def initialize(amount: nil, destination: nil); end
          end
          # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :application_fee_amount
          # PaymentMethod-specific configuration to provide to the order's PaymentIntent.
          sig {
            returns(T.nilable(::Stripe::OrderService::CreateParams::Payment::Settings::PaymentMethodOptions))
           }
          attr_accessor :payment_method_options
          # The list of [payment method types](https://stripe.com/docs/payments/payment-methods/overview) to provide to the order's PaymentIntent. Do not include this attribute if you prefer to manage your payment methods from the [Stripe Dashboard](https://dashboard.stripe.com/settings/payment_methods).
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :payment_method_types
          # The URL to redirect the customer to after they authenticate their payment.
          sig { returns(T.nilable(String)) }
          attr_accessor :return_url
          # For non-card charges, you can use this value as the complete description that appears on your customers' statements. Must contain at least one letter, maximum 22 characters.
          sig { returns(T.nilable(String)) }
          attr_accessor :statement_descriptor
          # Provides information about a card payment that customers see on their statements. Concatenated with the prefix (shortened descriptor) or statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 22 characters for the concatenated descriptor.
          sig { returns(T.nilable(String)) }
          attr_accessor :statement_descriptor_suffix
          # Provides configuration for completing a transfer for the order after it is paid.
          sig {
            returns(T.nilable(::Stripe::OrderService::CreateParams::Payment::Settings::TransferData))
           }
          attr_accessor :transfer_data
          sig {
            params(application_fee_amount: T.nilable(Integer), payment_method_options: T.nilable(::Stripe::OrderService::CreateParams::Payment::Settings::PaymentMethodOptions), payment_method_types: T.nilable(T::Array[String]), return_url: T.nilable(String), statement_descriptor: T.nilable(String), statement_descriptor_suffix: T.nilable(String), transfer_data: T.nilable(::Stripe::OrderService::CreateParams::Payment::Settings::TransferData)).void
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
        sig { returns(::Stripe::OrderService::CreateParams::Payment::Settings) }
        attr_accessor :settings
        sig { params(settings: ::Stripe::OrderService::CreateParams::Payment::Settings).void }
        def initialize(settings: nil); end
      end
      class ShippingCost < Stripe::RequestParams
        class ShippingRateData < Stripe::RequestParams
          class DeliveryEstimate < Stripe::RequestParams
            class Maximum < Stripe::RequestParams
              # A unit of time.
              sig { returns(String) }
              attr_accessor :unit
              # Must be greater than 0.
              sig { returns(Integer) }
              attr_accessor :value
              sig { params(unit: String, value: Integer).void }
              def initialize(unit: nil, value: nil); end
            end
            class Minimum < Stripe::RequestParams
              # A unit of time.
              sig { returns(String) }
              attr_accessor :unit
              # Must be greater than 0.
              sig { returns(Integer) }
              attr_accessor :value
              sig { params(unit: String, value: Integer).void }
              def initialize(unit: nil, value: nil); end
            end
            # The upper bound of the estimated range. If empty, represents no upper bound i.e., infinite.
            sig {
              returns(T.nilable(::Stripe::OrderService::CreateParams::ShippingCost::ShippingRateData::DeliveryEstimate::Maximum))
             }
            attr_accessor :maximum
            # The lower bound of the estimated range. If empty, represents no lower bound.
            sig {
              returns(T.nilable(::Stripe::OrderService::CreateParams::ShippingCost::ShippingRateData::DeliveryEstimate::Minimum))
             }
            attr_accessor :minimum
            sig {
              params(maximum: T.nilable(::Stripe::OrderService::CreateParams::ShippingCost::ShippingRateData::DeliveryEstimate::Maximum), minimum: T.nilable(::Stripe::OrderService::CreateParams::ShippingCost::ShippingRateData::DeliveryEstimate::Minimum)).void
             }
            def initialize(maximum: nil, minimum: nil); end
          end
          class FixedAmount < Stripe::RequestParams
            class CurrencyOptions < Stripe::RequestParams
              # A non-negative integer in cents representing how much to charge.
              sig { returns(Integer) }
              attr_accessor :amount
              # Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`.
              sig { returns(T.nilable(String)) }
              attr_accessor :tax_behavior
              sig { params(amount: Integer, tax_behavior: T.nilable(String)).void }
              def initialize(amount: nil, tax_behavior: nil); end
            end
            # A non-negative integer in cents representing how much to charge.
            sig { returns(Integer) }
            attr_accessor :amount
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(String) }
            attr_accessor :currency
            # Shipping rates defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
            sig {
              returns(T.nilable(T::Hash[String, ::Stripe::OrderService::CreateParams::ShippingCost::ShippingRateData::FixedAmount::CurrencyOptions]))
             }
            attr_accessor :currency_options
            sig {
              params(amount: Integer, currency: String, currency_options: T.nilable(T::Hash[String, ::Stripe::OrderService::CreateParams::ShippingCost::ShippingRateData::FixedAmount::CurrencyOptions])).void
             }
            def initialize(amount: nil, currency: nil, currency_options: nil); end
          end
          # The estimated range for how long shipping will take, meant to be displayable to the customer. This will appear on CheckoutSessions.
          sig {
            returns(T.nilable(::Stripe::OrderService::CreateParams::ShippingCost::ShippingRateData::DeliveryEstimate))
           }
          attr_accessor :delivery_estimate
          # The name of the shipping rate, meant to be displayable to the customer. This will appear on CheckoutSessions.
          sig { returns(String) }
          attr_accessor :display_name
          # Describes a fixed amount to charge for shipping. Must be present if type is `fixed_amount`.
          sig {
            returns(T.nilable(::Stripe::OrderService::CreateParams::ShippingCost::ShippingRateData::FixedAmount))
           }
          attr_accessor :fixed_amount
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
          sig { returns(T.nilable(T::Hash[String, String])) }
          attr_accessor :metadata
          # Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`.
          sig { returns(T.nilable(String)) }
          attr_accessor :tax_behavior
          # A [tax code](https://stripe.com/docs/tax/tax-categories) ID. The Shipping tax code is `txcd_92010001`.
          sig { returns(T.nilable(String)) }
          attr_accessor :tax_code
          # The type of calculation to use on the shipping rate.
          sig { returns(T.nilable(String)) }
          attr_accessor :type
          sig {
            params(delivery_estimate: T.nilable(::Stripe::OrderService::CreateParams::ShippingCost::ShippingRateData::DeliveryEstimate), display_name: String, fixed_amount: T.nilable(::Stripe::OrderService::CreateParams::ShippingCost::ShippingRateData::FixedAmount), metadata: T.nilable(T::Hash[String, String]), tax_behavior: T.nilable(String), tax_code: T.nilable(String), type: T.nilable(String)).void
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
        attr_accessor :shipping_rate
        # Parameters to create a new ad-hoc shipping rate for this order.
        sig {
          returns(T.nilable(::Stripe::OrderService::CreateParams::ShippingCost::ShippingRateData))
         }
        attr_accessor :shipping_rate_data
        sig {
          params(shipping_rate: T.nilable(String), shipping_rate_data: T.nilable(::Stripe::OrderService::CreateParams::ShippingCost::ShippingRateData)).void
         }
        def initialize(shipping_rate: nil, shipping_rate_data: nil); end
      end
      class ShippingDetails < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          sig { returns(T.nilable(String)) }
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(T.nilable(String)) }
          attr_accessor :country
          # Address line 1 (e.g., street, PO Box, or company name).
          sig { returns(T.nilable(String)) }
          attr_accessor :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          sig { returns(T.nilable(String)) }
          attr_accessor :line2
          # ZIP or postal code.
          sig { returns(T.nilable(String)) }
          attr_accessor :postal_code
          # State/province as an [ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2) subdivision code, without country prefix. Example: "NY" or "TX".
          sig { returns(T.nilable(String)) }
          attr_accessor :state
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
        sig { returns(::Stripe::OrderService::CreateParams::ShippingDetails::Address) }
        attr_accessor :address
        # The name of the recipient of the order.
        sig { returns(String) }
        attr_accessor :name
        # The phone number (including extension) for the recipient of the order.
        sig { returns(T.nilable(T.nilable(String))) }
        attr_accessor :phone
        sig {
          params(address: ::Stripe::OrderService::CreateParams::ShippingDetails::Address, name: String, phone: T.nilable(T.nilable(String))).void
         }
        def initialize(address: nil, name: nil, phone: nil); end
      end
      class TaxDetails < Stripe::RequestParams
        class TaxId < Stripe::RequestParams
          # Type of the tax ID, one of `ad_nrt`, `ae_trn`, `al_tin`, `am_tin`, `ao_tin`, `ar_cuit`, `au_abn`, `au_arn`, `ba_tin`, `bb_tin`, `bg_uic`, `bh_vat`, `bo_tin`, `br_cnpj`, `br_cpf`, `bs_tin`, `by_tin`, `ca_bn`, `ca_gst_hst`, `ca_pst_bc`, `ca_pst_mb`, `ca_pst_sk`, `ca_qst`, `cd_nif`, `ch_uid`, `ch_vat`, `cl_tin`, `cn_tin`, `co_nit`, `cr_tin`, `de_stn`, `do_rcn`, `ec_ruc`, `eg_tin`, `es_cif`, `eu_oss_vat`, `eu_vat`, `gb_vat`, `ge_vat`, `gn_nif`, `hk_br`, `hr_oib`, `hu_tin`, `id_npwp`, `il_vat`, `in_gst`, `is_vat`, `jp_cn`, `jp_rn`, `jp_trn`, `ke_pin`, `kh_tin`, `kr_brn`, `kz_bin`, `li_uid`, `li_vat`, `ma_vat`, `md_vat`, `me_pib`, `mk_vat`, `mr_nif`, `mx_rfc`, `my_frp`, `my_itn`, `my_sst`, `ng_tin`, `no_vat`, `no_voec`, `np_pan`, `nz_gst`, `om_vat`, `pe_ruc`, `ph_tin`, `ro_tin`, `rs_pib`, `ru_inn`, `ru_kpp`, `sa_vat`, `sg_gst`, `sg_uen`, `si_tin`, `sn_ninea`, `sr_fin`, `sv_nit`, `th_vat`, `tj_tin`, `tr_tin`, `tw_vat`, `tz_vat`, `ua_vat`, `ug_tin`, `us_ein`, `uy_ruc`, `uz_tin`, `uz_vat`, `ve_rif`, `vn_tin`, `za_vat`, `zm_tin`, or `zw_tin`
          sig { returns(String) }
          attr_accessor :type
          # Value of the tax ID.
          sig { returns(String) }
          attr_accessor :value
          sig { params(type: String, value: String).void }
          def initialize(type: nil, value: nil); end
        end
        # The purchaser's tax exemption status. One of `none`, `exempt`, or `reverse`.
        sig { returns(T.nilable(T.nilable(T.any(String, String)))) }
        attr_accessor :tax_exempt
        # The purchaser's tax IDs to be used for this order.
        sig {
          returns(T.nilable(T::Array[::Stripe::OrderService::CreateParams::TaxDetails::TaxId]))
         }
        attr_accessor :tax_ids
        sig {
          params(tax_exempt: T.nilable(T.nilable(T.any(String, String))), tax_ids: T.nilable(T::Array[::Stripe::OrderService::CreateParams::TaxDetails::TaxId])).void
         }
        def initialize(tax_exempt: nil, tax_ids: nil); end
      end
      # Settings for automatic tax calculation for this order.
      sig { returns(T.nilable(::Stripe::OrderService::CreateParams::AutomaticTax)) }
      attr_accessor :automatic_tax
      # Billing details for the customer. If a customer is provided, this will be automatically populated with values from that customer if override values are not provided.
      sig {
        returns(T.nilable(T.nilable(T.any(String, ::Stripe::OrderService::CreateParams::BillingDetails))))
       }
      attr_accessor :billing_details
      # The credits to apply to the order, only `gift_card` currently supported.
      sig {
        returns(T.nilable(T.nilable(T.any(String, T::Array[::Stripe::OrderService::CreateParams::Credit]))))
       }
      attr_accessor :credits
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      attr_accessor :currency
      # The customer associated with this order.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer
      # An arbitrary string attached to the object. Often useful for displaying to users.
      sig { returns(T.nilable(String)) }
      attr_accessor :description
      # The coupons, promotion codes, and/or discounts to apply to the order.
      sig {
        returns(T.nilable(T.nilable(T.any(String, T::Array[::Stripe::OrderService::CreateParams::Discount]))))
       }
      attr_accessor :discounts
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # The IP address of the purchaser for this order.
      sig { returns(T.nilable(String)) }
      attr_accessor :ip_address
      # A list of line items the customer is ordering. Each line item includes information about the product, the quantity, and the resulting cost.
      sig { returns(T::Array[::Stripe::OrderService::CreateParams::LineItem]) }
      attr_accessor :line_items
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_accessor :metadata
      # Payment information associated with the order, including payment settings.
      sig { returns(T.nilable(::Stripe::OrderService::CreateParams::Payment)) }
      attr_accessor :payment
      # Settings for the customer cost of shipping for this order.
      sig {
        returns(T.nilable(T.nilable(T.any(String, ::Stripe::OrderService::CreateParams::ShippingCost))))
       }
      attr_accessor :shipping_cost
      # Shipping details for the order.
      sig {
        returns(T.nilable(T.nilable(T.any(String, ::Stripe::OrderService::CreateParams::ShippingDetails))))
       }
      attr_accessor :shipping_details
      # Additional tax details about the purchaser to be used for this order.
      sig { returns(T.nilable(::Stripe::OrderService::CreateParams::TaxDetails)) }
      attr_accessor :tax_details
      sig {
        params(automatic_tax: T.nilable(::Stripe::OrderService::CreateParams::AutomaticTax), billing_details: T.nilable(T.nilable(T.any(String, ::Stripe::OrderService::CreateParams::BillingDetails))), credits: T.nilable(T.nilable(T.any(String, T::Array[::Stripe::OrderService::CreateParams::Credit]))), currency: String, customer: T.nilable(String), description: T.nilable(String), discounts: T.nilable(T.nilable(T.any(String, T::Array[::Stripe::OrderService::CreateParams::Discount]))), expand: T.nilable(T::Array[String]), ip_address: T.nilable(String), line_items: T::Array[::Stripe::OrderService::CreateParams::LineItem], metadata: T.nilable(T::Hash[String, String]), payment: T.nilable(::Stripe::OrderService::CreateParams::Payment), shipping_cost: T.nilable(T.nilable(T.any(String, ::Stripe::OrderService::CreateParams::ShippingCost))), shipping_details: T.nilable(T.nilable(T.any(String, ::Stripe::OrderService::CreateParams::ShippingDetails))), tax_details: T.nilable(::Stripe::OrderService::CreateParams::TaxDetails)).void
       }
      def initialize(
        automatic_tax: nil,
        billing_details: nil,
        credits: nil,
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
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    class UpdateParams < Stripe::RequestParams
      class AutomaticTax < Stripe::RequestParams
        # Enable automatic tax calculation which will automatically compute tax rates on this order.
        sig { returns(T::Boolean) }
        attr_accessor :enabled
        sig { params(enabled: T::Boolean).void }
        def initialize(enabled: nil); end
      end
      class BillingDetails < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          sig { returns(T.nilable(String)) }
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(T.nilable(String)) }
          attr_accessor :country
          # Address line 1 (e.g., street, PO Box, or company name).
          sig { returns(T.nilable(String)) }
          attr_accessor :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          sig { returns(T.nilable(String)) }
          attr_accessor :line2
          # ZIP or postal code.
          sig { returns(T.nilable(String)) }
          attr_accessor :postal_code
          # State/province as an [ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2) subdivision code, without country prefix. Example: "NY" or "TX".
          sig { returns(T.nilable(String)) }
          attr_accessor :state
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
        sig { returns(T.nilable(::Stripe::OrderService::UpdateParams::BillingDetails::Address)) }
        attr_accessor :address
        # The billing email provided by the customer.
        sig { returns(T.nilable(String)) }
        attr_accessor :email
        # The billing name provided by the customer.
        sig { returns(T.nilable(String)) }
        attr_accessor :name
        # The billing phone number provided by the customer.
        sig { returns(T.nilable(String)) }
        attr_accessor :phone
        sig {
          params(address: T.nilable(::Stripe::OrderService::UpdateParams::BillingDetails::Address), email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
         }
        def initialize(address: nil, email: nil, name: nil, phone: nil); end
      end
      class Credit < Stripe::RequestParams
        # The gift card to apply to the order.
        sig { returns(T.nilable(String)) }
        attr_accessor :gift_card
        # The type of credit to apply to the order, only `gift_card` currently supported.
        sig { returns(String) }
        attr_accessor :type
        sig { params(gift_card: T.nilable(String), type: String).void }
        def initialize(gift_card: nil, type: nil); end
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
      class LineItem < Stripe::RequestParams
        class Discount < Stripe::RequestParams
          # ID of the coupon to create a new discount for.
          sig { returns(T.nilable(String)) }
          attr_accessor :coupon
          # ID of an existing discount on the object (or one of its ancestors) to reuse.
          sig { returns(T.nilable(String)) }
          attr_accessor :discount
          sig { params(coupon: T.nilable(String), discount: T.nilable(String)).void }
          def initialize(coupon: nil, discount: nil); end
        end
        class PriceData < Stripe::RequestParams
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(T.nilable(String)) }
          attr_accessor :currency
          # ID of the [Product](https://docs.stripe.com/api/products) this [Price](https://docs.stripe.com/api/prices) belongs to.
          #
          # Use this to implement a variable-pricing model in your integration. This is required if `product_data` is not specified.
          sig { returns(T.nilable(String)) }
          attr_accessor :product
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
        class ProductData < Stripe::RequestParams
          class PackageDimensions < Stripe::RequestParams
            # Height, in inches. Maximum precision is 2 decimal places.
            sig { returns(Float) }
            attr_accessor :height
            # Length, in inches. Maximum precision is 2 decimal places.
            sig { returns(Float) }
            attr_accessor :length
            # Weight, in ounces. Maximum precision is 2 decimal places.
            sig { returns(Float) }
            attr_accessor :weight
            # Width, in inches. Maximum precision is 2 decimal places.
            sig { returns(Float) }
            attr_accessor :width
            sig { params(height: Float, length: Float, weight: Float, width: Float).void }
            def initialize(height: nil, length: nil, weight: nil, width: nil); end
          end
          # The product's description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes.
          sig { returns(T.nilable(T.nilable(String))) }
          attr_accessor :description
          # A unique identifier for this product.
          #
          # `product_data` automatically creates a Product with this ID. If a Product with the same ID already exists, then `product_data` re-uses it to avoid duplicates. If any of the fields in the existing Product are different from the values in `product_data`, `product_data` updates the existing Product with the new information. So set `product_data[id]` to the same string every time you sell the same product, but don't re-use the same string for different products.
          sig { returns(String) }
          attr_accessor :id
          # A list of up to 8 URLs of images for this product, meant to be displayable to the customer.
          sig { returns(T.nilable(T.nilable(T.any(String, T::Array[String])))) }
          attr_accessor :images
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
          sig { returns(T.nilable(T.nilable(T.any(String, T::Hash[String, String])))) }
          attr_accessor :metadata
          # The product's name, meant to be displayable to the customer.
          sig { returns(String) }
          attr_accessor :name
          # The dimensions of this product for shipping purposes.
          sig {
            returns(T.nilable(T.nilable(T.any(String, ::Stripe::OrderService::UpdateParams::LineItem::ProductData::PackageDimensions))))
           }
          attr_accessor :package_dimensions
          # Whether this product is shipped (i.e., physical goods).
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :shippable
          # A [tax code](https://stripe.com/docs/tax/tax-categories) ID.
          sig { returns(T.nilable(T.nilable(String))) }
          attr_accessor :tax_code
          # A URL of a publicly-accessible webpage for this product.
          sig { returns(T.nilable(T.nilable(String))) }
          attr_accessor :url
          sig {
            params(description: T.nilable(T.nilable(String)), id: String, images: T.nilable(T.nilable(T.any(String, T::Array[String]))), metadata: T.nilable(T.nilable(T.any(String, T::Hash[String, String]))), name: String, package_dimensions: T.nilable(T.nilable(T.any(String, ::Stripe::OrderService::UpdateParams::LineItem::ProductData::PackageDimensions))), shippable: T.nilable(T::Boolean), tax_code: T.nilable(T.nilable(String)), url: T.nilable(T.nilable(String))).void
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
        attr_accessor :description
        # The discounts applied to this line item.
        sig {
          returns(T.nilable(T.nilable(T.any(String, T::Array[::Stripe::OrderService::UpdateParams::LineItem::Discount]))))
         }
        attr_accessor :discounts
        # The ID of an existing line item on the order.
        sig { returns(T.nilable(String)) }
        attr_accessor :id
        # The ID of a [Price](https://docs.stripe.com/api/prices) to add to the Order.
        #
        # The `price` parameter is an alternative to using the `product` parameter. If each of your products are sold at a single price, you can set `Product.default_price` and then pass the `product` parameter when creating a line item. If your products are sold at several possible prices, use the `price` parameter to explicitly specify which one to use.
        sig { returns(T.nilable(String)) }
        attr_accessor :price
        # Data used to generate a new Price object inline.
        #
        # The `price_data` parameter is an alternative to using the `product` or `price` parameters. If you create a Product upfront and configure a `Product.default_price`, pass the `product` parameter when creating a line item. If you prefer not to define Products upfront, or if you charge variable prices, pass the `price_data` parameter to describe the price for this line item.
        #
        # Each time you pass `price_data` we create a Price for the Product. This Price is hidden in both the Dashboard and API lists and cannot be reused.
        sig { returns(T.nilable(::Stripe::OrderService::UpdateParams::LineItem::PriceData)) }
        attr_accessor :price_data
        # The ID of a [Product](https://docs.stripe.com/api/products) to add to the Order.
        #
        # The Product must have a `default_price` specified. Otherwise, specify the price by passing the `price` or `price_data` parameter.
        sig { returns(T.nilable(String)) }
        attr_accessor :product
        # Defines a [Product](https://docs.stripe.com/api/products) inline and adds it to the Order.
        #
        # `product_data` is an alternative to the `product` parameter. If you created a Product upfront, use the `product` parameter to refer to the existing Product. But if you prefer not to create Products upfront, pass the `product_data` parameter to define a Product inline as part of configuring the Order.
        #
        # `product_data` automatically creates a Product, just as if you had manually created the Product. If a Product with the same ID already exists, then `product_data` re-uses it to avoid duplicates.
        sig { returns(T.nilable(::Stripe::OrderService::UpdateParams::LineItem::ProductData)) }
        attr_accessor :product_data
        # The quantity of the line item.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :quantity
        # The tax rates applied to this line item.
        sig { returns(T.nilable(T.nilable(T.any(String, T::Array[String])))) }
        attr_accessor :tax_rates
        sig {
          params(description: T.nilable(String), discounts: T.nilable(T.nilable(T.any(String, T::Array[::Stripe::OrderService::UpdateParams::LineItem::Discount]))), id: T.nilable(String), price: T.nilable(String), price_data: T.nilable(::Stripe::OrderService::UpdateParams::LineItem::PriceData), product: T.nilable(String), product_data: T.nilable(::Stripe::OrderService::UpdateParams::LineItem::ProductData), quantity: T.nilable(Integer), tax_rates: T.nilable(T.nilable(T.any(String, T::Array[String])))).void
         }
        def initialize(
          description: nil,
          discounts: nil,
          id: nil,
          price: nil,
          price_data: nil,
          product: nil,
          product_data: nil,
          quantity: nil,
          tax_rates: nil
        ); end
      end
      class Payment < Stripe::RequestParams
        class Settings < Stripe::RequestParams
          class PaymentMethodOptions < Stripe::RequestParams
            class AcssDebit < Stripe::RequestParams
              class MandateOptions < Stripe::RequestParams
                # A URL for custom mandate text to render during confirmation step.
                # The URL will be rendered with additional GET parameters `payment_intent` and `payment_intent_client_secret` when confirming a Payment Intent,
                # or `setup_intent` and `setup_intent_client_secret` when confirming a Setup Intent.
                sig { returns(T.nilable(T.nilable(String))) }
                attr_accessor :custom_mandate_url
                # Description of the mandate interval. Only required if 'payment_schedule' parameter is 'interval' or 'combined'.
                sig { returns(T.nilable(String)) }
                attr_accessor :interval_description
                # Payment schedule for the mandate.
                sig { returns(T.nilable(String)) }
                attr_accessor :payment_schedule
                # Transaction type of the mandate.
                sig { returns(T.nilable(String)) }
                attr_accessor :transaction_type
                sig {
                  params(custom_mandate_url: T.nilable(T.nilable(String)), interval_description: T.nilable(String), payment_schedule: T.nilable(String), transaction_type: T.nilable(String)).void
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
                returns(T.nilable(::Stripe::OrderService::UpdateParams::Payment::Settings::PaymentMethodOptions::AcssDebit::MandateOptions))
               }
              attr_accessor :mandate_options
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(T.nilable(T.any(String, String)))) }
              attr_accessor :setup_future_usage
              # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
              sig { returns(T.nilable(String)) }
              attr_accessor :target_date
              # Bank account verification method.
              sig { returns(T.nilable(String)) }
              attr_accessor :verification_method
              sig {
                params(mandate_options: T.nilable(::Stripe::OrderService::UpdateParams::Payment::Settings::PaymentMethodOptions::AcssDebit::MandateOptions), setup_future_usage: T.nilable(T.nilable(T.any(String, String))), target_date: T.nilable(String), verification_method: T.nilable(String)).void
               }
              def initialize(
                mandate_options: nil,
                setup_future_usage: nil,
                target_date: nil,
                verification_method: nil
              ); end
            end
            class AfterpayClearpay < Stripe::RequestParams
              # Controls when the funds are captured from the customer's account.
              #
              # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
              #
              # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
              sig { returns(T.nilable(String)) }
              attr_accessor :capture_method
              # An internal identifier or reference this payment corresponds to. The identifier is limited to 128 characters and may contain only letters, digits, underscores, backslashes and dashes.
              sig { returns(T.nilable(String)) }
              attr_accessor :reference
              # Indicates that you intend to make future payments with the payment method.
              #
              # Providing this parameter will [attach the payment method](https://stripe.com/docs/payments/save-during-payment) to the order's Customer, if present, after the order's PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https://stripe.com/docs/api/payment_methods/attach) to a Customer after the transaction completes.
              #
              # When processing card payments, Stripe also uses `setup_future_usage` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https://stripe.com/docs/strong-customer-authentication).
              #
              # If `setup_future_usage` is already set and you are performing a request using a publishable key, you may only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(String)) }
              attr_accessor :setup_future_usage
              sig {
                params(capture_method: T.nilable(String), reference: T.nilable(String), setup_future_usage: T.nilable(String)).void
               }
              def initialize(capture_method: nil, reference: nil, setup_future_usage: nil); end
            end
            class Alipay < Stripe::RequestParams
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(T.nilable(T.any(String, String)))) }
              attr_accessor :setup_future_usage
              sig { params(setup_future_usage: T.nilable(T.nilable(T.any(String, String)))).void }
              def initialize(setup_future_usage: nil); end
            end
            class Bancontact < Stripe::RequestParams
              # Preferred language of the Bancontact authorization page that the customer is redirected to.
              sig { returns(T.nilable(String)) }
              attr_accessor :preferred_language
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(T.nilable(T.any(String, String)))) }
              attr_accessor :setup_future_usage
              sig {
                params(preferred_language: T.nilable(String), setup_future_usage: T.nilable(T.nilable(T.any(String, String)))).void
               }
              def initialize(preferred_language: nil, setup_future_usage: nil); end
            end
            class Card < Stripe::RequestParams
              # Controls when the funds will be captured from the customer's account.
              sig { returns(T.nilable(String)) }
              attr_accessor :capture_method
              # Indicates that you intend to make future payments with the payment method.
              #
              # Providing this parameter will [attach the payment method](https://stripe.com/docs/payments/save-during-payment) to the order's Customer, if present, after the order's PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https://stripe.com/docs/api/payment_methods/attach) to a Customer after the transaction completes.
              #
              # When processing card payments, Stripe also uses `setup_future_usage` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https://stripe.com/docs/strong-customer-authentication).
              #
              # If `setup_future_usage` is already set and you are performing a request using a publishable key, you may only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(String)) }
              attr_accessor :setup_future_usage
              sig {
                params(capture_method: T.nilable(String), setup_future_usage: T.nilable(String)).void
               }
              def initialize(capture_method: nil, setup_future_usage: nil); end
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
                # Configuration for the eu_bank_transfer funding type.
                sig {
                  returns(T.nilable(::Stripe::OrderService::UpdateParams::Payment::Settings::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer))
                 }
                attr_accessor :eu_bank_transfer
                # List of address types that should be returned in the financial_addresses response. If not specified, all valid types will be returned.
                #
                # Permitted values include: `sort_code`, `zengin`, `iban`, or `spei`.
                sig { returns(T.nilable(T::Array[String])) }
                attr_accessor :requested_address_types
                # The list of bank transfer types that this PaymentIntent is allowed to use for funding Permitted values include: `eu_bank_transfer`, `gb_bank_transfer`, `jp_bank_transfer`, `mx_bank_transfer`, or `us_bank_transfer`.
                sig { returns(String) }
                attr_accessor :type
                sig {
                  params(eu_bank_transfer: T.nilable(::Stripe::OrderService::UpdateParams::Payment::Settings::PaymentMethodOptions::CustomerBalance::BankTransfer::EuBankTransfer), requested_address_types: T.nilable(T::Array[String]), type: String).void
                 }
                def initialize(eu_bank_transfer: nil, requested_address_types: nil, type: nil); end
              end
              # Configuration for the bank transfer funding type, if the `funding_type` is set to `bank_transfer`.
              sig {
                returns(T.nilable(::Stripe::OrderService::UpdateParams::Payment::Settings::PaymentMethodOptions::CustomerBalance::BankTransfer))
               }
              attr_accessor :bank_transfer
              # The funding method type to be used when there are not enough funds in the customer balance. Permitted values include: `bank_transfer`.
              sig { returns(T.nilable(String)) }
              attr_accessor :funding_type
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
              attr_accessor :setup_future_usage
              sig {
                params(bank_transfer: T.nilable(::Stripe::OrderService::UpdateParams::Payment::Settings::PaymentMethodOptions::CustomerBalance::BankTransfer), funding_type: T.nilable(String), setup_future_usage: T.nilable(String)).void
               }
              def initialize(bank_transfer: nil, funding_type: nil, setup_future_usage: nil); end
            end
            class Ideal < Stripe::RequestParams
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(T.nilable(T.any(String, String)))) }
              attr_accessor :setup_future_usage
              sig { params(setup_future_usage: T.nilable(T.nilable(T.any(String, String)))).void }
              def initialize(setup_future_usage: nil); end
            end
            class Klarna < Stripe::RequestParams
              # Controls when the funds are captured from the customer's account.
              #
              # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
              #
              # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
              sig { returns(T.nilable(T.nilable(String))) }
              attr_accessor :capture_method
              # Preferred language of the Klarna authorization page that the customer is redirected to
              sig { returns(T.nilable(String)) }
              attr_accessor :preferred_locale
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
              attr_accessor :setup_future_usage
              sig {
                params(capture_method: T.nilable(T.nilable(String)), preferred_locale: T.nilable(String), setup_future_usage: T.nilable(String)).void
               }
              def initialize(
                capture_method: nil,
                preferred_locale: nil,
                setup_future_usage: nil
              ); end
            end
            class Link < Stripe::RequestParams
              # Controls when the funds are captured from the customer's account.
              #
              # If provided, this parameter overrides the behavior of the top-level [capture_method](/api/payment_intents/update#update_payment_intent-capture_method) for this payment method type when finalizing the payment with this payment method type.
              #
              # If `capture_method` is already set on the PaymentIntent, providing an empty value for this parameter unsets the stored value for this payment method type.
              sig { returns(T.nilable(T.nilable(String))) }
              attr_accessor :capture_method
              # [Deprecated] This is a legacy parameter that no longer has any function.
              sig { returns(T.nilable(String)) }
              attr_accessor :persistent_token
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(T.nilable(T.any(String, String)))) }
              attr_accessor :setup_future_usage
              sig {
                params(capture_method: T.nilable(T.nilable(String)), persistent_token: T.nilable(String), setup_future_usage: T.nilable(T.nilable(T.any(String, String)))).void
               }
              def initialize(
                capture_method: nil,
                persistent_token: nil,
                setup_future_usage: nil
              ); end
            end
            class Oxxo < Stripe::RequestParams
              # The number of calendar days before an OXXO voucher expires. For example, if you create an OXXO voucher on Monday and you set expires_after_days to 2, the OXXO invoice will expire on Wednesday at 23:59 America/Mexico_City time.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :expires_after_days
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
              attr_accessor :setup_future_usage
              sig {
                params(expires_after_days: T.nilable(Integer), setup_future_usage: T.nilable(String)).void
               }
              def initialize(expires_after_days: nil, setup_future_usage: nil); end
            end
            class P24 < Stripe::RequestParams
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
              attr_accessor :setup_future_usage
              # Confirm that the payer has accepted the P24 terms and conditions.
              sig { returns(T.nilable(T::Boolean)) }
              attr_accessor :tos_shown_and_accepted
              sig {
                params(setup_future_usage: T.nilable(String), tos_shown_and_accepted: T.nilable(T::Boolean)).void
               }
              def initialize(setup_future_usage: nil, tos_shown_and_accepted: nil); end
            end
            class Paypal < Stripe::RequestParams
              class LineItem < Stripe::RequestParams
                class Tax < Stripe::RequestParams
                  # The tax for a single unit of the line item in minor units. Cannot be a negative number.
                  sig { returns(Integer) }
                  attr_accessor :amount
                  # The tax behavior for the line item.
                  sig { returns(String) }
                  attr_accessor :behavior
                  sig { params(amount: Integer, behavior: String).void }
                  def initialize(amount: nil, behavior: nil); end
                end
                # Type of the line item.
                sig { returns(T.nilable(String)) }
                attr_accessor :category
                # Description of the line item.
                sig { returns(T.nilable(String)) }
                attr_accessor :description
                # Descriptive name of the line item.
                sig { returns(String) }
                attr_accessor :name
                # Quantity of the line item. Must be a positive number.
                sig { returns(Integer) }
                attr_accessor :quantity
                # Client facing stock keeping unit, article number or similar.
                sig { returns(T.nilable(String)) }
                attr_accessor :sku
                # The Stripe account ID of the connected account that sells the item.
                sig { returns(T.nilable(String)) }
                attr_accessor :sold_by
                # The tax information for the line item.
                sig {
                  returns(T.nilable(::Stripe::OrderService::UpdateParams::Payment::Settings::PaymentMethodOptions::Paypal::LineItem::Tax))
                 }
                attr_accessor :tax
                # Price for a single unit of the line item in minor units. Cannot be a negative number.
                sig { returns(Integer) }
                attr_accessor :unit_amount
                sig {
                  params(category: T.nilable(String), description: T.nilable(String), name: String, quantity: Integer, sku: T.nilable(String), sold_by: T.nilable(String), tax: T.nilable(::Stripe::OrderService::UpdateParams::Payment::Settings::PaymentMethodOptions::Paypal::LineItem::Tax), unit_amount: Integer).void
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
              sig { returns(T.nilable(T.nilable(String))) }
              attr_accessor :capture_method
              # The line items purchased by the customer.
              sig {
                returns(T.nilable(T::Array[::Stripe::OrderService::UpdateParams::Payment::Settings::PaymentMethodOptions::Paypal::LineItem]))
               }
              attr_accessor :line_items
              # [Preferred locale](https://stripe.com/docs/payments/paypal/supported-locales) of the PayPal checkout page that the customer is redirected to.
              sig { returns(T.nilable(String)) }
              attr_accessor :preferred_locale
              # A reference of the PayPal transaction visible to customer which is mapped to PayPal's invoice ID. This must be a globally unique ID if you have configured in your PayPal settings to block multiple payments per invoice ID.
              sig { returns(T.nilable(String)) }
              attr_accessor :reference
              # A reference of the PayPal transaction visible to customer which is mapped to PayPal's invoice ID. This must be a globally unique ID if you have configured in your PayPal settings to block multiple payments per invoice ID.
              sig { returns(T.nilable(String)) }
              attr_accessor :reference_id
              # The risk correlation ID for an on-session payment using a saved PayPal payment method.
              sig { returns(T.nilable(String)) }
              attr_accessor :risk_correlation_id
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(T.nilable(T.any(String, String)))) }
              attr_accessor :setup_future_usage
              # The Stripe connected account IDs of the sellers on the platform for this transaction (optional). Only allowed when [separate charges and transfers](https://stripe.com/docs/connect/separate-charges-and-transfers) are used.
              sig { returns(T.nilable(T::Array[String])) }
              attr_accessor :subsellers
              sig {
                params(capture_method: T.nilable(T.nilable(String)), line_items: T.nilable(T::Array[::Stripe::OrderService::UpdateParams::Payment::Settings::PaymentMethodOptions::Paypal::LineItem]), preferred_locale: T.nilable(String), reference: T.nilable(String), reference_id: T.nilable(String), risk_correlation_id: T.nilable(String), setup_future_usage: T.nilable(T.nilable(T.any(String, String))), subsellers: T.nilable(T::Array[String])).void
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
            class SepaDebit < Stripe::RequestParams
              class MandateOptions < Stripe::RequestParams
                # Prefix used to generate the Mandate reference. Must be at most 12 characters long. Must consist of only uppercase letters, numbers, spaces, or the following special characters: '/', '_', '-', '&', '.'. Cannot begin with 'STRIPE'.
                sig { returns(T.nilable(T.nilable(String))) }
                attr_accessor :reference_prefix
                sig { params(reference_prefix: T.nilable(T.nilable(String))).void }
                def initialize(reference_prefix: nil); end
              end
              # Additional fields for Mandate creation
              sig {
                returns(T.nilable(::Stripe::OrderService::UpdateParams::Payment::Settings::PaymentMethodOptions::SepaDebit::MandateOptions))
               }
              attr_accessor :mandate_options
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(T.nilable(T.any(String, String)))) }
              attr_accessor :setup_future_usage
              # Controls when Stripe will attempt to debit the funds from the customer's account. The date must be a string in YYYY-MM-DD format. The date must be in the future and between 3 and 15 calendar days from now.
              sig { returns(T.nilable(String)) }
              attr_accessor :target_date
              sig {
                params(mandate_options: T.nilable(::Stripe::OrderService::UpdateParams::Payment::Settings::PaymentMethodOptions::SepaDebit::MandateOptions), setup_future_usage: T.nilable(T.nilable(T.any(String, String))), target_date: T.nilable(String)).void
               }
              def initialize(mandate_options: nil, setup_future_usage: nil, target_date: nil); end
            end
            class Sofort < Stripe::RequestParams
              # Language shown to the payer on redirect.
              sig { returns(T.nilable(T.nilable(T.any(String, String)))) }
              attr_accessor :preferred_language
              # Indicates that you intend to make future payments with this PaymentIntent's payment method.
              #
              # If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.
              #
              # If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.
              #
              # When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
              #
              # If you've already set `setup_future_usage` and you're performing a request using a publishable key, you can only update the value from `on_session` to `off_session`.
              sig { returns(T.nilable(T.nilable(T.any(String, String)))) }
              attr_accessor :setup_future_usage
              sig {
                params(preferred_language: T.nilable(T.nilable(T.any(String, String))), setup_future_usage: T.nilable(T.nilable(T.any(String, String)))).void
               }
              def initialize(preferred_language: nil, setup_future_usage: nil); end
            end
            class WechatPay < Stripe::RequestParams
              # The app ID registered with WeChat Pay. Only required when client is ios or android.
              sig { returns(T.nilable(String)) }
              attr_accessor :app_id
              # The client type that the end customer will pay from
              sig { returns(T.nilable(String)) }
              attr_accessor :client
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
              attr_accessor :setup_future_usage
              sig {
                params(app_id: T.nilable(String), client: T.nilable(String), setup_future_usage: T.nilable(String)).void
               }
              def initialize(app_id: nil, client: nil, setup_future_usage: nil); end
            end
            # If paying by `acss_debit`, this sub-hash contains details about the ACSS Debit payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(T.nilable(T.any(String, ::Stripe::OrderService::UpdateParams::Payment::Settings::PaymentMethodOptions::AcssDebit))))
             }
            attr_accessor :acss_debit
            # If paying by `afterpay_clearpay`, this sub-hash contains details about the AfterpayClearpay payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(T.nilable(T.any(String, ::Stripe::OrderService::UpdateParams::Payment::Settings::PaymentMethodOptions::AfterpayClearpay))))
             }
            attr_accessor :afterpay_clearpay
            # If paying by `alipay`, this sub-hash contains details about the Alipay payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(T.nilable(T.any(String, ::Stripe::OrderService::UpdateParams::Payment::Settings::PaymentMethodOptions::Alipay))))
             }
            attr_accessor :alipay
            # If paying by `bancontact`, this sub-hash contains details about the Bancontact payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(T.nilable(T.any(String, ::Stripe::OrderService::UpdateParams::Payment::Settings::PaymentMethodOptions::Bancontact))))
             }
            attr_accessor :bancontact
            # If paying by `card`, this sub-hash contains details about the Card payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(T.nilable(T.any(String, ::Stripe::OrderService::UpdateParams::Payment::Settings::PaymentMethodOptions::Card))))
             }
            attr_accessor :card
            # If paying by `customer_balance`, this sub-hash contains details about the Customer Balance payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(T.nilable(T.any(String, ::Stripe::OrderService::UpdateParams::Payment::Settings::PaymentMethodOptions::CustomerBalance))))
             }
            attr_accessor :customer_balance
            # If paying by `ideal`, this sub-hash contains details about the iDEAL payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(T.nilable(T.any(String, ::Stripe::OrderService::UpdateParams::Payment::Settings::PaymentMethodOptions::Ideal))))
             }
            attr_accessor :ideal
            # If paying by `klarna`, this sub-hash contains details about the Klarna payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(T.nilable(T.any(String, ::Stripe::OrderService::UpdateParams::Payment::Settings::PaymentMethodOptions::Klarna))))
             }
            attr_accessor :klarna
            # If paying by `link`, this sub-hash contains details about the Link payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(T.nilable(T.any(String, ::Stripe::OrderService::UpdateParams::Payment::Settings::PaymentMethodOptions::Link))))
             }
            attr_accessor :link
            # If paying by `oxxo`, this sub-hash contains details about the OXXO payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(T.nilable(T.any(String, ::Stripe::OrderService::UpdateParams::Payment::Settings::PaymentMethodOptions::Oxxo))))
             }
            attr_accessor :oxxo
            # If paying by `p24`, this sub-hash contains details about the P24 payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(T.nilable(T.any(String, ::Stripe::OrderService::UpdateParams::Payment::Settings::PaymentMethodOptions::P24))))
             }
            attr_accessor :p24
            # If paying by `paypal`, this sub-hash contains details about the PayPal payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(T.nilable(T.any(String, ::Stripe::OrderService::UpdateParams::Payment::Settings::PaymentMethodOptions::Paypal))))
             }
            attr_accessor :paypal
            # If paying by `sepa_debit`, this sub-hash contains details about the SEPA Debit payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(T.nilable(T.any(String, ::Stripe::OrderService::UpdateParams::Payment::Settings::PaymentMethodOptions::SepaDebit))))
             }
            attr_accessor :sepa_debit
            # If paying by `sofort`, this sub-hash contains details about the Sofort payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(T.nilable(T.any(String, ::Stripe::OrderService::UpdateParams::Payment::Settings::PaymentMethodOptions::Sofort))))
             }
            attr_accessor :sofort
            # If paying by `wechat_pay`, this sub-hash contains details about the WeChat Pay payment method options to pass to the order's PaymentIntent.
            sig {
              returns(T.nilable(T.nilable(T.any(String, ::Stripe::OrderService::UpdateParams::Payment::Settings::PaymentMethodOptions::WechatPay))))
             }
            attr_accessor :wechat_pay
            sig {
              params(acss_debit: T.nilable(T.nilable(T.any(String, ::Stripe::OrderService::UpdateParams::Payment::Settings::PaymentMethodOptions::AcssDebit))), afterpay_clearpay: T.nilable(T.nilable(T.any(String, ::Stripe::OrderService::UpdateParams::Payment::Settings::PaymentMethodOptions::AfterpayClearpay))), alipay: T.nilable(T.nilable(T.any(String, ::Stripe::OrderService::UpdateParams::Payment::Settings::PaymentMethodOptions::Alipay))), bancontact: T.nilable(T.nilable(T.any(String, ::Stripe::OrderService::UpdateParams::Payment::Settings::PaymentMethodOptions::Bancontact))), card: T.nilable(T.nilable(T.any(String, ::Stripe::OrderService::UpdateParams::Payment::Settings::PaymentMethodOptions::Card))), customer_balance: T.nilable(T.nilable(T.any(String, ::Stripe::OrderService::UpdateParams::Payment::Settings::PaymentMethodOptions::CustomerBalance))), ideal: T.nilable(T.nilable(T.any(String, ::Stripe::OrderService::UpdateParams::Payment::Settings::PaymentMethodOptions::Ideal))), klarna: T.nilable(T.nilable(T.any(String, ::Stripe::OrderService::UpdateParams::Payment::Settings::PaymentMethodOptions::Klarna))), link: T.nilable(T.nilable(T.any(String, ::Stripe::OrderService::UpdateParams::Payment::Settings::PaymentMethodOptions::Link))), oxxo: T.nilable(T.nilable(T.any(String, ::Stripe::OrderService::UpdateParams::Payment::Settings::PaymentMethodOptions::Oxxo))), p24: T.nilable(T.nilable(T.any(String, ::Stripe::OrderService::UpdateParams::Payment::Settings::PaymentMethodOptions::P24))), paypal: T.nilable(T.nilable(T.any(String, ::Stripe::OrderService::UpdateParams::Payment::Settings::PaymentMethodOptions::Paypal))), sepa_debit: T.nilable(T.nilable(T.any(String, ::Stripe::OrderService::UpdateParams::Payment::Settings::PaymentMethodOptions::SepaDebit))), sofort: T.nilable(T.nilable(T.any(String, ::Stripe::OrderService::UpdateParams::Payment::Settings::PaymentMethodOptions::Sofort))), wechat_pay: T.nilable(T.nilable(T.any(String, ::Stripe::OrderService::UpdateParams::Payment::Settings::PaymentMethodOptions::WechatPay)))).void
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
          class TransferData < Stripe::RequestParams
            # The amount that will be transferred automatically when the order is paid. If no amount is set, the full amount is transferred. There cannot be any line items with recurring prices when using this field.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :amount
            # ID of the Connected account receiving the transfer.
            sig { returns(String) }
            attr_accessor :destination
            sig { params(amount: T.nilable(Integer), destination: String).void }
            def initialize(amount: nil, destination: nil); end
          end
          # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account.
          sig { returns(T.nilable(T.nilable(T.any(String, Integer)))) }
          attr_accessor :application_fee_amount
          # PaymentMethod-specific configuration to provide to the order's PaymentIntent.
          sig {
            returns(T.nilable(::Stripe::OrderService::UpdateParams::Payment::Settings::PaymentMethodOptions))
           }
          attr_accessor :payment_method_options
          # The list of [payment method types](https://stripe.com/docs/payments/payment-methods/overview) to provide to the order's PaymentIntent. Do not include this attribute if you prefer to manage your payment methods from the [Stripe Dashboard](https://dashboard.stripe.com/settings/payment_methods).
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :payment_method_types
          # The URL to redirect the customer to after they authenticate their payment.
          sig { returns(T.nilable(T.nilable(String))) }
          attr_accessor :return_url
          # For non-card charges, you can use this value as the complete description that appears on your customers' statements. Must contain at least one letter, maximum 22 characters.
          sig { returns(T.nilable(String)) }
          attr_accessor :statement_descriptor
          # Provides information about a card payment that customers see on their statements. Concatenated with the prefix (shortened descriptor) or statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 22 characters for the concatenated descriptor.
          sig { returns(T.nilable(String)) }
          attr_accessor :statement_descriptor_suffix
          # Provides configuration for completing a transfer for the order after it is paid.
          sig {
            returns(T.nilable(T.nilable(T.any(String, ::Stripe::OrderService::UpdateParams::Payment::Settings::TransferData))))
           }
          attr_accessor :transfer_data
          sig {
            params(application_fee_amount: T.nilable(T.nilable(T.any(String, Integer))), payment_method_options: T.nilable(::Stripe::OrderService::UpdateParams::Payment::Settings::PaymentMethodOptions), payment_method_types: T.nilable(T::Array[String]), return_url: T.nilable(T.nilable(String)), statement_descriptor: T.nilable(String), statement_descriptor_suffix: T.nilable(String), transfer_data: T.nilable(T.nilable(T.any(String, ::Stripe::OrderService::UpdateParams::Payment::Settings::TransferData)))).void
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
        sig { returns(::Stripe::OrderService::UpdateParams::Payment::Settings) }
        attr_accessor :settings
        sig { params(settings: ::Stripe::OrderService::UpdateParams::Payment::Settings).void }
        def initialize(settings: nil); end
      end
      class ShippingCost < Stripe::RequestParams
        class ShippingRateData < Stripe::RequestParams
          class DeliveryEstimate < Stripe::RequestParams
            class Maximum < Stripe::RequestParams
              # A unit of time.
              sig { returns(String) }
              attr_accessor :unit
              # Must be greater than 0.
              sig { returns(Integer) }
              attr_accessor :value
              sig { params(unit: String, value: Integer).void }
              def initialize(unit: nil, value: nil); end
            end
            class Minimum < Stripe::RequestParams
              # A unit of time.
              sig { returns(String) }
              attr_accessor :unit
              # Must be greater than 0.
              sig { returns(Integer) }
              attr_accessor :value
              sig { params(unit: String, value: Integer).void }
              def initialize(unit: nil, value: nil); end
            end
            # The upper bound of the estimated range. If empty, represents no upper bound i.e., infinite.
            sig {
              returns(T.nilable(::Stripe::OrderService::UpdateParams::ShippingCost::ShippingRateData::DeliveryEstimate::Maximum))
             }
            attr_accessor :maximum
            # The lower bound of the estimated range. If empty, represents no lower bound.
            sig {
              returns(T.nilable(::Stripe::OrderService::UpdateParams::ShippingCost::ShippingRateData::DeliveryEstimate::Minimum))
             }
            attr_accessor :minimum
            sig {
              params(maximum: T.nilable(::Stripe::OrderService::UpdateParams::ShippingCost::ShippingRateData::DeliveryEstimate::Maximum), minimum: T.nilable(::Stripe::OrderService::UpdateParams::ShippingCost::ShippingRateData::DeliveryEstimate::Minimum)).void
             }
            def initialize(maximum: nil, minimum: nil); end
          end
          class FixedAmount < Stripe::RequestParams
            class CurrencyOptions < Stripe::RequestParams
              # A non-negative integer in cents representing how much to charge.
              sig { returns(Integer) }
              attr_accessor :amount
              # Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`.
              sig { returns(T.nilable(String)) }
              attr_accessor :tax_behavior
              sig { params(amount: Integer, tax_behavior: T.nilable(String)).void }
              def initialize(amount: nil, tax_behavior: nil); end
            end
            # A non-negative integer in cents representing how much to charge.
            sig { returns(Integer) }
            attr_accessor :amount
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(String) }
            attr_accessor :currency
            # Shipping rates defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
            sig {
              returns(T.nilable(T::Hash[String, ::Stripe::OrderService::UpdateParams::ShippingCost::ShippingRateData::FixedAmount::CurrencyOptions]))
             }
            attr_accessor :currency_options
            sig {
              params(amount: Integer, currency: String, currency_options: T.nilable(T::Hash[String, ::Stripe::OrderService::UpdateParams::ShippingCost::ShippingRateData::FixedAmount::CurrencyOptions])).void
             }
            def initialize(amount: nil, currency: nil, currency_options: nil); end
          end
          # The estimated range for how long shipping will take, meant to be displayable to the customer. This will appear on CheckoutSessions.
          sig {
            returns(T.nilable(::Stripe::OrderService::UpdateParams::ShippingCost::ShippingRateData::DeliveryEstimate))
           }
          attr_accessor :delivery_estimate
          # The name of the shipping rate, meant to be displayable to the customer. This will appear on CheckoutSessions.
          sig { returns(String) }
          attr_accessor :display_name
          # Describes a fixed amount to charge for shipping. Must be present if type is `fixed_amount`.
          sig {
            returns(T.nilable(::Stripe::OrderService::UpdateParams::ShippingCost::ShippingRateData::FixedAmount))
           }
          attr_accessor :fixed_amount
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
          sig { returns(T.nilable(T::Hash[String, String])) }
          attr_accessor :metadata
          # Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`.
          sig { returns(T.nilable(String)) }
          attr_accessor :tax_behavior
          # A [tax code](https://stripe.com/docs/tax/tax-categories) ID. The Shipping tax code is `txcd_92010001`.
          sig { returns(T.nilable(String)) }
          attr_accessor :tax_code
          # The type of calculation to use on the shipping rate.
          sig { returns(T.nilable(String)) }
          attr_accessor :type
          sig {
            params(delivery_estimate: T.nilable(::Stripe::OrderService::UpdateParams::ShippingCost::ShippingRateData::DeliveryEstimate), display_name: String, fixed_amount: T.nilable(::Stripe::OrderService::UpdateParams::ShippingCost::ShippingRateData::FixedAmount), metadata: T.nilable(T::Hash[String, String]), tax_behavior: T.nilable(String), tax_code: T.nilable(String), type: T.nilable(String)).void
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
        attr_accessor :shipping_rate
        # Parameters to create a new ad-hoc shipping rate for this order.
        sig {
          returns(T.nilable(::Stripe::OrderService::UpdateParams::ShippingCost::ShippingRateData))
         }
        attr_accessor :shipping_rate_data
        sig {
          params(shipping_rate: T.nilable(String), shipping_rate_data: T.nilable(::Stripe::OrderService::UpdateParams::ShippingCost::ShippingRateData)).void
         }
        def initialize(shipping_rate: nil, shipping_rate_data: nil); end
      end
      class ShippingDetails < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          sig { returns(T.nilable(String)) }
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(T.nilable(String)) }
          attr_accessor :country
          # Address line 1 (e.g., street, PO Box, or company name).
          sig { returns(T.nilable(String)) }
          attr_accessor :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          sig { returns(T.nilable(String)) }
          attr_accessor :line2
          # ZIP or postal code.
          sig { returns(T.nilable(String)) }
          attr_accessor :postal_code
          # State/province as an [ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2) subdivision code, without country prefix. Example: "NY" or "TX".
          sig { returns(T.nilable(String)) }
          attr_accessor :state
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
        sig { returns(::Stripe::OrderService::UpdateParams::ShippingDetails::Address) }
        attr_accessor :address
        # The name of the recipient of the order.
        sig { returns(String) }
        attr_accessor :name
        # The phone number (including extension) for the recipient of the order.
        sig { returns(T.nilable(T.nilable(String))) }
        attr_accessor :phone
        sig {
          params(address: ::Stripe::OrderService::UpdateParams::ShippingDetails::Address, name: String, phone: T.nilable(T.nilable(String))).void
         }
        def initialize(address: nil, name: nil, phone: nil); end
      end
      class TaxDetails < Stripe::RequestParams
        class TaxId < Stripe::RequestParams
          # Type of the tax ID, one of `ad_nrt`, `ae_trn`, `al_tin`, `am_tin`, `ao_tin`, `ar_cuit`, `au_abn`, `au_arn`, `ba_tin`, `bb_tin`, `bg_uic`, `bh_vat`, `bo_tin`, `br_cnpj`, `br_cpf`, `bs_tin`, `by_tin`, `ca_bn`, `ca_gst_hst`, `ca_pst_bc`, `ca_pst_mb`, `ca_pst_sk`, `ca_qst`, `cd_nif`, `ch_uid`, `ch_vat`, `cl_tin`, `cn_tin`, `co_nit`, `cr_tin`, `de_stn`, `do_rcn`, `ec_ruc`, `eg_tin`, `es_cif`, `eu_oss_vat`, `eu_vat`, `gb_vat`, `ge_vat`, `gn_nif`, `hk_br`, `hr_oib`, `hu_tin`, `id_npwp`, `il_vat`, `in_gst`, `is_vat`, `jp_cn`, `jp_rn`, `jp_trn`, `ke_pin`, `kh_tin`, `kr_brn`, `kz_bin`, `li_uid`, `li_vat`, `ma_vat`, `md_vat`, `me_pib`, `mk_vat`, `mr_nif`, `mx_rfc`, `my_frp`, `my_itn`, `my_sst`, `ng_tin`, `no_vat`, `no_voec`, `np_pan`, `nz_gst`, `om_vat`, `pe_ruc`, `ph_tin`, `ro_tin`, `rs_pib`, `ru_inn`, `ru_kpp`, `sa_vat`, `sg_gst`, `sg_uen`, `si_tin`, `sn_ninea`, `sr_fin`, `sv_nit`, `th_vat`, `tj_tin`, `tr_tin`, `tw_vat`, `tz_vat`, `ua_vat`, `ug_tin`, `us_ein`, `uy_ruc`, `uz_tin`, `uz_vat`, `ve_rif`, `vn_tin`, `za_vat`, `zm_tin`, or `zw_tin`
          sig { returns(String) }
          attr_accessor :type
          # Value of the tax ID.
          sig { returns(String) }
          attr_accessor :value
          sig { params(type: String, value: String).void }
          def initialize(type: nil, value: nil); end
        end
        # The purchaser's tax exemption status. One of `none`, `exempt`, or `reverse`.
        sig { returns(T.nilable(T.nilable(T.any(String, String)))) }
        attr_accessor :tax_exempt
        # The purchaser's tax IDs to be used for this order.
        sig {
          returns(T.nilable(T::Array[::Stripe::OrderService::UpdateParams::TaxDetails::TaxId]))
         }
        attr_accessor :tax_ids
        sig {
          params(tax_exempt: T.nilable(T.nilable(T.any(String, String))), tax_ids: T.nilable(T::Array[::Stripe::OrderService::UpdateParams::TaxDetails::TaxId])).void
         }
        def initialize(tax_exempt: nil, tax_ids: nil); end
      end
      # Settings for automatic tax calculation for this order.
      sig { returns(T.nilable(::Stripe::OrderService::UpdateParams::AutomaticTax)) }
      attr_accessor :automatic_tax
      # Billing details for the customer. If a customer is provided, this will be automatically populated with values from that customer if override values are not provided.
      sig {
        returns(T.nilable(T.nilable(T.any(String, ::Stripe::OrderService::UpdateParams::BillingDetails))))
       }
      attr_accessor :billing_details
      # The credits to apply to the order, only `gift_card` currently supported. Pass the empty string `""` to unset this field.
      sig {
        returns(T.nilable(T.nilable(T.any(String, T::Array[::Stripe::OrderService::UpdateParams::Credit]))))
       }
      attr_accessor :credits
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(T.nilable(String)) }
      attr_accessor :currency
      # The customer associated with this order.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer
      # An arbitrary string attached to the object. Often useful for displaying to users.
      sig { returns(T.nilable(T.nilable(String))) }
      attr_accessor :description
      # The coupons, promotion codes, and/or discounts to apply to the order. Pass the empty string `""` to unset this field.
      sig {
        returns(T.nilable(T.nilable(T.any(String, T::Array[::Stripe::OrderService::UpdateParams::Discount]))))
       }
      attr_accessor :discounts
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # The IP address of the purchaser for this order.
      sig { returns(T.nilable(String)) }
      attr_accessor :ip_address
      # A list of line items the customer is ordering. Each line item includes information about the product, the quantity, and the resulting cost.
      sig { returns(T.nilable(T::Array[::Stripe::OrderService::UpdateParams::LineItem])) }
      attr_accessor :line_items
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.nilable(T.any(String, T::Hash[String, String])))) }
      attr_accessor :metadata
      # Payment information associated with the order, including payment settings.
      sig { returns(T.nilable(::Stripe::OrderService::UpdateParams::Payment)) }
      attr_accessor :payment
      # Settings for the customer cost of shipping for this order.
      sig {
        returns(T.nilable(T.nilable(T.any(String, ::Stripe::OrderService::UpdateParams::ShippingCost))))
       }
      attr_accessor :shipping_cost
      # Shipping details for the order.
      sig {
        returns(T.nilable(T.nilable(T.any(String, ::Stripe::OrderService::UpdateParams::ShippingDetails))))
       }
      attr_accessor :shipping_details
      # Additional tax details about the purchaser to be used for this order.
      sig { returns(T.nilable(::Stripe::OrderService::UpdateParams::TaxDetails)) }
      attr_accessor :tax_details
      sig {
        params(automatic_tax: T.nilable(::Stripe::OrderService::UpdateParams::AutomaticTax), billing_details: T.nilable(T.nilable(T.any(String, ::Stripe::OrderService::UpdateParams::BillingDetails))), credits: T.nilable(T.nilable(T.any(String, T::Array[::Stripe::OrderService::UpdateParams::Credit]))), currency: T.nilable(String), customer: T.nilable(String), description: T.nilable(T.nilable(String)), discounts: T.nilable(T.nilable(T.any(String, T::Array[::Stripe::OrderService::UpdateParams::Discount]))), expand: T.nilable(T::Array[String]), ip_address: T.nilable(String), line_items: T.nilable(T::Array[::Stripe::OrderService::UpdateParams::LineItem]), metadata: T.nilable(T.nilable(T.any(String, T::Hash[String, String]))), payment: T.nilable(::Stripe::OrderService::UpdateParams::Payment), shipping_cost: T.nilable(T.nilable(T.any(String, ::Stripe::OrderService::UpdateParams::ShippingCost))), shipping_details: T.nilable(T.nilable(T.any(String, ::Stripe::OrderService::UpdateParams::ShippingDetails))), tax_details: T.nilable(::Stripe::OrderService::UpdateParams::TaxDetails)).void
       }
      def initialize(
        automatic_tax: nil,
        billing_details: nil,
        credits: nil,
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
    class CancelParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    class ReopenParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    class SubmitParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # `expected_total` should always be set to the order's `amount_total` field. If they don't match, submitting the order will fail. This helps detect race conditions where something else concurrently modifies the order.
      sig { returns(Integer) }
      attr_accessor :expected_total
      sig { params(expand: T.nilable(T::Array[String]), expected_total: Integer).void }
      def initialize(expand: nil, expected_total: nil); end
    end
    # Cancels the order as well as the payment intent if one is attached.
    sig {
      params(id: String, params: T.any(::Stripe::OrderService::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Order)
     }
    def cancel(id, params = {}, opts = {}); end

    # Creates a new open order object.
    sig {
      params(params: T.any(::Stripe::OrderService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Order)
     }
    def create(params = {}, opts = {}); end

    # Returns a list of your orders. The orders are returned sorted by creation date, with the most recently created orders appearing first.
    sig {
      params(params: T.any(::Stripe::OrderService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # Reopens a submitted order.
    sig {
      params(id: String, params: T.any(::Stripe::OrderService::ReopenParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Order)
     }
    def reopen(id, params = {}, opts = {}); end

    # Retrieves the details of an existing order. Supply the unique order ID from either an order creation request or the order list, and Stripe will return the corresponding order information.
    sig {
      params(id: String, params: T.any(::Stripe::OrderService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Order)
     }
    def retrieve(id, params = {}, opts = {}); end

    # Submitting an Order transitions the status to processing and creates a PaymentIntent object so the order can be paid. If the Order has an amount_total of 0, no PaymentIntent object will be created. Once the order is submitted, its contents cannot be changed, unless the [reopen](https://stripe.com/docs/api#reopen_order) method is called.
    sig {
      params(id: String, params: T.any(::Stripe::OrderService::SubmitParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Order)
     }
    def submit(id, params = {}, opts = {}); end

    # Updates the specific order by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
    sig {
      params(id: String, params: T.any(::Stripe::OrderService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Order)
     }
    def update(id, params = {}, opts = {}); end
  end
end