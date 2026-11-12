# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Payments
      class OffSessionPaymentCreateParams < ::Stripe::RequestParams
        class AutomaticTax < ::Stripe::RequestParams
          # Whether to automatically calculate taxes for this OffSessionPayment.
          sig { returns(T::Boolean) }
          def enabled; end
          sig { params(_enabled: T::Boolean).returns(T::Boolean) }
          def enabled=(_enabled); end
          sig { params(enabled: T::Boolean).void }
          def initialize(enabled: nil); end
        end
        class Item < ::Stripe::RequestParams
          class OneTimePrice < ::Stripe::RequestParams
            class Item < ::Stripe::RequestParams
              class PriceData < ::Stripe::RequestParams
                class ProductData < ::Stripe::RequestParams
                  class TaxDetails < ::Stripe::RequestParams
                    # A tax location ID. Depending on the [tax code](https://docs.stripe.com/tax/tax-for-tickets/reference/tax-location-performance),
                    # this is required, optional, or not supported.
                    sig { returns(T.nilable(String)) }
                    def performance_location; end
                    sig {
                      params(_performance_location: T.nilable(String)).returns(T.nilable(String))
                     }
                    def performance_location=(_performance_location); end
                    # A [tax code](https://docs.stripe.com/tax/tax-categories) ID.
                    sig { returns(T.nilable(String)) }
                    def tax_code; end
                    sig { params(_tax_code: T.nilable(String)).returns(T.nilable(String)) }
                    def tax_code=(_tax_code); end
                    sig {
                      params(performance_location: T.nilable(String), tax_code: T.nilable(String)).void
                     }
                    def initialize(performance_location: nil, tax_code: nil); end
                  end
                  # The product's description, meant to be displayable to the customer.
                  # Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes.
                  sig { returns(T.nilable(String)) }
                  def description; end
                  sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
                  def description=(_description); end
                  # A list of URLs of images for this product, meant to be displayable to the customer.
                  sig { returns(T.nilable(T::Array[String])) }
                  def images; end
                  sig {
                    params(_images: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
                   }
                  def images=(_images); end
                  # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to the product.
                  # This can be useful for storing additional information about the product in a structured format.
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
                  # Tax details for this product, including the [tax code](https://docs.stripe.com/tax/tax-codes)
                  # and an optional performance location.
                  sig {
                    returns(T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::Item::OneTimePrice::Item::PriceData::ProductData::TaxDetails))
                   }
                  def tax_details; end
                  sig {
                    params(_tax_details: T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::Item::OneTimePrice::Item::PriceData::ProductData::TaxDetails)).returns(T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::Item::OneTimePrice::Item::PriceData::ProductData::TaxDetails))
                   }
                  def tax_details=(_tax_details); end
                  # A label that represents units of this product, such as seats or licenses.
                  sig { returns(T.nilable(String)) }
                  def unit_label; end
                  sig { params(_unit_label: T.nilable(String)).returns(T.nilable(String)) }
                  def unit_label=(_unit_label); end
                  sig {
                    params(description: T.nilable(String), images: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), name: String, tax_details: T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::Item::OneTimePrice::Item::PriceData::ProductData::TaxDetails), unit_label: T.nilable(String)).void
                   }
                  def initialize(
                    description: nil,
                    images: nil,
                    metadata: nil,
                    name: nil,
                    tax_details: nil,
                    unit_label: nil
                  ); end
                end
                # The ID of the [Product](https://docs.stripe.com/api/products) that this
                # [Price](https://docs.stripe.com/api/prices) will belong to.
                # Provide exactly one of `product` or `product_data`.
                sig { returns(T.nilable(String)) }
                def product; end
                sig { params(_product: T.nilable(String)).returns(T.nilable(String)) }
                def product=(_product); end
                # Data used to generate a new [Product](https://docs.stripe.com/api/products) object inline.
                # Provide exactly one of `product` or `product_data`.
                sig {
                  returns(T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::Item::OneTimePrice::Item::PriceData::ProductData))
                 }
                def product_data; end
                sig {
                  params(_product_data: T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::Item::OneTimePrice::Item::PriceData::ProductData)).returns(T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::Item::OneTimePrice::Item::PriceData::ProductData))
                 }
                def product_data=(_product_data); end
                # Specifies whether the price is considered inclusive of taxes or exclusive of taxes.
                # One of `inclusive`, `exclusive`, or `unspecified`.
                sig { returns(T.nilable(String)) }
                def tax_behavior; end
                sig { params(_tax_behavior: T.nilable(String)).returns(T.nilable(String)) }
                def tax_behavior=(_tax_behavior); end
                # The amount to charge per unit and its currency. Specify `value` as a non-negative integer in
                # the currency's minor unit (for example, `100` for USD 1.00).
                sig { returns(::Stripe::V2::Amount) }
                def unit_amount; end
                sig { params(_unit_amount: ::Stripe::V2::Amount).returns(::Stripe::V2::Amount) }
                def unit_amount=(_unit_amount); end
                sig {
                  params(product: T.nilable(String), product_data: T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::Item::OneTimePrice::Item::PriceData::ProductData), tax_behavior: T.nilable(String), unit_amount: ::Stripe::V2::Amount).void
                 }
                def initialize(
                  product: nil,
                  product_data: nil,
                  tax_behavior: nil,
                  unit_amount: nil
                ); end
              end
              # The ID of an existing one-time [Price](https://docs.stripe.com/api/prices).
              # Provide exactly one of `price` or `price_data`.
              sig { returns(T.nilable(String)) }
              def price; end
              sig { params(_price: T.nilable(String)).returns(T.nilable(String)) }
              def price=(_price); end
              # Data used to generate a new one-time [Price](https://docs.stripe.com/api/prices) object inline.
              # Provide exactly one of `price` or `price_data`.
              sig {
                returns(T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::Item::OneTimePrice::Item::PriceData))
               }
              def price_data; end
              sig {
                params(_price_data: T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::Item::OneTimePrice::Item::PriceData)).returns(T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::Item::OneTimePrice::Item::PriceData))
               }
              def price_data=(_price_data); end
              # Quantity for this item.
              sig { returns(Integer) }
              def quantity; end
              sig { params(_quantity: Integer).returns(Integer) }
              def quantity=(_quantity); end
              sig {
                params(price: T.nilable(String), price_data: T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::Item::OneTimePrice::Item::PriceData), quantity: Integer).void
               }
              def initialize(price: nil, price_data: nil, quantity: nil); end
            end
            # The list of one-time prices and quantities the customer will purchase. Contains 1 to 10 items.
            sig {
              returns(T::Array[::Stripe::V2::Payments::OffSessionPaymentCreateParams::Item::OneTimePrice::Item])
             }
            def items; end
            sig {
              params(_items: T::Array[::Stripe::V2::Payments::OffSessionPaymentCreateParams::Item::OneTimePrice::Item]).returns(T::Array[::Stripe::V2::Payments::OffSessionPaymentCreateParams::Item::OneTimePrice::Item])
             }
            def items=(_items); end
            sig {
              params(items: T::Array[::Stripe::V2::Payments::OffSessionPaymentCreateParams::Item::OneTimePrice::Item]).void
             }
            def initialize(items: nil); end
          end
          # Configuration for the one-time price item.
          sig { returns(::Stripe::V2::Payments::OffSessionPaymentCreateParams::Item::OneTimePrice) }
          def one_time_price; end
          sig {
            params(_one_time_price: ::Stripe::V2::Payments::OffSessionPaymentCreateParams::Item::OneTimePrice).returns(::Stripe::V2::Payments::OffSessionPaymentCreateParams::Item::OneTimePrice)
           }
          def one_time_price=(_one_time_price); end
          # The type of item. Currently, only `one_time_price` is supported.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig {
            params(one_time_price: ::Stripe::V2::Payments::OffSessionPaymentCreateParams::Item::OneTimePrice, type: String).void
           }
          def initialize(one_time_price: nil, type: nil); end
        end
        class PaymentMethodData < ::Stripe::RequestParams
          class BillingDetails < ::Stripe::RequestParams
            class Address < ::Stripe::RequestParams
              # City, district, suburb, town, or village.
              sig { returns(T.nilable(String)) }
              def city; end
              sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
              def city=(_city); end
              # Two-letter country code (ISO 3166-1 alpha-2).
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
              # State, county, province, or region (ISO 3166-2).
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
            # Billing address.
            sig {
              returns(T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::PaymentMethodData::BillingDetails::Address))
             }
            def address; end
            sig {
              params(_address: T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::PaymentMethodData::BillingDetails::Address)).returns(T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::PaymentMethodData::BillingDetails::Address))
             }
            def address=(_address); end
            # Email address.
            sig { returns(T.nilable(String)) }
            def email; end
            sig { params(_email: T.nilable(String)).returns(T.nilable(String)) }
            def email=(_email); end
            # Full name.
            sig { returns(T.nilable(String)) }
            def name; end
            sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
            def name=(_name); end
            # Billing phone number (including extension).
            sig { returns(T.nilable(String)) }
            def phone; end
            sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
            def phone=(_phone); end
            sig {
              params(address: T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::PaymentMethodData::BillingDetails::Address), email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
             }
            def initialize(address: nil, email: nil, name: nil, phone: nil); end
          end
          class Card < ::Stripe::RequestParams
            class NetworkToken < ::Stripe::RequestParams
              # Two-digit number representing the network token's expiration month.
              sig { returns(String) }
              def exp_month; end
              sig { params(_exp_month: String).returns(String) }
              def exp_month=(_exp_month); end
              # Four-digit number representing the network token's expiration year.
              sig { returns(String) }
              def exp_year; end
              sig { params(_exp_year: String).returns(String) }
              def exp_year=(_exp_year); end
              # The full network token number.
              sig { returns(String) }
              def number; end
              sig { params(_number: String).returns(String) }
              def number=(_number); end
              # The tokenization method used to generate the network token.
              sig { returns(String) }
              def tokenization_method; end
              sig { params(_tokenization_method: String).returns(String) }
              def tokenization_method=(_tokenization_method); end
              sig {
                params(exp_month: String, exp_year: String, number: String, tokenization_method: String).void
               }
              def initialize(
                exp_month: nil,
                exp_year: nil,
                number: nil,
                tokenization_method: nil
              ); end
            end
            # The card expiration month.
            sig { returns(String) }
            def exp_month; end
            sig { params(_exp_month: String).returns(String) }
            def exp_month=(_exp_month); end
            # The card expiration year.
            sig { returns(String) }
            def exp_year; end
            sig { params(_exp_year: String).returns(String) }
            def exp_year=(_exp_year); end
            # The last four digits of the underlying card number.
            sig { returns(T.nilable(String)) }
            def last4; end
            sig { params(_last4: T.nilable(String)).returns(T.nilable(String)) }
            def last4=(_last4); end
            # The network token credential to use with the card.
            sig {
              returns(T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::PaymentMethodData::Card::NetworkToken))
             }
            def network_token; end
            sig {
              params(_network_token: T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::PaymentMethodData::Card::NetworkToken)).returns(T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::PaymentMethodData::Card::NetworkToken))
             }
            def network_token=(_network_token); end
            # The card number.
            sig { returns(T.nilable(String)) }
            def number; end
            sig { params(_number: T.nilable(String)).returns(T.nilable(String)) }
            def number=(_number); end
            sig {
              params(exp_month: String, exp_year: String, last4: T.nilable(String), network_token: T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::PaymentMethodData::Card::NetworkToken), number: T.nilable(String)).void
             }
            def initialize(
              exp_month: nil,
              exp_year: nil,
              last4: nil,
              network_token: nil,
              number: nil
            ); end
          end
          # Billing information associated with the payment method.
          sig {
            returns(T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::PaymentMethodData::BillingDetails))
           }
          def billing_details; end
          sig {
            params(_billing_details: T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::PaymentMethodData::BillingDetails)).returns(T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::PaymentMethodData::BillingDetails))
           }
          def billing_details=(_billing_details); end
          # Contains card details that can be used to create a card PaymentMethod for PCI compliant users.
          sig {
            returns(T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::PaymentMethodData::Card))
           }
          def card; end
          sig {
            params(_card: T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::PaymentMethodData::Card)).returns(T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::PaymentMethodData::Card))
           }
          def card=(_card); end
          # The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig {
            params(billing_details: T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::PaymentMethodData::BillingDetails), card: T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::PaymentMethodData::Card), type: String).void
           }
          def initialize(billing_details: nil, card: nil, type: nil); end
        end
        class PaymentMethodOptions < ::Stripe::RequestParams
          class Card < ::Stripe::RequestParams
            # Indicates whether the saved card is used for a recurring or unscheduled payment.
            sig { returns(String) }
            def stored_credential_usage; end
            sig { params(_stored_credential_usage: String).returns(String) }
            def stored_credential_usage=(_stored_credential_usage); end
            sig { params(stored_credential_usage: String).void }
            def initialize(stored_credential_usage: nil); end
          end
          # Payment method options for the card payment type.
          sig {
            returns(T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::PaymentMethodOptions::Card))
           }
          def card; end
          sig {
            params(_card: T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::PaymentMethodOptions::Card)).returns(T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::PaymentMethodOptions::Card))
           }
          def card=(_card); end
          sig {
            params(card: T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::PaymentMethodOptions::Card)).void
           }
          def initialize(card: nil); end
        end
        class RawAmount < ::Stripe::RequestParams
          # The amount to collect and its currency.
          sig { returns(::Stripe::V2::Amount) }
          def amount; end
          sig { params(_amount: ::Stripe::V2::Amount).returns(::Stripe::V2::Amount) }
          def amount=(_amount); end
          sig { params(amount: ::Stripe::V2::Amount).void }
          def initialize(amount: nil); end
        end
        class Retries < ::Stripe::RequestParams
          # Whether Stripe should retry failed payment attempts.
          sig { returns(T::Boolean) }
          def enabled; end
          sig { params(_enabled: T::Boolean).returns(T::Boolean) }
          def enabled=(_enabled); end
          sig { params(enabled: T::Boolean).void }
          def initialize(enabled: nil); end
        end
        class TransferData < ::Stripe::RequestParams
          # The amount transferred to the destination account. This transfer will occur
          # automatically after the payment succeeds. If no amount is specified, by default
          # the entire payment amount is transferred to the destination account. The amount
          # must be less than or equal to the
          # [amount_requested](https://docs.stripe.com/api/v2/off-session-payments/object?api-version=2025-05-28.preview#v2_off_session_payment_object-amount_requested),
          # and must be a positive integer representing how much to transfer in the smallest
          # currency unit (e.g., 100 cents to charge $1.00).
          sig { returns(T.nilable(Integer)) }
          def amount; end
          sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def amount=(_amount); end
          # The account (if any) that the payment is attributed to for tax reporting, and
          # where funds from the payment are transferred to after payment success.
          sig { returns(String) }
          def destination; end
          sig { params(_destination: String).returns(String) }
          def destination=(_destination); end
          sig { params(amount: T.nilable(Integer), destination: String).void }
          def initialize(amount: nil, destination: nil); end
        end
        # The amount of the application fee (if any) that will be requested to be applied to the
        # payment and transferred to the application owner's Stripe account.
        sig { returns(T.nilable(::Stripe::V2::Amount)) }
        def application_fee_amount; end
        sig {
          params(_application_fee_amount: T.nilable(::Stripe::V2::Amount)).returns(T.nilable(::Stripe::V2::Amount))
         }
        def application_fee_amount=(_application_fee_amount); end
        # Settings for automatic tax calculation.
        sig {
          returns(T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::AutomaticTax))
         }
        def automatic_tax; end
        sig {
          params(_automatic_tax: T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::AutomaticTax)).returns(T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::AutomaticTax))
         }
        def automatic_tax=(_automatic_tax); end
        # Three-letter ISO currency code, in lowercase.
        sig { returns(T.nilable(String)) }
        def currency; end
        sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
        def currency=(_currency); end
        # ID of the Customer to which this OffSessionPayment belongs.
        # Provide exactly one of customer or customer_account.
        sig { returns(T.nilable(String)) }
        def customer; end
        sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
        def customer=(_customer); end
        # ID of the Account representing the customer to which this OffSessionPayment belongs.
        # Provide exactly one of customer or customer_account.
        # Payment methods attached to other Accounts cannot be used with this OffSessionPayment.
        sig { returns(T.nilable(String)) }
        def customer_account; end
        sig { params(_customer_account: T.nilable(String)).returns(T.nilable(String)) }
        def customer_account=(_customer_account); end
        # An arbitrary string attached to the object. Often useful for displaying to users.
        sig { returns(T.nilable(String)) }
        def description; end
        sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
        def description=(_description); end
        # A list of items the customer will purchase.
        sig {
          returns(T.nilable(T::Array[::Stripe::V2::Payments::OffSessionPaymentCreateParams::Item]))
         }
        def items; end
        sig {
          params(_items: T.nilable(T::Array[::Stripe::V2::Payments::OffSessionPaymentCreateParams::Item])).returns(T.nilable(T::Array[::Stripe::V2::Payments::OffSessionPaymentCreateParams::Item]))
         }
        def items=(_items); end
        # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can
        # attach to an object. This can be useful for storing additional information about
        # the object in a structured format. Learn more about
        # [storing information in metadata](https://docs.stripe.com/payments/payment-intents#storing-information-in-metadata).
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        # The account (if any) for which the funds of the OffSessionPayment are intended.
        sig { returns(T.nilable(String)) }
        def on_behalf_of; end
        sig { params(_on_behalf_of: T.nilable(String)).returns(T.nilable(String)) }
        def on_behalf_of=(_on_behalf_of); end
        # ID of the payment method used in this OffSessionPayment.
        sig { returns(T.nilable(String)) }
        def payment_method; end
        sig { params(_payment_method: T.nilable(String)).returns(T.nilable(String)) }
        def payment_method=(_payment_method); end
        # If provided, this hash will be used to create a PaymentMethod. The new PaymentMethod will appear in the payment_method property on the OffSessionPayment.
        sig {
          returns(T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::PaymentMethodData))
         }
        def payment_method_data; end
        sig {
          params(_payment_method_data: T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::PaymentMethodData)).returns(T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::PaymentMethodData))
         }
        def payment_method_data=(_payment_method_data); end
        # Payment method options for the off-session payment.
        sig {
          returns(T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::PaymentMethodOptions))
         }
        def payment_method_options; end
        sig {
          params(_payment_method_options: T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::PaymentMethodOptions)).returns(T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::PaymentMethodOptions))
         }
        def payment_method_options=(_payment_method_options); end
        # The amount to collect without itemization.
        sig { returns(T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::RawAmount)) }
        def raw_amount; end
        sig {
          params(_raw_amount: T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::RawAmount)).returns(T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::RawAmount))
         }
        def raw_amount=(_raw_amount); end
        # Retry configuration for this OffSessionPayment.
        sig { returns(::Stripe::V2::Payments::OffSessionPaymentCreateParams::Retries) }
        def retries; end
        sig {
          params(_retries: ::Stripe::V2::Payments::OffSessionPaymentCreateParams::Retries).returns(::Stripe::V2::Payments::OffSessionPaymentCreateParams::Retries)
         }
        def retries=(_retries); end
        # Text that appears on the customer's statement as the statement descriptor for a
        # non-card charge. This value overrides the account's default statement descriptor.
        # For information about requirements, including the 22-character limit, see the
        # [Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
        sig { returns(T.nilable(String)) }
        def statement_descriptor; end
        sig { params(_statement_descriptor: T.nilable(String)).returns(T.nilable(String)) }
        def statement_descriptor=(_statement_descriptor); end
        # Provides information about a card charge. Concatenated to the account's
        # [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static)
        # to form the complete statement descriptor that appears on the customer's statement.
        sig { returns(T.nilable(String)) }
        def statement_descriptor_suffix; end
        sig { params(_statement_descriptor_suffix: T.nilable(String)).returns(T.nilable(String)) }
        def statement_descriptor_suffix=(_statement_descriptor_suffix); end
        # Provides a way to schedule deferred payments for cards and debits, in YYYY-MM-DD format.
        sig { returns(T.nilable(String)) }
        def target_date; end
        sig { params(_target_date: T.nilable(String)).returns(T.nilable(String)) }
        def target_date=(_target_date); end
        # Test clock that can be used to advance the retry attempts in a sandbox.
        sig { returns(T.nilable(String)) }
        def test_clock; end
        sig { params(_test_clock: T.nilable(String)).returns(T.nilable(String)) }
        def test_clock=(_test_clock); end
        # The data that automatically creates a Transfer after the payment finalizes. Learn more about the use case for [connected accounts](https://docs.stripe.com/payments/connected-accounts).
        sig {
          returns(T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::TransferData))
         }
        def transfer_data; end
        sig {
          params(_transfer_data: T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::TransferData)).returns(T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::TransferData))
         }
        def transfer_data=(_transfer_data); end
        sig {
          params(application_fee_amount: T.nilable(::Stripe::V2::Amount), automatic_tax: T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::AutomaticTax), currency: T.nilable(String), customer: T.nilable(String), customer_account: T.nilable(String), description: T.nilable(String), items: T.nilable(T::Array[::Stripe::V2::Payments::OffSessionPaymentCreateParams::Item]), metadata: T.nilable(T::Hash[String, String]), on_behalf_of: T.nilable(String), payment_method: T.nilable(String), payment_method_data: T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::PaymentMethodData), payment_method_options: T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::PaymentMethodOptions), raw_amount: T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::RawAmount), retries: ::Stripe::V2::Payments::OffSessionPaymentCreateParams::Retries, statement_descriptor: T.nilable(String), statement_descriptor_suffix: T.nilable(String), target_date: T.nilable(String), test_clock: T.nilable(String), transfer_data: T.nilable(::Stripe::V2::Payments::OffSessionPaymentCreateParams::TransferData)).void
         }
        def initialize(
          application_fee_amount: nil,
          automatic_tax: nil,
          currency: nil,
          customer: nil,
          customer_account: nil,
          description: nil,
          items: nil,
          metadata: nil,
          on_behalf_of: nil,
          payment_method: nil,
          payment_method_data: nil,
          payment_method_options: nil,
          raw_amount: nil,
          retries: nil,
          statement_descriptor: nil,
          statement_descriptor_suffix: nil,
          target_date: nil,
          test_clock: nil,
          transfer_data: nil
        ); end
      end
    end
  end
end