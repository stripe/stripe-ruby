# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # An Order describes a purchase being made by a customer, including the
  # products & quantities being purchased, the order status, the payment information,
  # and the billing/shipping details.
  #
  # Related guide: [Orders overview](https://stripe.com/docs/orders)
  class Order < APIResource
    class AutomaticTax < Stripe::StripeObject
      sig { returns(T::Boolean) }
      attr_reader :enabled
      sig { returns(T.nilable(String)) }
      attr_reader :status
    end
    class BillingDetails < Stripe::StripeObject
      class Address < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :city
        sig { returns(T.nilable(String)) }
        attr_reader :country
        sig { returns(T.nilable(String)) }
        attr_reader :line1
        sig { returns(T.nilable(String)) }
        attr_reader :line2
        sig { returns(T.nilable(String)) }
        attr_reader :postal_code
        sig { returns(T.nilable(String)) }
        attr_reader :state
      end
      sig { returns(T.nilable(Address)) }
      attr_reader :address
      sig { returns(T.nilable(String)) }
      attr_reader :email
      sig { returns(T.nilable(String)) }
      attr_reader :name
      sig { returns(T.nilable(String)) }
      attr_reader :phone
    end
    class Credit < Stripe::StripeObject
      class GiftCard < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :card
      end
      sig { returns(Integer) }
      attr_reader :amount
      sig { returns(T.nilable(GiftCard)) }
      attr_reader :gift_card
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :ineligible_line_items
      sig { returns(String) }
      attr_reader :type
    end
    class Payment < Stripe::StripeObject
      class Settings < Stripe::StripeObject
        class AutomaticPaymentMethods < Stripe::StripeObject
          sig { returns(T::Boolean) }
          attr_reader :enabled
        end
        class PaymentMethodOptions < Stripe::StripeObject
          class AcssDebit < Stripe::StripeObject
            class MandateOptions < Stripe::StripeObject
              sig { returns(String) }
              attr_reader :custom_mandate_url
              sig { returns(T.nilable(String)) }
              attr_reader :interval_description
              sig { returns(T.nilable(String)) }
              attr_reader :payment_schedule
              sig { returns(T.nilable(String)) }
              attr_reader :transaction_type
            end
            sig { returns(MandateOptions) }
            attr_reader :mandate_options
            sig { returns(String) }
            attr_reader :setup_future_usage
            sig { returns(String) }
            attr_reader :verification_method
          end
          class AfterpayClearpay < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :capture_method
            sig { returns(T.nilable(String)) }
            attr_reader :reference
            sig { returns(String) }
            attr_reader :setup_future_usage
          end
          class Alipay < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :setup_future_usage
          end
          class Bancontact < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :preferred_language
            sig { returns(String) }
            attr_reader :setup_future_usage
          end
          class Card < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :capture_method
            sig { returns(String) }
            attr_reader :setup_future_usage
          end
          class CustomerBalance < Stripe::StripeObject
            class BankTransfer < Stripe::StripeObject
              class EuBankTransfer < Stripe::StripeObject
                sig { returns(String) }
                attr_reader :country
              end
              sig { returns(EuBankTransfer) }
              attr_reader :eu_bank_transfer
              sig { returns(T::Array[String]) }
              attr_reader :requested_address_types
              sig { returns(T.nilable(String)) }
              attr_reader :type
            end
            sig { returns(BankTransfer) }
            attr_reader :bank_transfer
            sig { returns(T.nilable(String)) }
            attr_reader :funding_type
            sig { returns(String) }
            attr_reader :setup_future_usage
          end
          class Ideal < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :setup_future_usage
          end
          class Klarna < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :capture_method
            sig { returns(T.nilable(String)) }
            attr_reader :preferred_locale
            sig { returns(String) }
            attr_reader :setup_future_usage
          end
          class Link < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :capture_method
            sig { returns(T.nilable(String)) }
            attr_reader :persistent_token
            sig { returns(String) }
            attr_reader :setup_future_usage
          end
          class Oxxo < Stripe::StripeObject
            sig { returns(Integer) }
            attr_reader :expires_after_days
            sig { returns(String) }
            attr_reader :setup_future_usage
          end
          class P24 < Stripe::StripeObject
            sig { returns(String) }
            attr_reader :setup_future_usage
          end
          class Paypal < Stripe::StripeObject
            class LineItem < Stripe::StripeObject
              class Tax < Stripe::StripeObject
                sig { returns(Integer) }
                attr_reader :amount
                sig { returns(String) }
                attr_reader :behavior
              end
              sig { returns(String) }
              attr_reader :category
              sig { returns(String) }
              attr_reader :description
              sig { returns(String) }
              attr_reader :name
              sig { returns(Integer) }
              attr_reader :quantity
              sig { returns(String) }
              attr_reader :sku
              sig { returns(String) }
              attr_reader :sold_by
              sig { returns(Tax) }
              attr_reader :tax
              sig { returns(Integer) }
              attr_reader :unit_amount
            end
            sig { returns(String) }
            attr_reader :capture_method
            sig { returns(T::Array[LineItem]) }
            attr_reader :line_items
            sig { returns(T.nilable(String)) }
            attr_reader :preferred_locale
            sig { returns(T.nilable(String)) }
            attr_reader :reference
            sig { returns(T.nilable(String)) }
            attr_reader :reference_id
            sig { returns(String) }
            attr_reader :setup_future_usage
            sig { returns(T::Array[String]) }
            attr_reader :subsellers
          end
          class SepaDebit < Stripe::StripeObject
            class MandateOptions < Stripe::StripeObject; end
            sig { returns(MandateOptions) }
            attr_reader :mandate_options
            sig { returns(String) }
            attr_reader :setup_future_usage
          end
          class Sofort < Stripe::StripeObject
            sig { returns(T.nilable(String)) }
            attr_reader :preferred_language
            sig { returns(String) }
            attr_reader :setup_future_usage
          end
          class WechatPay < Stripe::StripeObject
            sig { returns(T.nilable(String)) }
            attr_reader :app_id
            sig { returns(T.nilable(String)) }
            attr_reader :client
            sig { returns(String) }
            attr_reader :setup_future_usage
          end
          sig { returns(AcssDebit) }
          attr_reader :acss_debit
          sig { returns(AfterpayClearpay) }
          attr_reader :afterpay_clearpay
          sig { returns(Alipay) }
          attr_reader :alipay
          sig { returns(Bancontact) }
          attr_reader :bancontact
          sig { returns(Card) }
          attr_reader :card
          sig { returns(CustomerBalance) }
          attr_reader :customer_balance
          sig { returns(Ideal) }
          attr_reader :ideal
          sig { returns(Klarna) }
          attr_reader :klarna
          sig { returns(Link) }
          attr_reader :link
          sig { returns(Oxxo) }
          attr_reader :oxxo
          sig { returns(P24) }
          attr_reader :p24
          sig { returns(Paypal) }
          attr_reader :paypal
          sig { returns(SepaDebit) }
          attr_reader :sepa_debit
          sig { returns(Sofort) }
          attr_reader :sofort
          sig { returns(WechatPay) }
          attr_reader :wechat_pay
        end
        class TransferData < Stripe::StripeObject
          sig { returns(T.nilable(Integer)) }
          attr_reader :amount
          sig { returns(T.any(String, Stripe::Account)) }
          attr_reader :destination
        end
        sig { returns(T.nilable(Integer)) }
        attr_reader :application_fee_amount
        sig { returns(T.nilable(AutomaticPaymentMethods)) }
        attr_reader :automatic_payment_methods
        sig { returns(T.nilable(PaymentMethodOptions)) }
        attr_reader :payment_method_options
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :payment_method_types
        sig { returns(T.nilable(String)) }
        attr_reader :return_url
        sig { returns(T.nilable(String)) }
        attr_reader :statement_descriptor
        sig { returns(T.nilable(String)) }
        attr_reader :statement_descriptor_suffix
        sig { returns(T.nilable(TransferData)) }
        attr_reader :transfer_data
      end
      sig { returns(T.nilable(T.any(String, Stripe::PaymentIntent))) }
      attr_reader :payment_intent
      sig { returns(T.nilable(Settings)) }
      attr_reader :settings
      sig { returns(T.nilable(String)) }
      attr_reader :status
    end
    class ShippingCost < Stripe::StripeObject
      class Tax < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :amount
        sig { returns(Stripe::TaxRate) }
        attr_reader :rate
        sig { returns(T.nilable(String)) }
        attr_reader :taxability_reason
        sig { returns(T.nilable(Integer)) }
        attr_reader :taxable_amount
      end
      sig { returns(Integer) }
      attr_reader :amount_subtotal
      sig { returns(Integer) }
      attr_reader :amount_tax
      sig { returns(Integer) }
      attr_reader :amount_total
      sig { returns(T.nilable(T.any(String, Stripe::ShippingRate))) }
      attr_reader :shipping_rate
      sig { returns(T::Array[Tax]) }
      attr_reader :taxes
    end
    class ShippingDetails < Stripe::StripeObject
      class Address < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :city
        sig { returns(T.nilable(String)) }
        attr_reader :country
        sig { returns(T.nilable(String)) }
        attr_reader :line1
        sig { returns(T.nilable(String)) }
        attr_reader :line2
        sig { returns(T.nilable(String)) }
        attr_reader :postal_code
        sig { returns(T.nilable(String)) }
        attr_reader :state
      end
      sig { returns(T.nilable(Address)) }
      attr_reader :address
      sig { returns(T.nilable(String)) }
      attr_reader :name
      sig { returns(T.nilable(String)) }
      attr_reader :phone
    end
    class TaxDetails < Stripe::StripeObject
      class TaxId < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :type
        sig { returns(T.nilable(String)) }
        attr_reader :value
      end
      sig { returns(String) }
      attr_reader :tax_exempt
      sig { returns(T::Array[TaxId]) }
      attr_reader :tax_ids
    end
    class TotalDetails < Stripe::StripeObject
      class Breakdown < Stripe::StripeObject
        class Discount < Stripe::StripeObject
          sig { returns(Integer) }
          attr_reader :amount
          sig { returns(Stripe::Discount) }
          attr_reader :discount
        end
        class Tax < Stripe::StripeObject
          sig { returns(Integer) }
          attr_reader :amount
          sig { returns(Stripe::TaxRate) }
          attr_reader :rate
          sig { returns(T.nilable(String)) }
          attr_reader :taxability_reason
          sig { returns(T.nilable(Integer)) }
          attr_reader :taxable_amount
        end
        sig { returns(T::Array[Discount]) }
        attr_reader :discounts
        sig { returns(T::Array[Tax]) }
        attr_reader :taxes
      end
      sig { returns(Integer) }
      attr_reader :amount_credit
      sig { returns(Integer) }
      attr_reader :amount_discount
      sig { returns(T.nilable(Integer)) }
      attr_reader :amount_shipping
      sig { returns(Integer) }
      attr_reader :amount_tax
      sig { returns(Breakdown) }
      attr_reader :breakdown
    end
    sig { returns(Integer) }
    # Attribute for field amount_remaining
    attr_reader :amount_remaining
    sig { returns(Integer) }
    # Order cost before any discounts or taxes are applied. A positive integer representing the subtotal of the order in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency).
    attr_reader :amount_subtotal
    sig { returns(Integer) }
    # Total order cost after discounts and taxes are applied. A positive integer representing the cost of the order in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). To submit an order, the total must be either 0 or at least $0.50 USD or [equivalent in charge currency](https://stripe.com/docs/currencies#minimum-and-maximum-charge-amounts).
    attr_reader :amount_total
    sig { returns(T.nilable(T.any(String, Stripe::Application))) }
    # ID of the Connect application that created the Order, if any.
    attr_reader :application
    sig { returns(AutomaticTax) }
    # Attribute for field automatic_tax
    attr_reader :automatic_tax
    sig { returns(T.nilable(BillingDetails)) }
    # Customer billing details associated with the order.
    attr_reader :billing_details
    sig { returns(T.nilable(String)) }
    # The client secret of this Order. Used for client-side retrieval using a publishable key.
    #
    # The client secret can be used to complete a payment for an Order from your frontend. It should not be stored, logged, embedded in URLs, or exposed to anyone other than the customer. Make sure that you have TLS enabled on any page that includes the client secret.
    #
    # Refer to our docs for [creating and processing an order](https://stripe.com/docs/orders-beta/create-and-process) to learn about how client_secret should be handled.
    attr_reader :client_secret
    sig { returns(Integer) }
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    sig { returns(T::Array[Credit]) }
    # The credits applied to the Order. At most 10 credits can be applied to an Order.
    attr_reader :credits
    sig { returns(String) }
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
    # The customer which this orders belongs to.
    attr_reader :customer
    sig { returns(T.nilable(String)) }
    # An arbitrary string attached to the object. Often useful for displaying to users.
    attr_reader :description
    sig { returns(T.nilable(T::Array[T.any(String, Stripe::Discount)])) }
    # The discounts applied to the order. Use `expand[]=discounts` to expand each discount.
    attr_reader :discounts
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(T.nilable(String)) }
    # A recent IP address of the purchaser used for tax reporting and tax location inference.
    attr_reader :ip_address
    sig { returns(Stripe::ListObject) }
    # A list of line items the customer is ordering. Each line item includes information about the product, the quantity, and the resulting cost. There is a maximum of 100 line items.
    attr_reader :line_items
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(T.nilable(T::Hash[String, String])) }
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(Payment) }
    # Attribute for field payment
    attr_reader :payment
    sig { returns(T.nilable(ShippingCost)) }
    # The details of the customer cost of shipping, including the customer chosen ShippingRate.
    attr_reader :shipping_cost
    sig { returns(T.nilable(ShippingDetails)) }
    # Customer shipping information associated with the order.
    attr_reader :shipping_details
    sig { returns(String) }
    # The overall status of the order.
    attr_reader :status
    sig { returns(TaxDetails) }
    # Attribute for field tax_details
    attr_reader :tax_details
    sig { returns(TotalDetails) }
    # Attribute for field total_details
    attr_reader :total_details
  end
end