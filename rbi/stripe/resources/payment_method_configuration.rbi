# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
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
    class AcssDebit < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        sig { returns(String) }
        attr_reader :preference
        sig { returns(String) }
        attr_reader :value
      end
      sig { returns(T::Boolean) }
      attr_reader :available
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Affirm < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        sig { returns(String) }
        attr_reader :preference
        sig { returns(String) }
        attr_reader :value
      end
      sig { returns(T::Boolean) }
      attr_reader :available
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class AfterpayClearpay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        sig { returns(String) }
        attr_reader :preference
        sig { returns(String) }
        attr_reader :value
      end
      sig { returns(T::Boolean) }
      attr_reader :available
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Alipay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        sig { returns(String) }
        attr_reader :preference
        sig { returns(String) }
        attr_reader :value
      end
      sig { returns(T::Boolean) }
      attr_reader :available
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Alma < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        sig { returns(String) }
        attr_reader :preference
        sig { returns(String) }
        attr_reader :value
      end
      sig { returns(T::Boolean) }
      attr_reader :available
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class AmazonPay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        sig { returns(String) }
        attr_reader :preference
        sig { returns(String) }
        attr_reader :value
      end
      sig { returns(T::Boolean) }
      attr_reader :available
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class ApplePay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        sig { returns(String) }
        attr_reader :preference
        sig { returns(String) }
        attr_reader :value
      end
      sig { returns(T::Boolean) }
      attr_reader :available
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class AuBecsDebit < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        sig { returns(String) }
        attr_reader :preference
        sig { returns(String) }
        attr_reader :value
      end
      sig { returns(T::Boolean) }
      attr_reader :available
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class BacsDebit < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        sig { returns(String) }
        attr_reader :preference
        sig { returns(String) }
        attr_reader :value
      end
      sig { returns(T::Boolean) }
      attr_reader :available
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Bancontact < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        sig { returns(String) }
        attr_reader :preference
        sig { returns(String) }
        attr_reader :value
      end
      sig { returns(T::Boolean) }
      attr_reader :available
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Blik < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        sig { returns(String) }
        attr_reader :preference
        sig { returns(String) }
        attr_reader :value
      end
      sig { returns(T::Boolean) }
      attr_reader :available
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Boleto < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        sig { returns(String) }
        attr_reader :preference
        sig { returns(String) }
        attr_reader :value
      end
      sig { returns(T::Boolean) }
      attr_reader :available
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Card < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        sig { returns(String) }
        attr_reader :preference
        sig { returns(String) }
        attr_reader :value
      end
      sig { returns(T::Boolean) }
      attr_reader :available
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class CartesBancaires < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        sig { returns(String) }
        attr_reader :preference
        sig { returns(String) }
        attr_reader :value
      end
      sig { returns(T::Boolean) }
      attr_reader :available
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Cashapp < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        sig { returns(String) }
        attr_reader :preference
        sig { returns(String) }
        attr_reader :value
      end
      sig { returns(T::Boolean) }
      attr_reader :available
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class CustomerBalance < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        sig { returns(String) }
        attr_reader :preference
        sig { returns(String) }
        attr_reader :value
      end
      sig { returns(T::Boolean) }
      attr_reader :available
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Eps < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        sig { returns(String) }
        attr_reader :preference
        sig { returns(String) }
        attr_reader :value
      end
      sig { returns(T::Boolean) }
      attr_reader :available
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Fpx < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        sig { returns(String) }
        attr_reader :preference
        sig { returns(String) }
        attr_reader :value
      end
      sig { returns(T::Boolean) }
      attr_reader :available
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Giropay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        sig { returns(String) }
        attr_reader :preference
        sig { returns(String) }
        attr_reader :value
      end
      sig { returns(T::Boolean) }
      attr_reader :available
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class GooglePay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        sig { returns(String) }
        attr_reader :preference
        sig { returns(String) }
        attr_reader :value
      end
      sig { returns(T::Boolean) }
      attr_reader :available
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Gopay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        sig { returns(String) }
        attr_reader :preference
        sig { returns(String) }
        attr_reader :value
      end
      sig { returns(T::Boolean) }
      attr_reader :available
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Grabpay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        sig { returns(String) }
        attr_reader :preference
        sig { returns(String) }
        attr_reader :value
      end
      sig { returns(T::Boolean) }
      attr_reader :available
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class IdBankTransfer < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        sig { returns(String) }
        attr_reader :preference
        sig { returns(String) }
        attr_reader :value
      end
      sig { returns(T::Boolean) }
      attr_reader :available
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Ideal < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        sig { returns(String) }
        attr_reader :preference
        sig { returns(String) }
        attr_reader :value
      end
      sig { returns(T::Boolean) }
      attr_reader :available
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Jcb < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        sig { returns(String) }
        attr_reader :preference
        sig { returns(String) }
        attr_reader :value
      end
      sig { returns(T::Boolean) }
      attr_reader :available
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Klarna < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        sig { returns(String) }
        attr_reader :preference
        sig { returns(String) }
        attr_reader :value
      end
      sig { returns(T::Boolean) }
      attr_reader :available
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Konbini < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        sig { returns(String) }
        attr_reader :preference
        sig { returns(String) }
        attr_reader :value
      end
      sig { returns(T::Boolean) }
      attr_reader :available
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Link < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        sig { returns(String) }
        attr_reader :preference
        sig { returns(String) }
        attr_reader :value
      end
      sig { returns(T::Boolean) }
      attr_reader :available
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Mobilepay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        sig { returns(String) }
        attr_reader :preference
        sig { returns(String) }
        attr_reader :value
      end
      sig { returns(T::Boolean) }
      attr_reader :available
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Multibanco < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        sig { returns(String) }
        attr_reader :preference
        sig { returns(String) }
        attr_reader :value
      end
      sig { returns(T::Boolean) }
      attr_reader :available
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Oxxo < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        sig { returns(String) }
        attr_reader :preference
        sig { returns(String) }
        attr_reader :value
      end
      sig { returns(T::Boolean) }
      attr_reader :available
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class P24 < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        sig { returns(String) }
        attr_reader :preference
        sig { returns(String) }
        attr_reader :value
      end
      sig { returns(T::Boolean) }
      attr_reader :available
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Paynow < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        sig { returns(String) }
        attr_reader :preference
        sig { returns(String) }
        attr_reader :value
      end
      sig { returns(T::Boolean) }
      attr_reader :available
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Paypal < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        sig { returns(String) }
        attr_reader :preference
        sig { returns(String) }
        attr_reader :value
      end
      sig { returns(T::Boolean) }
      attr_reader :available
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Payto < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        sig { returns(String) }
        attr_reader :preference
        sig { returns(String) }
        attr_reader :value
      end
      sig { returns(T::Boolean) }
      attr_reader :available
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Promptpay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        sig { returns(String) }
        attr_reader :preference
        sig { returns(String) }
        attr_reader :value
      end
      sig { returns(T::Boolean) }
      attr_reader :available
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Qris < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        sig { returns(String) }
        attr_reader :preference
        sig { returns(String) }
        attr_reader :value
      end
      sig { returns(T::Boolean) }
      attr_reader :available
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class RevolutPay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        sig { returns(String) }
        attr_reader :preference
        sig { returns(String) }
        attr_reader :value
      end
      sig { returns(T::Boolean) }
      attr_reader :available
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class SepaDebit < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        sig { returns(String) }
        attr_reader :preference
        sig { returns(String) }
        attr_reader :value
      end
      sig { returns(T::Boolean) }
      attr_reader :available
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Shopeepay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        sig { returns(String) }
        attr_reader :preference
        sig { returns(String) }
        attr_reader :value
      end
      sig { returns(T::Boolean) }
      attr_reader :available
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Sofort < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        sig { returns(String) }
        attr_reader :preference
        sig { returns(String) }
        attr_reader :value
      end
      sig { returns(T::Boolean) }
      attr_reader :available
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Swish < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        sig { returns(String) }
        attr_reader :preference
        sig { returns(String) }
        attr_reader :value
      end
      sig { returns(T::Boolean) }
      attr_reader :available
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Twint < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        sig { returns(String) }
        attr_reader :preference
        sig { returns(String) }
        attr_reader :value
      end
      sig { returns(T::Boolean) }
      attr_reader :available
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class UsBankAccount < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        sig { returns(String) }
        attr_reader :preference
        sig { returns(String) }
        attr_reader :value
      end
      sig { returns(T::Boolean) }
      attr_reader :available
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class WechatPay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        sig { returns(String) }
        attr_reader :preference
        sig { returns(String) }
        attr_reader :value
      end
      sig { returns(T::Boolean) }
      attr_reader :available
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Zip < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        sig { returns(String) }
        attr_reader :preference
        sig { returns(String) }
        attr_reader :value
      end
      sig { returns(T::Boolean) }
      attr_reader :available
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    sig { returns(AcssDebit) }
    # Attribute for field acss_debit
    attr_reader :acss_debit
    sig { returns(T::Boolean) }
    # Whether the configuration can be used for new payments.
    attr_reader :active
    sig { returns(Affirm) }
    # Attribute for field affirm
    attr_reader :affirm
    sig { returns(AfterpayClearpay) }
    # Attribute for field afterpay_clearpay
    attr_reader :afterpay_clearpay
    sig { returns(Alipay) }
    # Attribute for field alipay
    attr_reader :alipay
    sig { returns(Alma) }
    # Attribute for field alma
    attr_reader :alma
    sig { returns(AmazonPay) }
    # Attribute for field amazon_pay
    attr_reader :amazon_pay
    sig { returns(ApplePay) }
    # Attribute for field apple_pay
    attr_reader :apple_pay
    sig { returns(T.nilable(String)) }
    # For child configs, the Connect application associated with the configuration.
    attr_reader :application
    sig { returns(AuBecsDebit) }
    # Attribute for field au_becs_debit
    attr_reader :au_becs_debit
    sig { returns(BacsDebit) }
    # Attribute for field bacs_debit
    attr_reader :bacs_debit
    sig { returns(Bancontact) }
    # Attribute for field bancontact
    attr_reader :bancontact
    sig { returns(Blik) }
    # Attribute for field blik
    attr_reader :blik
    sig { returns(Boleto) }
    # Attribute for field boleto
    attr_reader :boleto
    sig { returns(Card) }
    # Attribute for field card
    attr_reader :card
    sig { returns(CartesBancaires) }
    # Attribute for field cartes_bancaires
    attr_reader :cartes_bancaires
    sig { returns(Cashapp) }
    # Attribute for field cashapp
    attr_reader :cashapp
    sig { returns(CustomerBalance) }
    # Attribute for field customer_balance
    attr_reader :customer_balance
    sig { returns(Eps) }
    # Attribute for field eps
    attr_reader :eps
    sig { returns(Fpx) }
    # Attribute for field fpx
    attr_reader :fpx
    sig { returns(Giropay) }
    # Attribute for field giropay
    attr_reader :giropay
    sig { returns(GooglePay) }
    # Attribute for field google_pay
    attr_reader :google_pay
    sig { returns(Gopay) }
    # Attribute for field gopay
    attr_reader :gopay
    sig { returns(Grabpay) }
    # Attribute for field grabpay
    attr_reader :grabpay
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(IdBankTransfer) }
    # Attribute for field id_bank_transfer
    attr_reader :id_bank_transfer
    sig { returns(Ideal) }
    # Attribute for field ideal
    attr_reader :ideal
    sig { returns(T::Boolean) }
    # The default configuration is used whenever a payment method configuration is not specified.
    attr_reader :is_default
    sig { returns(Jcb) }
    # Attribute for field jcb
    attr_reader :jcb
    sig { returns(Klarna) }
    # Attribute for field klarna
    attr_reader :klarna
    sig { returns(Konbini) }
    # Attribute for field konbini
    attr_reader :konbini
    sig { returns(Link) }
    # Attribute for field link
    attr_reader :link
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(Mobilepay) }
    # Attribute for field mobilepay
    attr_reader :mobilepay
    sig { returns(Multibanco) }
    # Attribute for field multibanco
    attr_reader :multibanco
    sig { returns(String) }
    # The configuration's name.
    attr_reader :name
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(Oxxo) }
    # Attribute for field oxxo
    attr_reader :oxxo
    sig { returns(P24) }
    # Attribute for field p24
    attr_reader :p24
    sig { returns(T.nilable(String)) }
    # For child configs, the configuration's parent configuration.
    attr_reader :parent
    sig { returns(Paynow) }
    # Attribute for field paynow
    attr_reader :paynow
    sig { returns(Paypal) }
    # Attribute for field paypal
    attr_reader :paypal
    sig { returns(Payto) }
    # Attribute for field payto
    attr_reader :payto
    sig { returns(Promptpay) }
    # Attribute for field promptpay
    attr_reader :promptpay
    sig { returns(Qris) }
    # Attribute for field qris
    attr_reader :qris
    sig { returns(RevolutPay) }
    # Attribute for field revolut_pay
    attr_reader :revolut_pay
    sig { returns(SepaDebit) }
    # Attribute for field sepa_debit
    attr_reader :sepa_debit
    sig { returns(Shopeepay) }
    # Attribute for field shopeepay
    attr_reader :shopeepay
    sig { returns(Sofort) }
    # Attribute for field sofort
    attr_reader :sofort
    sig { returns(Swish) }
    # Attribute for field swish
    attr_reader :swish
    sig { returns(Twint) }
    # Attribute for field twint
    attr_reader :twint
    sig { returns(UsBankAccount) }
    # Attribute for field us_bank_account
    attr_reader :us_bank_account
    sig { returns(WechatPay) }
    # Attribute for field wechat_pay
    attr_reader :wechat_pay
    sig { returns(Zip) }
    # Attribute for field zip
    attr_reader :zip
  end
end