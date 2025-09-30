# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class PaymentIntentIncrementAuthorizationParams < Stripe::RequestParams
    class AmountDetails < Stripe::RequestParams
      class LineItem < Stripe::RequestParams
        class PaymentMethodOptions < Stripe::RequestParams
          class Card < Stripe::RequestParams
            # Identifier that categorizes the items being purchased using a standardized commodity scheme such as (but not limited to) UNSPSC, NAICS, NAPCS, etc.
            sig { returns(T.nilable(String)) }
            def commodity_code; end
            sig { params(_commodity_code: T.nilable(String)).returns(T.nilable(String)) }
            def commodity_code=(_commodity_code); end
            sig { params(commodity_code: T.nilable(String)).void }
            def initialize(commodity_code: nil); end
          end
          class CardPresent < Stripe::RequestParams
            # Identifier that categorizes the items being purchased using a standardized commodity scheme such as (but not limited to) UNSPSC, NAICS, NAPCS, etc.
            sig { returns(T.nilable(String)) }
            def commodity_code; end
            sig { params(_commodity_code: T.nilable(String)).returns(T.nilable(String)) }
            def commodity_code=(_commodity_code); end
            sig { params(commodity_code: T.nilable(String)).void }
            def initialize(commodity_code: nil); end
          end
          class Klarna < Stripe::RequestParams
            # URL to an image for the product. Max length, 4096 characters.
            sig { returns(T.nilable(String)) }
            def image_url; end
            sig { params(_image_url: T.nilable(String)).returns(T.nilable(String)) }
            def image_url=(_image_url); end
            # URL to the product page. Max length, 4096 characters.
            sig { returns(T.nilable(String)) }
            def product_url; end
            sig { params(_product_url: T.nilable(String)).returns(T.nilable(String)) }
            def product_url=(_product_url); end
            # Reference for the subscription this line item is for.
            sig { returns(T.nilable(String)) }
            def subscription_reference; end
            sig { params(_subscription_reference: T.nilable(String)).returns(T.nilable(String)) }
            def subscription_reference=(_subscription_reference); end
            sig {
              params(image_url: T.nilable(String), product_url: T.nilable(String), subscription_reference: T.nilable(String)).void
             }
            def initialize(image_url: nil, product_url: nil, subscription_reference: nil); end
          end
          class Paypal < Stripe::RequestParams
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
            # The Stripe account ID of the connected account that sells the item.
            sig { returns(T.nilable(String)) }
            def sold_by; end
            sig { params(_sold_by: T.nilable(String)).returns(T.nilable(String)) }
            def sold_by=(_sold_by); end
            sig {
              params(category: T.nilable(String), description: T.nilable(String), sold_by: T.nilable(String)).void
             }
            def initialize(category: nil, description: nil, sold_by: nil); end
          end
          # This sub-hash contains line item details that are specific to `card` payment method."
          sig {
            returns(T.nilable(PaymentIntentIncrementAuthorizationParams::AmountDetails::LineItem::PaymentMethodOptions::Card))
           }
          def card; end
          sig {
            params(_card: T.nilable(PaymentIntentIncrementAuthorizationParams::AmountDetails::LineItem::PaymentMethodOptions::Card)).returns(T.nilable(PaymentIntentIncrementAuthorizationParams::AmountDetails::LineItem::PaymentMethodOptions::Card))
           }
          def card=(_card); end
          # This sub-hash contains line item details that are specific to `card_present` payment method."
          sig {
            returns(T.nilable(PaymentIntentIncrementAuthorizationParams::AmountDetails::LineItem::PaymentMethodOptions::CardPresent))
           }
          def card_present; end
          sig {
            params(_card_present: T.nilable(PaymentIntentIncrementAuthorizationParams::AmountDetails::LineItem::PaymentMethodOptions::CardPresent)).returns(T.nilable(PaymentIntentIncrementAuthorizationParams::AmountDetails::LineItem::PaymentMethodOptions::CardPresent))
           }
          def card_present=(_card_present); end
          # This sub-hash contains line item details that are specific to `klarna` payment method."
          sig {
            returns(T.nilable(PaymentIntentIncrementAuthorizationParams::AmountDetails::LineItem::PaymentMethodOptions::Klarna))
           }
          def klarna; end
          sig {
            params(_klarna: T.nilable(PaymentIntentIncrementAuthorizationParams::AmountDetails::LineItem::PaymentMethodOptions::Klarna)).returns(T.nilable(PaymentIntentIncrementAuthorizationParams::AmountDetails::LineItem::PaymentMethodOptions::Klarna))
           }
          def klarna=(_klarna); end
          # This sub-hash contains line item details that are specific to `paypal` payment method."
          sig {
            returns(T.nilable(PaymentIntentIncrementAuthorizationParams::AmountDetails::LineItem::PaymentMethodOptions::Paypal))
           }
          def paypal; end
          sig {
            params(_paypal: T.nilable(PaymentIntentIncrementAuthorizationParams::AmountDetails::LineItem::PaymentMethodOptions::Paypal)).returns(T.nilable(PaymentIntentIncrementAuthorizationParams::AmountDetails::LineItem::PaymentMethodOptions::Paypal))
           }
          def paypal=(_paypal); end
          sig {
            params(card: T.nilable(PaymentIntentIncrementAuthorizationParams::AmountDetails::LineItem::PaymentMethodOptions::Card), card_present: T.nilable(PaymentIntentIncrementAuthorizationParams::AmountDetails::LineItem::PaymentMethodOptions::CardPresent), klarna: T.nilable(PaymentIntentIncrementAuthorizationParams::AmountDetails::LineItem::PaymentMethodOptions::Klarna), paypal: T.nilable(PaymentIntentIncrementAuthorizationParams::AmountDetails::LineItem::PaymentMethodOptions::Paypal)).void
           }
          def initialize(card: nil, card_present: nil, klarna: nil, paypal: nil); end
        end
        class Tax < Stripe::RequestParams
          # The total tax on an item. Non-negative integer.
          sig { returns(Integer) }
          def total_tax_amount; end
          sig { params(_total_tax_amount: Integer).returns(Integer) }
          def total_tax_amount=(_total_tax_amount); end
          sig { params(total_tax_amount: Integer).void }
          def initialize(total_tax_amount: nil); end
        end
        # The amount an item was discounted for. Positive integer.
        sig { returns(T.nilable(Integer)) }
        def discount_amount; end
        sig { params(_discount_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def discount_amount=(_discount_amount); end
        # Payment method-specific information for line items.
        sig {
          returns(T.nilable(PaymentIntentIncrementAuthorizationParams::AmountDetails::LineItem::PaymentMethodOptions))
         }
        def payment_method_options; end
        sig {
          params(_payment_method_options: T.nilable(PaymentIntentIncrementAuthorizationParams::AmountDetails::LineItem::PaymentMethodOptions)).returns(T.nilable(PaymentIntentIncrementAuthorizationParams::AmountDetails::LineItem::PaymentMethodOptions))
         }
        def payment_method_options=(_payment_method_options); end
        # Unique identifier of the product. At most 12 characters long.
        sig { returns(T.nilable(String)) }
        def product_code; end
        sig { params(_product_code: T.nilable(String)).returns(T.nilable(String)) }
        def product_code=(_product_code); end
        # Name of the product. At most 100 characters long.
        sig { returns(String) }
        def product_name; end
        sig { params(_product_name: String).returns(String) }
        def product_name=(_product_name); end
        # Number of items of the product. Positive integer.
        sig { returns(Integer) }
        def quantity; end
        sig { params(_quantity: Integer).returns(Integer) }
        def quantity=(_quantity); end
        # Contains information about the tax on the item.
        sig {
          returns(T.nilable(PaymentIntentIncrementAuthorizationParams::AmountDetails::LineItem::Tax))
         }
        def tax; end
        sig {
          params(_tax: T.nilable(PaymentIntentIncrementAuthorizationParams::AmountDetails::LineItem::Tax)).returns(T.nilable(PaymentIntentIncrementAuthorizationParams::AmountDetails::LineItem::Tax))
         }
        def tax=(_tax); end
        # Cost of the product. Non-negative integer.
        sig { returns(Integer) }
        def unit_cost; end
        sig { params(_unit_cost: Integer).returns(Integer) }
        def unit_cost=(_unit_cost); end
        # A unit of measure for the line item, such as gallons, feet, meters, etc.
        sig { returns(T.nilable(String)) }
        def unit_of_measure; end
        sig { params(_unit_of_measure: T.nilable(String)).returns(T.nilable(String)) }
        def unit_of_measure=(_unit_of_measure); end
        sig {
          params(discount_amount: T.nilable(Integer), payment_method_options: T.nilable(PaymentIntentIncrementAuthorizationParams::AmountDetails::LineItem::PaymentMethodOptions), product_code: T.nilable(String), product_name: String, quantity: Integer, tax: T.nilable(PaymentIntentIncrementAuthorizationParams::AmountDetails::LineItem::Tax), unit_cost: Integer, unit_of_measure: T.nilable(String)).void
         }
        def initialize(
          discount_amount: nil,
          payment_method_options: nil,
          product_code: nil,
          product_name: nil,
          quantity: nil,
          tax: nil,
          unit_cost: nil,
          unit_of_measure: nil
        ); end
      end
      class Shipping < Stripe::RequestParams
        # Portion of the amount that is for shipping.
        sig { returns(T.nilable(T.any(String, Integer))) }
        def amount; end
        sig {
          params(_amount: T.nilable(T.any(String, Integer))).returns(T.nilable(T.any(String, Integer)))
         }
        def amount=(_amount); end
        # The postal code that represents the shipping source.
        sig { returns(T.nilable(String)) }
        def from_postal_code; end
        sig { params(_from_postal_code: T.nilable(String)).returns(T.nilable(String)) }
        def from_postal_code=(_from_postal_code); end
        # The postal code that represents the shipping destination.
        sig { returns(T.nilable(String)) }
        def to_postal_code; end
        sig { params(_to_postal_code: T.nilable(String)).returns(T.nilable(String)) }
        def to_postal_code=(_to_postal_code); end
        sig {
          params(amount: T.nilable(T.any(String, Integer)), from_postal_code: T.nilable(String), to_postal_code: T.nilable(String)).void
         }
        def initialize(amount: nil, from_postal_code: nil, to_postal_code: nil); end
      end
      class Tax < Stripe::RequestParams
        # Total portion of the amount that is for tax.
        sig { returns(Integer) }
        def total_tax_amount; end
        sig { params(_total_tax_amount: Integer).returns(Integer) }
        def total_tax_amount=(_total_tax_amount); end
        sig { params(total_tax_amount: Integer).void }
        def initialize(total_tax_amount: nil); end
      end
      # The total discount applied on the transaction.
      sig { returns(T.nilable(T.any(String, Integer))) }
      def discount_amount; end
      sig {
        params(_discount_amount: T.nilable(T.any(String, Integer))).returns(T.nilable(T.any(String, Integer)))
       }
      def discount_amount=(_discount_amount); end
      # A list of line items, each containing information about a product in the PaymentIntent. There is a maximum of 100 line items.
      sig {
        returns(T.nilable(T.any(String, T::Array[PaymentIntentIncrementAuthorizationParams::AmountDetails::LineItem])))
       }
      def line_items; end
      sig {
        params(_line_items: T.nilable(T.any(String, T::Array[PaymentIntentIncrementAuthorizationParams::AmountDetails::LineItem]))).returns(T.nilable(T.any(String, T::Array[PaymentIntentIncrementAuthorizationParams::AmountDetails::LineItem])))
       }
      def line_items=(_line_items); end
      # Contains information about the shipping portion of the amount.
      sig {
        returns(T.nilable(T.any(String, PaymentIntentIncrementAuthorizationParams::AmountDetails::Shipping)))
       }
      def shipping; end
      sig {
        params(_shipping: T.nilable(T.any(String, PaymentIntentIncrementAuthorizationParams::AmountDetails::Shipping))).returns(T.nilable(T.any(String, PaymentIntentIncrementAuthorizationParams::AmountDetails::Shipping)))
       }
      def shipping=(_shipping); end
      # Contains information about the tax portion of the amount.
      sig {
        returns(T.nilable(T.any(String, PaymentIntentIncrementAuthorizationParams::AmountDetails::Tax)))
       }
      def tax; end
      sig {
        params(_tax: T.nilable(T.any(String, PaymentIntentIncrementAuthorizationParams::AmountDetails::Tax))).returns(T.nilable(T.any(String, PaymentIntentIncrementAuthorizationParams::AmountDetails::Tax)))
       }
      def tax=(_tax); end
      sig {
        params(discount_amount: T.nilable(T.any(String, Integer)), line_items: T.nilable(T.any(String, T::Array[PaymentIntentIncrementAuthorizationParams::AmountDetails::LineItem])), shipping: T.nilable(T.any(String, PaymentIntentIncrementAuthorizationParams::AmountDetails::Shipping)), tax: T.nilable(T.any(String, PaymentIntentIncrementAuthorizationParams::AmountDetails::Tax))).void
       }
      def initialize(discount_amount: nil, line_items: nil, shipping: nil, tax: nil); end
    end
    class Hooks < Stripe::RequestParams
      class Inputs < Stripe::RequestParams
        class Tax < Stripe::RequestParams
          # The [TaxCalculation](https://stripe.com/docs/api/tax/calculations) id
          sig { returns(String) }
          def calculation; end
          sig { params(_calculation: String).returns(String) }
          def calculation=(_calculation); end
          sig { params(calculation: String).void }
          def initialize(calculation: nil); end
        end
        # Tax arguments for automations
        sig { returns(T.nilable(PaymentIntentIncrementAuthorizationParams::Hooks::Inputs::Tax)) }
        def tax; end
        sig {
          params(_tax: T.nilable(PaymentIntentIncrementAuthorizationParams::Hooks::Inputs::Tax)).returns(T.nilable(PaymentIntentIncrementAuthorizationParams::Hooks::Inputs::Tax))
         }
        def tax=(_tax); end
        sig {
          params(tax: T.nilable(PaymentIntentIncrementAuthorizationParams::Hooks::Inputs::Tax)).void
         }
        def initialize(tax: nil); end
      end
      # Arguments passed in automations
      sig { returns(T.nilable(PaymentIntentIncrementAuthorizationParams::Hooks::Inputs)) }
      def inputs; end
      sig {
        params(_inputs: T.nilable(PaymentIntentIncrementAuthorizationParams::Hooks::Inputs)).returns(T.nilable(PaymentIntentIncrementAuthorizationParams::Hooks::Inputs))
       }
      def inputs=(_inputs); end
      sig {
        params(inputs: T.nilable(PaymentIntentIncrementAuthorizationParams::Hooks::Inputs)).void
       }
      def initialize(inputs: nil); end
    end
    class PaymentDetails < Stripe::RequestParams
      # Some customers might be required by their company or organization to provide this information. If so, provide this value. Otherwise you can ignore this field.
      sig { returns(T.nilable(String)) }
      def customer_reference; end
      sig { params(_customer_reference: T.nilable(String)).returns(T.nilable(String)) }
      def customer_reference=(_customer_reference); end
      # A unique value assigned by the business to identify the transaction.
      sig { returns(T.nilable(String)) }
      def order_reference; end
      sig { params(_order_reference: T.nilable(String)).returns(T.nilable(String)) }
      def order_reference=(_order_reference); end
      sig { params(customer_reference: T.nilable(String), order_reference: T.nilable(String)).void }
      def initialize(customer_reference: nil, order_reference: nil); end
    end
    class PaymentMethodOptions < Stripe::RequestParams
      class Card < Stripe::RequestParams
        # Request partial authorization on this PaymentIntent.
        sig { returns(T.nilable(String)) }
        def request_partial_authorization; end
        sig { params(_request_partial_authorization: T.nilable(String)).returns(T.nilable(String)) }
        def request_partial_authorization=(_request_partial_authorization); end
        sig { params(request_partial_authorization: T.nilable(String)).void }
        def initialize(request_partial_authorization: nil); end
      end
      # Configuration for any card payments attempted on this PaymentIntent.
      sig {
        returns(T.nilable(PaymentIntentIncrementAuthorizationParams::PaymentMethodOptions::Card))
       }
      def card; end
      sig {
        params(_card: T.nilable(PaymentIntentIncrementAuthorizationParams::PaymentMethodOptions::Card)).returns(T.nilable(PaymentIntentIncrementAuthorizationParams::PaymentMethodOptions::Card))
       }
      def card=(_card); end
      sig {
        params(card: T.nilable(PaymentIntentIncrementAuthorizationParams::PaymentMethodOptions::Card)).void
       }
      def initialize(card: nil); end
    end
    class TransferData < Stripe::RequestParams
      # The amount that will be transferred automatically when a charge succeeds.
      sig { returns(T.nilable(Integer)) }
      def amount; end
      sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def amount=(_amount); end
      sig { params(amount: T.nilable(Integer)).void }
      def initialize(amount: nil); end
    end
    # The updated total amount that you intend to collect from the cardholder. This amount must be greater than the currently authorized amount.
    sig { returns(Integer) }
    def amount; end
    sig { params(_amount: Integer).returns(Integer) }
    def amount=(_amount); end
    # Provides industry-specific information about the amount.
    sig { returns(T.nilable(PaymentIntentIncrementAuthorizationParams::AmountDetails)) }
    def amount_details; end
    sig {
      params(_amount_details: T.nilable(PaymentIntentIncrementAuthorizationParams::AmountDetails)).returns(T.nilable(PaymentIntentIncrementAuthorizationParams::AmountDetails))
     }
    def amount_details=(_amount_details); end
    # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. The amount of the application fee collected will be capped at the total amount captured. For more information, see the PaymentIntents [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
    sig { returns(T.nilable(Integer)) }
    def application_fee_amount; end
    sig { params(_application_fee_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
    def application_fee_amount=(_application_fee_amount); end
    # An arbitrary string attached to the object. Often useful for displaying to users.
    sig { returns(T.nilable(String)) }
    def description; end
    sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
    def description=(_description); end
    # Specifies which fields in the response should be expanded.
    sig { returns(T.nilable(T::Array[String])) }
    def expand; end
    sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
    def expand=(_expand); end
    # Automations to be run during the PaymentIntent lifecycle
    sig { returns(T.nilable(PaymentIntentIncrementAuthorizationParams::Hooks)) }
    def hooks; end
    sig {
      params(_hooks: T.nilable(PaymentIntentIncrementAuthorizationParams::Hooks)).returns(T.nilable(PaymentIntentIncrementAuthorizationParams::Hooks))
     }
    def hooks=(_hooks); end
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    sig { returns(T.nilable(T::Hash[String, String])) }
    def metadata; end
    sig {
      params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
     }
    def metadata=(_metadata); end
    # Provides industry-specific information about the charge.
    sig { returns(T.nilable(PaymentIntentIncrementAuthorizationParams::PaymentDetails)) }
    def payment_details; end
    sig {
      params(_payment_details: T.nilable(PaymentIntentIncrementAuthorizationParams::PaymentDetails)).returns(T.nilable(PaymentIntentIncrementAuthorizationParams::PaymentDetails))
     }
    def payment_details=(_payment_details); end
    # Payment method-specific configuration for this PaymentIntent.
    sig { returns(T.nilable(PaymentIntentIncrementAuthorizationParams::PaymentMethodOptions)) }
    def payment_method_options; end
    sig {
      params(_payment_method_options: T.nilable(PaymentIntentIncrementAuthorizationParams::PaymentMethodOptions)).returns(T.nilable(PaymentIntentIncrementAuthorizationParams::PaymentMethodOptions))
     }
    def payment_method_options=(_payment_method_options); end
    # Text that appears on the customer's statement as the statement descriptor for a non-card or card charge. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
    sig { returns(T.nilable(String)) }
    def statement_descriptor; end
    sig { params(_statement_descriptor: T.nilable(String)).returns(T.nilable(String)) }
    def statement_descriptor=(_statement_descriptor); end
    # The parameters used to automatically create a transfer after the payment is captured.
    # Learn more about the [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
    sig { returns(T.nilable(PaymentIntentIncrementAuthorizationParams::TransferData)) }
    def transfer_data; end
    sig {
      params(_transfer_data: T.nilable(PaymentIntentIncrementAuthorizationParams::TransferData)).returns(T.nilable(PaymentIntentIncrementAuthorizationParams::TransferData))
     }
    def transfer_data=(_transfer_data); end
    sig {
      params(amount: Integer, amount_details: T.nilable(PaymentIntentIncrementAuthorizationParams::AmountDetails), application_fee_amount: T.nilable(Integer), description: T.nilable(String), expand: T.nilable(T::Array[String]), hooks: T.nilable(PaymentIntentIncrementAuthorizationParams::Hooks), metadata: T.nilable(T::Hash[String, String]), payment_details: T.nilable(PaymentIntentIncrementAuthorizationParams::PaymentDetails), payment_method_options: T.nilable(PaymentIntentIncrementAuthorizationParams::PaymentMethodOptions), statement_descriptor: T.nilable(String), transfer_data: T.nilable(PaymentIntentIncrementAuthorizationParams::TransferData)).void
     }
    def initialize(
      amount: nil,
      amount_details: nil,
      application_fee_amount: nil,
      description: nil,
      expand: nil,
      hooks: nil,
      metadata: nil,
      payment_details: nil,
      payment_method_options: nil,
      statement_descriptor: nil,
      transfer_data: nil
    ); end
  end
end