# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # PaymentMethodConfigurations control which payment methods are displayed to your customers when you don't explicitly specify payment method types. You can have multiple configurations with different sets of payment methods for different scenarios.
  #
  # There are two types of PaymentMethodConfigurations. Which is used depends on the [charge type](https://stripe.com/docs/connect/charges):
  #
  # **Direct** configurations apply to payments created on your account, including Connect destination charges, Connect separate charges and transfers, and payments not involving Connect.
  #
  # **Child** configurations apply to payments created on your connected accounts using direct charges, and charges with the on_behalf_of parameter.
  #
  # Child configurations have a `parent` that sets default values and controls which settings connected accounts may override. You can specify a parent ID at payment time, and Stripe will automatically resolve the connected account's associated child configuration. Parent configurations are [managed in the dashboard](https://dashboard.stripe.com/settings/payment_methods/connected_accounts) and are not available in this API.
  #
  # Related guides:
  # - [Payment Method Configurations API](https://stripe.com/docs/connect/payment-method-configurations)
  # - [Multiple configurations on dynamic payment methods](https://stripe.com/docs/payments/multiple-payment-method-configs)
  # - [Multiple configurations for your Connect accounts](https://stripe.com/docs/connect/multiple-payment-method-configurations)
  class PaymentMethodConfiguration < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "payment_method_configuration"
    def self.object_name
      "payment_method_configuration"
    end

    class AcssDebit < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        attr_reader :overridable, :preference, :value
      end
      attr_reader :available, :display_preference
    end

    class Affirm < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        attr_reader :overridable, :preference, :value
      end
      attr_reader :available, :display_preference
    end

    class AfterpayClearpay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        attr_reader :overridable, :preference, :value
      end
      attr_reader :available, :display_preference
    end

    class Alipay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        attr_reader :overridable, :preference, :value
      end
      attr_reader :available, :display_preference
    end

    class Alma < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        attr_reader :overridable, :preference, :value
      end
      attr_reader :available, :display_preference
    end

    class AmazonPay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        attr_reader :overridable, :preference, :value
      end
      attr_reader :available, :display_preference
    end

    class ApplePay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        attr_reader :overridable, :preference, :value
      end
      attr_reader :available, :display_preference
    end

    class AuBecsDebit < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        attr_reader :overridable, :preference, :value
      end
      attr_reader :available, :display_preference
    end

    class BacsDebit < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        attr_reader :overridable, :preference, :value
      end
      attr_reader :available, :display_preference
    end

    class Bancontact < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        attr_reader :overridable, :preference, :value
      end
      attr_reader :available, :display_preference
    end

    class Blik < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        attr_reader :overridable, :preference, :value
      end
      attr_reader :available, :display_preference
    end

    class Boleto < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        attr_reader :overridable, :preference, :value
      end
      attr_reader :available, :display_preference
    end

    class Card < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        attr_reader :overridable, :preference, :value
      end
      attr_reader :available, :display_preference
    end

    class CartesBancaires < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        attr_reader :overridable, :preference, :value
      end
      attr_reader :available, :display_preference
    end

    class Cashapp < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        attr_reader :overridable, :preference, :value
      end
      attr_reader :available, :display_preference
    end

    class CustomerBalance < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        attr_reader :overridable, :preference, :value
      end
      attr_reader :available, :display_preference
    end

    class Eps < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        attr_reader :overridable, :preference, :value
      end
      attr_reader :available, :display_preference
    end

    class Fpx < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        attr_reader :overridable, :preference, :value
      end
      attr_reader :available, :display_preference
    end

    class Giropay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        attr_reader :overridable, :preference, :value
      end
      attr_reader :available, :display_preference
    end

    class GooglePay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        attr_reader :overridable, :preference, :value
      end
      attr_reader :available, :display_preference
    end

    class Gopay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        attr_reader :overridable, :preference, :value
      end
      attr_reader :available, :display_preference
    end

    class Grabpay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        attr_reader :overridable, :preference, :value
      end
      attr_reader :available, :display_preference
    end

    class IdBankTransfer < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        attr_reader :overridable, :preference, :value
      end
      attr_reader :available, :display_preference
    end

    class Ideal < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        attr_reader :overridable, :preference, :value
      end
      attr_reader :available, :display_preference
    end

    class Jcb < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        attr_reader :overridable, :preference, :value
      end
      attr_reader :available, :display_preference
    end

    class Klarna < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        attr_reader :overridable, :preference, :value
      end
      attr_reader :available, :display_preference
    end

    class Konbini < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        attr_reader :overridable, :preference, :value
      end
      attr_reader :available, :display_preference
    end

    class Link < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        attr_reader :overridable, :preference, :value
      end
      attr_reader :available, :display_preference
    end

    class Mobilepay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        attr_reader :overridable, :preference, :value
      end
      attr_reader :available, :display_preference
    end

    class Multibanco < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        attr_reader :overridable, :preference, :value
      end
      attr_reader :available, :display_preference
    end

    class Oxxo < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        attr_reader :overridable, :preference, :value
      end
      attr_reader :available, :display_preference
    end

    class P24 < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        attr_reader :overridable, :preference, :value
      end
      attr_reader :available, :display_preference
    end

    class Paynow < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        attr_reader :overridable, :preference, :value
      end
      attr_reader :available, :display_preference
    end

    class Paypal < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        attr_reader :overridable, :preference, :value
      end
      attr_reader :available, :display_preference
    end

    class Payto < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        attr_reader :overridable, :preference, :value
      end
      attr_reader :available, :display_preference
    end

    class Promptpay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        attr_reader :overridable, :preference, :value
      end
      attr_reader :available, :display_preference
    end

    class Qris < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        attr_reader :overridable, :preference, :value
      end
      attr_reader :available, :display_preference
    end

    class RevolutPay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        attr_reader :overridable, :preference, :value
      end
      attr_reader :available, :display_preference
    end

    class SepaDebit < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        attr_reader :overridable, :preference, :value
      end
      attr_reader :available, :display_preference
    end

    class Shopeepay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        attr_reader :overridable, :preference, :value
      end
      attr_reader :available, :display_preference
    end

    class Sofort < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        attr_reader :overridable, :preference, :value
      end
      attr_reader :available, :display_preference
    end

    class Swish < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        attr_reader :overridable, :preference, :value
      end
      attr_reader :available, :display_preference
    end

    class Twint < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        attr_reader :overridable, :preference, :value
      end
      attr_reader :available, :display_preference
    end

    class UsBankAccount < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        attr_reader :overridable, :preference, :value
      end
      attr_reader :available, :display_preference
    end

    class WechatPay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        attr_reader :overridable, :preference, :value
      end
      attr_reader :available, :display_preference
    end

    class Zip < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        attr_reader :overridable, :preference, :value
      end
      attr_reader :available, :display_preference
    end
    # Attribute for field acss_debit
    attr_reader :acss_debit
    # Whether the configuration can be used for new payments.
    attr_reader :active
    # Attribute for field affirm
    attr_reader :affirm
    # Attribute for field afterpay_clearpay
    attr_reader :afterpay_clearpay
    # Attribute for field alipay
    attr_reader :alipay
    # Attribute for field alma
    attr_reader :alma
    # Attribute for field amazon_pay
    attr_reader :amazon_pay
    # Attribute for field apple_pay
    attr_reader :apple_pay
    # For child configs, the Connect application associated with the configuration.
    attr_reader :application
    # Attribute for field au_becs_debit
    attr_reader :au_becs_debit
    # Attribute for field bacs_debit
    attr_reader :bacs_debit
    # Attribute for field bancontact
    attr_reader :bancontact
    # Attribute for field blik
    attr_reader :blik
    # Attribute for field boleto
    attr_reader :boleto
    # Attribute for field card
    attr_reader :card
    # Attribute for field cartes_bancaires
    attr_reader :cartes_bancaires
    # Attribute for field cashapp
    attr_reader :cashapp
    # Attribute for field customer_balance
    attr_reader :customer_balance
    # Attribute for field eps
    attr_reader :eps
    # Attribute for field fpx
    attr_reader :fpx
    # Attribute for field giropay
    attr_reader :giropay
    # Attribute for field google_pay
    attr_reader :google_pay
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
    # The default configuration is used whenever a payment method configuration is not specified.
    attr_reader :is_default
    # Attribute for field jcb
    attr_reader :jcb
    # Attribute for field klarna
    attr_reader :klarna
    # Attribute for field konbini
    attr_reader :konbini
    # Attribute for field link
    attr_reader :link
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # Attribute for field mobilepay
    attr_reader :mobilepay
    # Attribute for field multibanco
    attr_reader :multibanco
    # The configuration's name.
    attr_reader :name
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # Attribute for field oxxo
    attr_reader :oxxo
    # Attribute for field p24
    attr_reader :p24
    # For child configs, the configuration's parent configuration.
    attr_reader :parent
    # Attribute for field paynow
    attr_reader :paynow
    # Attribute for field paypal
    attr_reader :paypal
    # Attribute for field payto
    attr_reader :payto
    # Attribute for field promptpay
    attr_reader :promptpay
    # Attribute for field qris
    attr_reader :qris
    # Attribute for field revolut_pay
    attr_reader :revolut_pay
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
    # Attribute for field us_bank_account
    attr_reader :us_bank_account
    # Attribute for field wechat_pay
    attr_reader :wechat_pay
    # Attribute for field zip
    attr_reader :zip

    # Creates a payment method configuration
    def self.create(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: "/v1/payment_method_configurations",
        params: params,
        opts: opts
      )
    end

    # List payment method configurations
    def self.list(filters = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: "/v1/payment_method_configurations",
        params: filters,
        opts: opts
      )
    end

    # Update payment method configuration
    def self.update(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_method_configurations/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end
  end
end
