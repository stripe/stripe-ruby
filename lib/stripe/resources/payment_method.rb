# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # PaymentMethod objects represent your customer's payment instruments.
  # You can use them with [PaymentIntents](https://stripe.com/docs/payments/payment-intents) to collect payments or save them to
  # Customer objects to store instrument details for future payments.
  #
  # Related guides: [Payment Methods](https://stripe.com/docs/payments/payment-methods) and [More Payment Scenarios](https://stripe.com/docs/payments/more-payment-scenarios).
  class PaymentMethod < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "payment_method"
    def self.object_name
      "payment_method"
    end

    class AcssDebit < Stripe::StripeObject
      attr_reader :bank_name, :fingerprint, :institution_number, :last4, :transit_number
    end

    class Affirm < Stripe::StripeObject; end
    class AfterpayClearpay < Stripe::StripeObject; end
    class Alipay < Stripe::StripeObject; end
    class Alma < Stripe::StripeObject; end
    class AmazonPay < Stripe::StripeObject; end

    class AuBecsDebit < Stripe::StripeObject
      attr_reader :bsb_number, :fingerprint, :last4
    end

    class BacsDebit < Stripe::StripeObject
      attr_reader :fingerprint, :last4, :sort_code
    end

    class Bancontact < Stripe::StripeObject; end

    class BillingDetails < Stripe::StripeObject
      class Address < Stripe::StripeObject
        attr_reader :city, :country, :line1, :line2, :postal_code, :state
      end
      attr_reader :address, :email, :name, :phone
    end

    class Blik < Stripe::StripeObject; end

    class Boleto < Stripe::StripeObject
      attr_reader :tax_id
    end

    class Card < Stripe::StripeObject
      class Checks < Stripe::StripeObject
        attr_reader :address_line1_check, :address_postal_code_check, :cvc_check
      end

      class GeneratedFrom < Stripe::StripeObject
        class PaymentMethodDetails < Stripe::StripeObject
          class CardPresent < Stripe::StripeObject
            class Offline < Stripe::StripeObject
              attr_reader :stored_at, :type
            end

            class Receipt < Stripe::StripeObject
              attr_reader :account_type, :application_cryptogram, :application_preferred_name, :authorization_code, :authorization_response_code, :cardholder_verification_method, :dedicated_file_name, :terminal_verification_results, :transaction_status_information
            end

            class Wallet < Stripe::StripeObject
              attr_reader :type
            end
            attr_reader :amount_authorized, :brand, :brand_product, :capture_before, :cardholder_name, :country, :description, :emv_auth_data, :exp_month, :exp_year, :fingerprint, :funding, :generated_card, :iin, :incremental_authorization_supported, :issuer, :last4, :network, :network_transaction_id, :offline, :overcapture_supported, :preferred_locales, :read_method, :receipt, :wallet
          end
          attr_reader :card_present, :type
        end
        attr_reader :charge, :payment_method_details, :setup_attempt
      end

      class Networks < Stripe::StripeObject
        attr_reader :available, :preferred
      end

      class ThreeDSecureUsage < Stripe::StripeObject
        attr_reader :supported
      end

      class Wallet < Stripe::StripeObject
        class AmexExpressCheckout < Stripe::StripeObject; end
        class ApplePay < Stripe::StripeObject; end
        class GooglePay < Stripe::StripeObject; end
        class Link < Stripe::StripeObject; end

        class Masterpass < Stripe::StripeObject
          class BillingAddress < Stripe::StripeObject
            attr_reader :city, :country, :line1, :line2, :postal_code, :state
          end

          class ShippingAddress < Stripe::StripeObject
            attr_reader :city, :country, :line1, :line2, :postal_code, :state
          end
          attr_reader :billing_address, :email, :name, :shipping_address
        end

        class SamsungPay < Stripe::StripeObject; end

        class VisaCheckout < Stripe::StripeObject
          class BillingAddress < Stripe::StripeObject
            attr_reader :city, :country, :line1, :line2, :postal_code, :state
          end

          class ShippingAddress < Stripe::StripeObject
            attr_reader :city, :country, :line1, :line2, :postal_code, :state
          end
          attr_reader :billing_address, :email, :name, :shipping_address
        end
        attr_reader :amex_express_checkout, :apple_pay, :dynamic_last4, :google_pay, :link, :masterpass, :samsung_pay, :type, :visa_checkout
      end
      attr_reader :brand, :checks, :country, :description, :display_brand, :exp_month, :exp_year, :fingerprint, :funding, :generated_from, :iin, :issuer, :last4, :networks, :three_d_secure_usage, :wallet
    end

    class CardPresent < Stripe::StripeObject
      class Networks < Stripe::StripeObject
        attr_reader :available, :preferred
      end

      class Offline < Stripe::StripeObject
        attr_reader :stored_at, :type
      end

      class Wallet < Stripe::StripeObject
        attr_reader :type
      end
      attr_reader :brand, :brand_product, :cardholder_name, :country, :description, :exp_month, :exp_year, :fingerprint, :funding, :iin, :issuer, :last4, :networks, :offline, :preferred_locales, :read_method, :wallet
    end

    class Cashapp < Stripe::StripeObject
      attr_reader :buyer_id, :cashtag
    end

    class CustomerBalance < Stripe::StripeObject; end

    class Eps < Stripe::StripeObject
      attr_reader :bank
    end

    class Fpx < Stripe::StripeObject
      attr_reader :account_holder_type, :bank
    end

    class Giropay < Stripe::StripeObject; end
    class Gopay < Stripe::StripeObject; end
    class Grabpay < Stripe::StripeObject; end

    class IdBankTransfer < Stripe::StripeObject
      attr_reader :bank, :bank_code, :bank_name, :display_name
    end

    class Ideal < Stripe::StripeObject
      attr_reader :bank, :bic
    end

    class InteracPresent < Stripe::StripeObject
      class Networks < Stripe::StripeObject
        attr_reader :available, :preferred
      end
      attr_reader :brand, :cardholder_name, :country, :description, :exp_month, :exp_year, :fingerprint, :funding, :iin, :issuer, :last4, :networks, :preferred_locales, :read_method
    end

    class KakaoPay < Stripe::StripeObject; end

    class Klarna < Stripe::StripeObject
      class Dob < Stripe::StripeObject
        attr_reader :day, :month, :year
      end
      attr_reader :dob
    end

    class Konbini < Stripe::StripeObject; end

    class KrCard < Stripe::StripeObject
      attr_reader :brand, :last4
    end

    class Link < Stripe::StripeObject
      attr_reader :email, :persistent_token
    end

    class MbWay < Stripe::StripeObject; end
    class Mobilepay < Stripe::StripeObject; end
    class Multibanco < Stripe::StripeObject; end

    class NaverPay < Stripe::StripeObject
      attr_reader :funding
    end

    class Oxxo < Stripe::StripeObject; end

    class P24 < Stripe::StripeObject
      attr_reader :bank
    end

    class Payco < Stripe::StripeObject; end
    class Paynow < Stripe::StripeObject; end

    class Paypal < Stripe::StripeObject
      attr_reader :fingerprint, :payer_email, :payer_id, :verified_email
    end

    class Payto < Stripe::StripeObject
      attr_reader :bsb_number, :last4, :pay_id
    end

    class Pix < Stripe::StripeObject; end
    class Promptpay < Stripe::StripeObject; end
    class Qris < Stripe::StripeObject; end

    class RadarOptions < Stripe::StripeObject
      attr_reader :session
    end

    class Rechnung < Stripe::StripeObject
      class Dob < Stripe::StripeObject
        attr_reader :day, :month, :year
      end
      attr_reader :dob
    end

    class RevolutPay < Stripe::StripeObject; end
    class SamsungPay < Stripe::StripeObject; end

    class SepaDebit < Stripe::StripeObject
      class GeneratedFrom < Stripe::StripeObject
        attr_reader :charge, :setup_attempt
      end
      attr_reader :bank_code, :branch_code, :country, :fingerprint, :generated_from, :last4
    end

    class Shopeepay < Stripe::StripeObject; end

    class Sofort < Stripe::StripeObject
      attr_reader :country
    end

    class Swish < Stripe::StripeObject; end
    class Twint < Stripe::StripeObject; end

    class UsBankAccount < Stripe::StripeObject
      class Networks < Stripe::StripeObject
        attr_reader :preferred, :supported
      end

      class StatusDetails < Stripe::StripeObject
        class Blocked < Stripe::StripeObject
          attr_reader :network_code, :reason
        end
        attr_reader :blocked
      end
      attr_reader :account_holder_type, :account_number, :account_type, :bank_name, :financial_connections_account, :fingerprint, :last4, :networks, :routing_number, :status_details
    end

    class WechatPay < Stripe::StripeObject; end
    class Zip < Stripe::StripeObject; end
    # Attribute for field acss_debit
    attr_reader :acss_debit
    # Attribute for field affirm
    attr_reader :affirm
    # Attribute for field afterpay_clearpay
    attr_reader :afterpay_clearpay
    # Attribute for field alipay
    attr_reader :alipay
    # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to “unspecified”.
    attr_reader :allow_redisplay
    # Attribute for field alma
    attr_reader :alma
    # Attribute for field amazon_pay
    attr_reader :amazon_pay
    # Attribute for field au_becs_debit
    attr_reader :au_becs_debit
    # Attribute for field bacs_debit
    attr_reader :bacs_debit
    # Attribute for field bancontact
    attr_reader :bancontact
    # Attribute for field billing_details
    attr_reader :billing_details
    # Attribute for field blik
    attr_reader :blik
    # Attribute for field boleto
    attr_reader :boleto
    # Attribute for field card
    attr_reader :card
    # Attribute for field card_present
    attr_reader :card_present
    # Attribute for field cashapp
    attr_reader :cashapp
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # The ID of the Customer to which this PaymentMethod is saved. This will not be set when the PaymentMethod has not been saved to a Customer.
    attr_reader :customer
    # Attribute for field customer_balance
    attr_reader :customer_balance
    # Attribute for field eps
    attr_reader :eps
    # Attribute for field fpx
    attr_reader :fpx
    # Attribute for field giropay
    attr_reader :giropay
    # Attribute for field gopay
    attr_reader :gopay
    # Attribute for field grabpay
    attr_reader :grabpay
    # Unique identifier for the object.
    attr_reader :id
    # Attribute for field id_bank_transfer
    attr_reader :id_bank_transfer
    # Attribute for field ideal
    attr_reader :ideal
    # Attribute for field interac_present
    attr_reader :interac_present
    # Attribute for field kakao_pay
    attr_reader :kakao_pay
    # Attribute for field klarna
    attr_reader :klarna
    # Attribute for field konbini
    attr_reader :konbini
    # Attribute for field kr_card
    attr_reader :kr_card
    # Attribute for field link
    attr_reader :link
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # Attribute for field mb_way
    attr_reader :mb_way
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    # Attribute for field mobilepay
    attr_reader :mobilepay
    # Attribute for field multibanco
    attr_reader :multibanco
    # Attribute for field naver_pay
    attr_reader :naver_pay
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # Attribute for field oxxo
    attr_reader :oxxo
    # Attribute for field p24
    attr_reader :p24
    # Attribute for field payco
    attr_reader :payco
    # Attribute for field paynow
    attr_reader :paynow
    # Attribute for field paypal
    attr_reader :paypal
    # Attribute for field payto
    attr_reader :payto
    # Attribute for field pix
    attr_reader :pix
    # Attribute for field promptpay
    attr_reader :promptpay
    # Attribute for field qris
    attr_reader :qris
    # Options to configure Radar. See [Radar Session](https://stripe.com/docs/radar/radar-session) for more information.
    attr_reader :radar_options
    # Attribute for field rechnung
    attr_reader :rechnung
    # Attribute for field revolut_pay
    attr_reader :revolut_pay
    # Attribute for field samsung_pay
    attr_reader :samsung_pay
    # Attribute for field sepa_debit
    attr_reader :sepa_debit
    # Attribute for field shopeepay
    attr_reader :shopeepay
    # Attribute for field sofort
    attr_reader :sofort
    # Attribute for field swish
    attr_reader :swish
    # Attribute for field twint
    attr_reader :twint
    # The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
    attr_reader :type
    # Attribute for field us_bank_account
    attr_reader :us_bank_account
    # Attribute for field wechat_pay
    attr_reader :wechat_pay
    # Attribute for field zip
    attr_reader :zip

    # Attaches a PaymentMethod object to a Customer.
    #
    # To attach a new PaymentMethod to a customer for future payments, we recommend you use a [SetupIntent](https://stripe.com/docs/api/setup_intents)
    # or a PaymentIntent with [setup_future_usage](https://stripe.com/docs/api/payment_intents/create#create_payment_intent-setup_future_usage).
    # These approaches will perform any necessary steps to set up the PaymentMethod for future payments. Using the /v1/payment_methods/:id/attach
    # endpoint without first using a SetupIntent or PaymentIntent with setup_future_usage does not optimize the PaymentMethod for
    # future use, which makes later declines and payment friction more likely.
    # See [Optimizing cards for future payments](https://stripe.com/docs/payments/payment-intents#future-usage) for more information about setting up
    # future payments.
    #
    # To use this PaymentMethod as the default for invoice or subscription payments,
    # set [invoice_settings.default_payment_method](https://stripe.com/docs/api/customers/update#update_customer-invoice_settings-default_payment_method),
    # on the Customer to the PaymentMethod's ID.
    def attach(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_methods/%<payment_method>s/attach", { payment_method: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Attaches a PaymentMethod object to a Customer.
    #
    # To attach a new PaymentMethod to a customer for future payments, we recommend you use a [SetupIntent](https://stripe.com/docs/api/setup_intents)
    # or a PaymentIntent with [setup_future_usage](https://stripe.com/docs/api/payment_intents/create#create_payment_intent-setup_future_usage).
    # These approaches will perform any necessary steps to set up the PaymentMethod for future payments. Using the /v1/payment_methods/:id/attach
    # endpoint without first using a SetupIntent or PaymentIntent with setup_future_usage does not optimize the PaymentMethod for
    # future use, which makes later declines and payment friction more likely.
    # See [Optimizing cards for future payments](https://stripe.com/docs/payments/payment-intents#future-usage) for more information about setting up
    # future payments.
    #
    # To use this PaymentMethod as the default for invoice or subscription payments,
    # set [invoice_settings.default_payment_method](https://stripe.com/docs/api/customers/update#update_customer-invoice_settings-default_payment_method),
    # on the Customer to the PaymentMethod's ID.
    def self.attach(payment_method, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_methods/%<payment_method>s/attach", { payment_method: CGI.escape(payment_method) }),
        params: params,
        opts: opts
      )
    end

    # Creates a PaymentMethod object. Read the [Stripe.js reference](https://stripe.com/docs/stripe-js/reference#stripe-create-payment-method) to learn how to create PaymentMethods via Stripe.js.
    #
    # Instead of creating a PaymentMethod directly, we recommend using the [PaymentIntents API to accept a payment immediately or the <a href="/docs/payments/save-and-reuse">SetupIntent](https://stripe.com/docs/payments/accept-a-payment) API to collect payment method details ahead of a future payment.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/payment_methods", params: params, opts: opts)
    end

    # Detaches a PaymentMethod object from a Customer. After a PaymentMethod is detached, it can no longer be used for a payment or re-attached to a Customer.
    def detach(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_methods/%<payment_method>s/detach", { payment_method: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Detaches a PaymentMethod object from a Customer. After a PaymentMethod is detached, it can no longer be used for a payment or re-attached to a Customer.
    def self.detach(payment_method, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_methods/%<payment_method>s/detach", { payment_method: CGI.escape(payment_method) }),
        params: params,
        opts: opts
      )
    end

    # Returns a list of PaymentMethods for Treasury flows. If you want to list the PaymentMethods attached to a Customer for payments, you should use the [List a Customer's PaymentMethods](https://stripe.com/docs/api/payment_methods/customer_list) API instead.
    def self.list(filters = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/payment_methods", params: filters, opts: opts)
    end

    # Updates a PaymentMethod object. A PaymentMethod must be attached a customer to be updated.
    def self.update(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_methods/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end
  end
end
