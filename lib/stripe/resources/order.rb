# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # An Order describes a purchase being made by a customer, including the
  # products & quantities being purchased, the order status, the payment information,
  # and the billing/shipping details.
  #
  # Related guide: [Orders overview](https://stripe.com/docs/orders)
  class Order < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "order"
    def self.object_name
      "order"
    end

    class AutomaticTax < Stripe::StripeObject
      attr_reader :enabled, :status
    end

    class BillingDetails < Stripe::StripeObject
      class Address < Stripe::StripeObject
        attr_reader :city, :country, :line1, :line2, :postal_code, :state
      end
      attr_reader :address, :email, :name, :phone
    end

    class Credit < Stripe::StripeObject
      class GiftCard < Stripe::StripeObject
        attr_reader :card
      end
      attr_reader :amount, :gift_card, :ineligible_line_items, :type
    end

    class Payment < Stripe::StripeObject
      class Settings < Stripe::StripeObject
        class AutomaticPaymentMethods < Stripe::StripeObject
          attr_reader :enabled
        end

        class PaymentMethodOptions < Stripe::StripeObject
          class AcssDebit < Stripe::StripeObject
            class MandateOptions < Stripe::StripeObject
              attr_reader :custom_mandate_url, :interval_description, :payment_schedule, :transaction_type
            end
            attr_reader :mandate_options, :setup_future_usage, :verification_method
          end

          class AfterpayClearpay < Stripe::StripeObject
            attr_reader :capture_method, :reference, :setup_future_usage
          end

          class Alipay < Stripe::StripeObject
            attr_reader :setup_future_usage
          end

          class Bancontact < Stripe::StripeObject
            attr_reader :preferred_language, :setup_future_usage
          end

          class Card < Stripe::StripeObject
            attr_reader :capture_method, :setup_future_usage
          end

          class CustomerBalance < Stripe::StripeObject
            class BankTransfer < Stripe::StripeObject
              class EuBankTransfer < Stripe::StripeObject
                attr_reader :country
              end
              attr_reader :eu_bank_transfer, :requested_address_types, :type
            end
            attr_reader :bank_transfer, :funding_type, :setup_future_usage
          end

          class Ideal < Stripe::StripeObject
            attr_reader :setup_future_usage
          end

          class Klarna < Stripe::StripeObject
            attr_reader :capture_method, :preferred_locale, :setup_future_usage
          end

          class Link < Stripe::StripeObject
            attr_reader :capture_method, :persistent_token, :setup_future_usage
          end

          class Oxxo < Stripe::StripeObject
            attr_reader :expires_after_days, :setup_future_usage
          end

          class P24 < Stripe::StripeObject
            attr_reader :setup_future_usage
          end

          class Paypal < Stripe::StripeObject
            class LineItem < Stripe::StripeObject
              class Tax < Stripe::StripeObject
                attr_reader :amount, :behavior
              end
              attr_reader :category, :description, :name, :quantity, :sku, :sold_by, :tax, :unit_amount
            end
            attr_reader :capture_method, :line_items, :preferred_locale, :reference, :reference_id, :setup_future_usage, :subsellers
          end

          class SepaDebit < Stripe::StripeObject
            class MandateOptions < Stripe::StripeObject
              attr_reader :reference_prefix
            end
            attr_reader :mandate_options, :setup_future_usage
          end

          class Sofort < Stripe::StripeObject
            attr_reader :preferred_language, :setup_future_usage
          end

          class WechatPay < Stripe::StripeObject
            attr_reader :app_id, :client, :setup_future_usage
          end
          attr_reader :acss_debit, :afterpay_clearpay, :alipay, :bancontact, :card, :customer_balance, :ideal, :klarna, :link, :oxxo, :p24, :paypal, :sepa_debit, :sofort, :wechat_pay
        end

        class TransferData < Stripe::StripeObject
          attr_reader :amount, :destination
        end
        attr_reader :application_fee_amount, :automatic_payment_methods, :payment_method_options, :payment_method_types, :return_url, :statement_descriptor, :statement_descriptor_suffix, :transfer_data
      end
      attr_reader :payment_intent, :settings, :status
    end

    class ShippingCost < Stripe::StripeObject
      class Tax < Stripe::StripeObject
        attr_reader :amount, :rate, :taxability_reason, :taxable_amount
      end
      attr_reader :amount_subtotal, :amount_tax, :amount_total, :shipping_rate, :taxes
    end

    class ShippingDetails < Stripe::StripeObject
      class Address < Stripe::StripeObject
        attr_reader :city, :country, :line1, :line2, :postal_code, :state
      end
      attr_reader :address, :name, :phone
    end

    class TaxDetails < Stripe::StripeObject
      class TaxId < Stripe::StripeObject
        attr_reader :type, :value
      end
      attr_reader :tax_exempt, :tax_ids
    end

    class TotalDetails < Stripe::StripeObject
      class Breakdown < Stripe::StripeObject
        class Discount < Stripe::StripeObject
          attr_reader :amount, :discount
        end

        class Tax < Stripe::StripeObject
          attr_reader :amount, :rate, :taxability_reason, :taxable_amount
        end
        attr_reader :discounts, :taxes
      end
      attr_reader :amount_credit, :amount_discount, :amount_shipping, :amount_tax, :breakdown
    end
    # Attribute for field amount_remaining
    attr_reader :amount_remaining
    # Order cost before any discounts or taxes are applied. A positive integer representing the subtotal of the order in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency).
    attr_reader :amount_subtotal
    # Total order cost after discounts and taxes are applied. A positive integer representing the cost of the order in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). To submit an order, the total must be either 0 or at least $0.50 USD or [equivalent in charge currency](https://stripe.com/docs/currencies#minimum-and-maximum-charge-amounts).
    attr_reader :amount_total
    # ID of the Connect application that created the Order, if any.
    attr_reader :application
    # Attribute for field automatic_tax
    attr_reader :automatic_tax
    # Customer billing details associated with the order.
    attr_reader :billing_details
    # The client secret of this Order. Used for client-side retrieval using a publishable key.
    #
    # The client secret can be used to complete a payment for an Order from your frontend. It should not be stored, logged, embedded in URLs, or exposed to anyone other than the customer. Make sure that you have TLS enabled on any page that includes the client secret.
    #
    # Refer to our docs for [creating and processing an order](https://stripe.com/docs/orders-beta/create-and-process) to learn about how client_secret should be handled.
    attr_reader :client_secret
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # The credits applied to the Order. At most 10 credits can be applied to an Order.
    attr_reader :credits
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    # The customer which this orders belongs to.
    attr_reader :customer
    # An arbitrary string attached to the object. Often useful for displaying to users.
    attr_reader :description
    # The discounts applied to the order. Use `expand[]=discounts` to expand each discount.
    attr_reader :discounts
    # Unique identifier for the object.
    attr_reader :id
    # A recent IP address of the purchaser used for tax reporting and tax location inference.
    attr_reader :ip_address
    # A list of line items the customer is ordering. Each line item includes information about the product, the quantity, and the resulting cost. There is a maximum of 100 line items.
    attr_reader :line_items
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # Attribute for field payment
    attr_reader :payment
    # The details of the customer cost of shipping, including the customer chosen ShippingRate.
    attr_reader :shipping_cost
    # Customer shipping information associated with the order.
    attr_reader :shipping_details
    # The overall status of the order.
    attr_reader :status
    # Attribute for field tax_details
    attr_reader :tax_details
    # Attribute for field total_details
    attr_reader :total_details

    # Cancels the order as well as the payment intent if one is attached.
    def cancel(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/orders/%<id>s/cancel", { id: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Cancels the order as well as the payment intent if one is attached.
    def self.cancel(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/orders/%<id>s/cancel", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end

    # Creates a new open order object.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/orders", params: params, opts: opts)
    end

    # Returns a list of your orders. The orders are returned sorted by creation date, with the most recently created orders appearing first.
    def self.list(filters = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/orders", params: filters, opts: opts)
    end

    # When retrieving an order, there is an includable line_items property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.
    def list_line_items(params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/orders/%<id>s/line_items", { id: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # When retrieving an order, there is an includable line_items property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.
    def self.list_line_items(id, params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/orders/%<id>s/line_items", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end

    # Reopens a submitted order.
    def reopen(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/orders/%<id>s/reopen", { id: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Reopens a submitted order.
    def self.reopen(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/orders/%<id>s/reopen", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end

    # Submitting an Order transitions the status to processing and creates a PaymentIntent object so the order can be paid. If the Order has an amount_total of 0, no PaymentIntent object will be created. Once the order is submitted, its contents cannot be changed, unless the [reopen](https://stripe.com/docs/api#reopen_order) method is called.
    def submit(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/orders/%<id>s/submit", { id: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Submitting an Order transitions the status to processing and creates a PaymentIntent object so the order can be paid. If the Order has an amount_total of 0, no PaymentIntent object will be created. Once the order is submitted, its contents cannot be changed, unless the [reopen](https://stripe.com/docs/api#reopen_order) method is called.
    def self.submit(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/orders/%<id>s/submit", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end

    # Updates the specific order by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
    def self.update(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/orders/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end
  end
end
