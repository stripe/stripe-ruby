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
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class Affirm < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class AfterpayClearpay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class Alipay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class Alma < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class AmazonPay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class ApplePay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class AuBecsDebit < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class BacsDebit < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class Bancontact < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class Billie < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class Blik < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class Boleto < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class Card < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class CartesBancaires < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class Cashapp < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class CustomerBalance < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class Eps < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class Fpx < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class Giropay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class GooglePay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class Grabpay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class Ideal < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class Jcb < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class KakaoPay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class Klarna < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class Konbini < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class KrCard < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class Link < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class Mobilepay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class Multibanco < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class NaverPay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class NzBankAccount < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class Oxxo < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class P24 < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class PayByBank < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class Payco < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class Paynow < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class Paypal < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class Pix < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class Promptpay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class RevolutPay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class SamsungPay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class Satispay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class SepaDebit < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class Sofort < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class Swish < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class Twint < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class UsBankAccount < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class WechatPay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class Zip < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        attr_reader :overridable
        # The account's display preference.
        attr_reader :preference
        # The effective display preference value.
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      attr_reader :available
      # Attribute for field display_preference
      attr_reader :display_preference
    end

    class ListParams < Stripe::RequestParams
      # The Connect application to filter by.
      attr_accessor :application
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after

      def initialize(
        application: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        starting_after: nil
      )
        @application = application
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @starting_after = starting_after
      end
    end

    class CreateParams < Stripe::RequestParams
      class AcssDebit < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Affirm < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class AfterpayClearpay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Alipay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Alma < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class AmazonPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class ApplePay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class ApplePayLater < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class AuBecsDebit < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class BacsDebit < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Bancontact < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Billie < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Blik < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Boleto < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Card < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class CartesBancaires < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Cashapp < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class CustomerBalance < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Eps < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Fpx < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Giropay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class GooglePay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Grabpay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Ideal < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Jcb < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class KakaoPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Klarna < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Konbini < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class KrCard < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Link < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Mobilepay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Multibanco < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class NaverPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class NzBankAccount < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Oxxo < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class P24 < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class PayByBank < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Payco < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Paynow < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Paypal < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Pix < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Promptpay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class RevolutPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class SamsungPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Satispay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class SepaDebit < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Sofort < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Swish < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Twint < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class UsBankAccount < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class WechatPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Zip < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end
      # Canadian pre-authorized debit payments, check this [page](https://stripe.com/docs/payments/acss-debit) for more details like country availability.
      attr_accessor :acss_debit
      # [Affirm](https://www.affirm.com/) gives your customers a way to split purchases over a series of payments. Depending on the purchase, they can pay with four interest-free payments (Split Pay) or pay over a longer term (Installments), which might include interest. Check this [page](https://stripe.com/docs/payments/affirm) for more details like country availability.
      attr_accessor :affirm
      # Afterpay gives your customers a way to pay for purchases in installments, check this [page](https://stripe.com/docs/payments/afterpay-clearpay) for more details like country availability. Afterpay is particularly popular among businesses selling fashion, beauty, and sports products.
      attr_accessor :afterpay_clearpay
      # Alipay is a digital wallet in China that has more than a billion active users worldwide. Alipay users can pay on the web or on a mobile device using login credentials or their Alipay app. Alipay has a low dispute rate and reduces fraud by authenticating payments using the customer's login credentials. Check this [page](https://stripe.com/docs/payments/alipay) for more details.
      attr_accessor :alipay
      # Alma is a Buy Now, Pay Later payment method that offers customers the ability to pay in 2, 3, or 4 installments.
      attr_accessor :alma
      # Amazon Pay is a wallet payment method that lets your customers check out the same way as on Amazon.
      attr_accessor :amazon_pay
      # Stripe users can accept [Apple Pay](https://stripe.com/payments/apple-pay) in iOS applications in iOS 9 and later, and on the web in Safari starting with iOS 10 or macOS Sierra. There are no additional fees to process Apple Pay payments, and the [pricing](https://stripe.com/pricing) is the same as other card transactions. Check this [page](https://stripe.com/docs/apple-pay) for more details.
      attr_accessor :apple_pay
      # Apple Pay Later, a payment method for customers to buy now and pay later, gives your customers a way to split purchases into four installments across six weeks.
      attr_accessor :apple_pay_later
      # Stripe users in Australia can accept Bulk Electronic Clearing System (BECS) direct debit payments from customers with an Australian bank account. Check this [page](https://stripe.com/docs/payments/au-becs-debit) for more details.
      attr_accessor :au_becs_debit
      # Stripe users in the UK can accept Bacs Direct Debit payments from customers with a UK bank account, check this [page](https://stripe.com/docs/payments/payment-methods/bacs-debit) for more details.
      attr_accessor :bacs_debit
      # Bancontact is the most popular online payment method in Belgium, with over 15 million cards in circulation. [Customers](https://stripe.com/docs/api/customers) use a Bancontact card or mobile app linked to a Belgian bank account to make online payments that are secure, guaranteed, and confirmed immediately. Check this [page](https://stripe.com/docs/payments/bancontact) for more details.
      attr_accessor :bancontact
      # Billie is a [single-use](https://docs.stripe.com/payments/payment-methods#usage) payment method that offers businesses Pay by Invoice where they offer payment terms ranging from 7-120 days. Customers are redirected from your website or app, authorize the payment with Billie, then return to your website or app. You get [immediate notification](/payments/payment-methods#payment-notification) of whether the payment succeeded or failed.
      attr_accessor :billie
      # BLIK is a [single use](https://stripe.com/docs/payments/payment-methods#usage) payment method that requires customers to authenticate their payments. When customers want to pay online using BLIK, they request a six-digit code from their banking application and enter it into the payment collection form. Check this [page](https://stripe.com/docs/payments/blik) for more details.
      attr_accessor :blik
      # Boleto is an official (regulated by the Central Bank of Brazil) payment method in Brazil. Check this [page](https://stripe.com/docs/payments/boleto) for more details.
      attr_accessor :boleto
      # Cards are a popular way for consumers and businesses to pay online or in person. Stripe supports global and local card networks.
      attr_accessor :card
      # Cartes Bancaires is France's local card network. More than 95% of these cards are co-branded with either Visa or Mastercard, meaning you can process these cards over either Cartes Bancaires or the Visa or Mastercard networks. Check this [page](https://stripe.com/docs/payments/cartes-bancaires) for more details.
      attr_accessor :cartes_bancaires
      # Cash App is a popular consumer app in the US that allows customers to bank, invest, send, and receive money using their digital wallet. Check this [page](https://stripe.com/docs/payments/cash-app-pay) for more details.
      attr_accessor :cashapp
      # Uses a customer’s [cash balance](https://stripe.com/docs/payments/customer-balance) for the payment. The cash balance can be funded via a bank transfer. Check this [page](https://stripe.com/docs/payments/bank-transfers) for more details.
      attr_accessor :customer_balance
      # EPS is an Austria-based payment method that allows customers to complete transactions online using their bank credentials. EPS is supported by all Austrian banks and is accepted by over 80% of Austrian online retailers. Check this [page](https://stripe.com/docs/payments/eps) for more details.
      attr_accessor :eps
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Financial Process Exchange (FPX) is a Malaysia-based payment method that allows customers to complete transactions online using their bank credentials. Bank Negara Malaysia (BNM), the Central Bank of Malaysia, and eleven other major Malaysian financial institutions are members of the PayNet Group, which owns and operates FPX. It is one of the most popular online payment methods in Malaysia, with nearly 90 million transactions in 2018 according to BNM. Check this [page](https://stripe.com/docs/payments/fpx) for more details.
      attr_accessor :fpx
      # giropay is a German payment method based on online banking, introduced in 2006. It allows customers to complete transactions online using their online banking environment, with funds debited from their bank account. Depending on their bank, customers confirm payments on giropay using a second factor of authentication or a PIN. giropay accounts for 10% of online checkouts in Germany. Check this [page](https://stripe.com/docs/payments/giropay) for more details.
      attr_accessor :giropay
      # Google Pay allows customers to make payments in your app or website using any credit or debit card saved to their Google Account, including those from Google Play, YouTube, Chrome, or an Android device. Use the Google Pay API to request any credit or debit card stored in your customer's Google account. Check this [page](https://stripe.com/docs/google-pay) for more details.
      attr_accessor :google_pay
      # GrabPay is a payment method developed by [Grab](https://www.grab.com/sg/consumer/finance/pay/). GrabPay is a digital wallet - customers maintain a balance in their wallets that they pay out with. Check this [page](https://stripe.com/docs/payments/grabpay) for more details.
      attr_accessor :grabpay
      # iDEAL is a Netherlands-based payment method that allows customers to complete transactions online using their bank credentials. All major Dutch banks are members of Currence, the scheme that operates iDEAL, making it the most popular online payment method in the Netherlands with a share of online transactions close to 55%. Check this [page](https://stripe.com/docs/payments/ideal) for more details.
      attr_accessor :ideal
      # JCB is a credit card company based in Japan. JCB is currently available in Japan to businesses approved by JCB, and available to all businesses in Australia, Canada, Hong Kong, Japan, New Zealand, Singapore, Switzerland, United Kingdom, United States, and all countries in the European Economic Area except Iceland. Check this [page](https://support.stripe.com/questions/accepting-japan-credit-bureau-%28jcb%29-payments) for more details.
      attr_accessor :jcb
      # Kakao Pay is a popular local wallet available in South Korea.
      attr_accessor :kakao_pay
      # Klarna gives customers a range of [payment options](https://stripe.com/docs/payments/klarna#payment-options) during checkout. Available payment options vary depending on the customer's billing address and the transaction amount. These payment options make it convenient for customers to purchase items in all price ranges. Check this [page](https://stripe.com/docs/payments/klarna) for more details.
      attr_accessor :klarna
      # Konbini allows customers in Japan to pay for bills and online purchases at convenience stores with cash. Check this [page](https://stripe.com/docs/payments/konbini) for more details.
      attr_accessor :konbini
      # Korean cards let users pay using locally issued cards from South Korea.
      attr_accessor :kr_card
      # [Link](https://stripe.com/docs/payments/link) is a payment method network. With Link, users save their payment details once, then reuse that information to pay with one click for any business on the network.
      attr_accessor :link
      # MobilePay is a [single-use](https://stripe.com/docs/payments/payment-methods#usage) card wallet payment method used in Denmark and Finland. It allows customers to [authenticate and approve](https://stripe.com/docs/payments/payment-methods#customer-actions) payments using the MobilePay app. Check this [page](https://stripe.com/docs/payments/mobilepay) for more details.
      attr_accessor :mobilepay
      # Stripe users in Europe and the United States can accept Multibanco payments from customers in Portugal using [Sources](https://stripe.com/docs/sources)—a single integration path for creating payments using any supported method.
      attr_accessor :multibanco
      # Configuration name.
      attr_accessor :name
      # Naver Pay is a popular local wallet available in South Korea.
      attr_accessor :naver_pay
      # Stripe users in New Zealand can accept Bulk Electronic Clearing System (BECS) direct debit payments from customers with a New Zeland bank account. Check this [page](https://stripe.com/docs/payments/nz-bank-account) for more details.
      attr_accessor :nz_bank_account
      # OXXO is a Mexican chain of convenience stores with thousands of locations across Latin America and represents nearly 20% of online transactions in Mexico. OXXO allows customers to pay bills and online purchases in-store with cash. Check this [page](https://stripe.com/docs/payments/oxxo) for more details.
      attr_accessor :oxxo
      # Przelewy24 is a Poland-based payment method aggregator that allows customers to complete transactions online using bank transfers and other methods. Bank transfers account for 30% of online payments in Poland and Przelewy24 provides a way for customers to pay with over 165 banks. Check this [page](https://stripe.com/docs/payments/p24) for more details.
      attr_accessor :p24
      # Configuration's parent configuration. Specify to create a child configuration.
      attr_accessor :parent
      # Pay by bank is a redirect payment method backed by bank transfers. A customer is redirected to their bank to authorize a bank transfer for a given amount. This removes a lot of the error risks inherent in waiting for the customer to initiate a transfer themselves, and is less expensive than card payments.
      attr_accessor :pay_by_bank
      # PAYCO is a [single-use](https://docs.stripe.com/payments/payment-methods#usage local wallet available in South Korea.
      attr_accessor :payco
      # PayNow is a Singapore-based payment method that allows customers to make a payment using their preferred app from participating banks and participating non-bank financial institutions. Check this [page](https://stripe.com/docs/payments/paynow) for more details.
      attr_accessor :paynow
      # PayPal, a digital wallet popular with customers in Europe, allows your customers worldwide to pay using their PayPal account. Check this [page](https://stripe.com/docs/payments/paypal) for more details.
      attr_accessor :paypal
      # Pix is a payment method popular in Brazil. When paying with Pix, customers authenticate and approve payments by scanning a QR code in their preferred banking app. Check this [page](https://docs.stripe.com/payments/pix) for more details.
      attr_accessor :pix
      # PromptPay is a Thailand-based payment method that allows customers to make a payment using their preferred app from participating banks. Check this [page](https://stripe.com/docs/payments/promptpay) for more details.
      attr_accessor :promptpay
      # Revolut Pay, developed by Revolut, a global finance app, is a digital wallet payment method. Revolut Pay uses the customer’s stored balance or cards to fund the payment, and offers the option for non-Revolut customers to save their details after their first purchase.
      attr_accessor :revolut_pay
      # Samsung Pay is a [single-use](https://docs.stripe.com/payments/payment-methods#usage local wallet available in South Korea.
      attr_accessor :samsung_pay
      # Satispay is a [single-use](https://docs.stripe.com/payments/payment-methods#usage) payment method where customers are required to [authenticate](/payments/payment-methods#customer-actions) their payment. Customers pay by being redirected from your website or app, authorizing the payment with Satispay, then returning to your website or app. You get [immediate notification](/payments/payment-methods#payment-notification) of whether the payment succeeded or failed.
      attr_accessor :satispay
      # The [Single Euro Payments Area (SEPA)](https://en.wikipedia.org/wiki/Single_Euro_Payments_Area) is an initiative of the European Union to simplify payments within and across member countries. SEPA established and enforced banking standards to allow for the direct debiting of every EUR-denominated bank account within the SEPA region, check this [page](https://stripe.com/docs/payments/sepa-debit) for more details.
      attr_accessor :sepa_debit
      # Stripe users in Europe and the United States can use the [Payment Intents API](https://stripe.com/docs/payments/payment-intents)—a single integration path for creating payments using any supported method—to accept [Sofort](https://www.sofort.com/) payments from customers. Check this [page](https://stripe.com/docs/payments/sofort) for more details.
      attr_accessor :sofort
      # Swish is a [real-time](https://stripe.com/docs/payments/real-time) payment method popular in Sweden. It allows customers to [authenticate and approve](https://stripe.com/docs/payments/payment-methods#customer-actions) payments using the Swish mobile app and the Swedish BankID mobile app. Check this [page](https://stripe.com/docs/payments/swish) for more details.
      attr_accessor :swish
      # Twint is a payment method popular in Switzerland. It allows customers to pay using their mobile phone. Check this [page](https://docs.stripe.com/payments/twint) for more details.
      attr_accessor :twint
      # Stripe users in the United States can accept ACH direct debit payments from customers with a US bank account using the Automated Clearing House (ACH) payments system operated by Nacha. Check this [page](https://stripe.com/docs/payments/ach-direct-debit) for more details.
      attr_accessor :us_bank_account
      # WeChat, owned by Tencent, is China's leading mobile app with over 1 billion monthly active users. Chinese consumers can use WeChat Pay to pay for goods and services inside of businesses' apps and websites. WeChat Pay users buy most frequently in gaming, e-commerce, travel, online education, and food/nutrition. Check this [page](https://stripe.com/docs/payments/wechat-pay) for more details.
      attr_accessor :wechat_pay
      # Zip gives your customers a way to split purchases over a series of payments. Check this [page](https://stripe.com/docs/payments/zip) for more details like country availability.
      attr_accessor :zip

      def initialize(
        acss_debit: nil,
        affirm: nil,
        afterpay_clearpay: nil,
        alipay: nil,
        alma: nil,
        amazon_pay: nil,
        apple_pay: nil,
        apple_pay_later: nil,
        au_becs_debit: nil,
        bacs_debit: nil,
        bancontact: nil,
        billie: nil,
        blik: nil,
        boleto: nil,
        card: nil,
        cartes_bancaires: nil,
        cashapp: nil,
        customer_balance: nil,
        eps: nil,
        expand: nil,
        fpx: nil,
        giropay: nil,
        google_pay: nil,
        grabpay: nil,
        ideal: nil,
        jcb: nil,
        kakao_pay: nil,
        klarna: nil,
        konbini: nil,
        kr_card: nil,
        link: nil,
        mobilepay: nil,
        multibanco: nil,
        name: nil,
        naver_pay: nil,
        nz_bank_account: nil,
        oxxo: nil,
        p24: nil,
        parent: nil,
        pay_by_bank: nil,
        payco: nil,
        paynow: nil,
        paypal: nil,
        pix: nil,
        promptpay: nil,
        revolut_pay: nil,
        samsung_pay: nil,
        satispay: nil,
        sepa_debit: nil,
        sofort: nil,
        swish: nil,
        twint: nil,
        us_bank_account: nil,
        wechat_pay: nil,
        zip: nil
      )
        @acss_debit = acss_debit
        @affirm = affirm
        @afterpay_clearpay = afterpay_clearpay
        @alipay = alipay
        @alma = alma
        @amazon_pay = amazon_pay
        @apple_pay = apple_pay
        @apple_pay_later = apple_pay_later
        @au_becs_debit = au_becs_debit
        @bacs_debit = bacs_debit
        @bancontact = bancontact
        @billie = billie
        @blik = blik
        @boleto = boleto
        @card = card
        @cartes_bancaires = cartes_bancaires
        @cashapp = cashapp
        @customer_balance = customer_balance
        @eps = eps
        @expand = expand
        @fpx = fpx
        @giropay = giropay
        @google_pay = google_pay
        @grabpay = grabpay
        @ideal = ideal
        @jcb = jcb
        @kakao_pay = kakao_pay
        @klarna = klarna
        @konbini = konbini
        @kr_card = kr_card
        @link = link
        @mobilepay = mobilepay
        @multibanco = multibanco
        @name = name
        @naver_pay = naver_pay
        @nz_bank_account = nz_bank_account
        @oxxo = oxxo
        @p24 = p24
        @parent = parent
        @pay_by_bank = pay_by_bank
        @payco = payco
        @paynow = paynow
        @paypal = paypal
        @pix = pix
        @promptpay = promptpay
        @revolut_pay = revolut_pay
        @samsung_pay = samsung_pay
        @satispay = satispay
        @sepa_debit = sepa_debit
        @sofort = sofort
        @swish = swish
        @twint = twint
        @us_bank_account = us_bank_account
        @wechat_pay = wechat_pay
        @zip = zip
      end
    end

    class UpdateParams < Stripe::RequestParams
      class AcssDebit < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Affirm < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class AfterpayClearpay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Alipay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Alma < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class AmazonPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class ApplePay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class ApplePayLater < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class AuBecsDebit < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class BacsDebit < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Bancontact < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Billie < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Blik < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Boleto < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Card < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class CartesBancaires < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Cashapp < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class CustomerBalance < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Eps < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Fpx < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Giropay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class GooglePay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Grabpay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Ideal < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Jcb < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class KakaoPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Klarna < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Konbini < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class KrCard < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Link < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Mobilepay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Multibanco < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class NaverPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class NzBankAccount < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Oxxo < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class P24 < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class PayByBank < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Payco < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Paynow < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Paypal < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Pix < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Promptpay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class RevolutPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class SamsungPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Satispay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class SepaDebit < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Sofort < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Swish < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Twint < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class UsBankAccount < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class WechatPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end

      class Zip < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          attr_accessor :preference

          def initialize(preference: nil)
            @preference = preference
          end
        end
        # Whether or not the payment method should be displayed.
        attr_accessor :display_preference

        def initialize(display_preference: nil)
          @display_preference = display_preference
        end
      end
      # Canadian pre-authorized debit payments, check this [page](https://stripe.com/docs/payments/acss-debit) for more details like country availability.
      attr_accessor :acss_debit
      # Whether the configuration can be used for new payments.
      attr_accessor :active
      # [Affirm](https://www.affirm.com/) gives your customers a way to split purchases over a series of payments. Depending on the purchase, they can pay with four interest-free payments (Split Pay) or pay over a longer term (Installments), which might include interest. Check this [page](https://stripe.com/docs/payments/affirm) for more details like country availability.
      attr_accessor :affirm
      # Afterpay gives your customers a way to pay for purchases in installments, check this [page](https://stripe.com/docs/payments/afterpay-clearpay) for more details like country availability. Afterpay is particularly popular among businesses selling fashion, beauty, and sports products.
      attr_accessor :afterpay_clearpay
      # Alipay is a digital wallet in China that has more than a billion active users worldwide. Alipay users can pay on the web or on a mobile device using login credentials or their Alipay app. Alipay has a low dispute rate and reduces fraud by authenticating payments using the customer's login credentials. Check this [page](https://stripe.com/docs/payments/alipay) for more details.
      attr_accessor :alipay
      # Alma is a Buy Now, Pay Later payment method that offers customers the ability to pay in 2, 3, or 4 installments.
      attr_accessor :alma
      # Amazon Pay is a wallet payment method that lets your customers check out the same way as on Amazon.
      attr_accessor :amazon_pay
      # Stripe users can accept [Apple Pay](https://stripe.com/payments/apple-pay) in iOS applications in iOS 9 and later, and on the web in Safari starting with iOS 10 or macOS Sierra. There are no additional fees to process Apple Pay payments, and the [pricing](https://stripe.com/pricing) is the same as other card transactions. Check this [page](https://stripe.com/docs/apple-pay) for more details.
      attr_accessor :apple_pay
      # Apple Pay Later, a payment method for customers to buy now and pay later, gives your customers a way to split purchases into four installments across six weeks.
      attr_accessor :apple_pay_later
      # Stripe users in Australia can accept Bulk Electronic Clearing System (BECS) direct debit payments from customers with an Australian bank account. Check this [page](https://stripe.com/docs/payments/au-becs-debit) for more details.
      attr_accessor :au_becs_debit
      # Stripe users in the UK can accept Bacs Direct Debit payments from customers with a UK bank account, check this [page](https://stripe.com/docs/payments/payment-methods/bacs-debit) for more details.
      attr_accessor :bacs_debit
      # Bancontact is the most popular online payment method in Belgium, with over 15 million cards in circulation. [Customers](https://stripe.com/docs/api/customers) use a Bancontact card or mobile app linked to a Belgian bank account to make online payments that are secure, guaranteed, and confirmed immediately. Check this [page](https://stripe.com/docs/payments/bancontact) for more details.
      attr_accessor :bancontact
      # Billie is a [single-use](https://docs.stripe.com/payments/payment-methods#usage) payment method that offers businesses Pay by Invoice where they offer payment terms ranging from 7-120 days. Customers are redirected from your website or app, authorize the payment with Billie, then return to your website or app. You get [immediate notification](/payments/payment-methods#payment-notification) of whether the payment succeeded or failed.
      attr_accessor :billie
      # BLIK is a [single use](https://stripe.com/docs/payments/payment-methods#usage) payment method that requires customers to authenticate their payments. When customers want to pay online using BLIK, they request a six-digit code from their banking application and enter it into the payment collection form. Check this [page](https://stripe.com/docs/payments/blik) for more details.
      attr_accessor :blik
      # Boleto is an official (regulated by the Central Bank of Brazil) payment method in Brazil. Check this [page](https://stripe.com/docs/payments/boleto) for more details.
      attr_accessor :boleto
      # Cards are a popular way for consumers and businesses to pay online or in person. Stripe supports global and local card networks.
      attr_accessor :card
      # Cartes Bancaires is France's local card network. More than 95% of these cards are co-branded with either Visa or Mastercard, meaning you can process these cards over either Cartes Bancaires or the Visa or Mastercard networks. Check this [page](https://stripe.com/docs/payments/cartes-bancaires) for more details.
      attr_accessor :cartes_bancaires
      # Cash App is a popular consumer app in the US that allows customers to bank, invest, send, and receive money using their digital wallet. Check this [page](https://stripe.com/docs/payments/cash-app-pay) for more details.
      attr_accessor :cashapp
      # Uses a customer’s [cash balance](https://stripe.com/docs/payments/customer-balance) for the payment. The cash balance can be funded via a bank transfer. Check this [page](https://stripe.com/docs/payments/bank-transfers) for more details.
      attr_accessor :customer_balance
      # EPS is an Austria-based payment method that allows customers to complete transactions online using their bank credentials. EPS is supported by all Austrian banks and is accepted by over 80% of Austrian online retailers. Check this [page](https://stripe.com/docs/payments/eps) for more details.
      attr_accessor :eps
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Financial Process Exchange (FPX) is a Malaysia-based payment method that allows customers to complete transactions online using their bank credentials. Bank Negara Malaysia (BNM), the Central Bank of Malaysia, and eleven other major Malaysian financial institutions are members of the PayNet Group, which owns and operates FPX. It is one of the most popular online payment methods in Malaysia, with nearly 90 million transactions in 2018 according to BNM. Check this [page](https://stripe.com/docs/payments/fpx) for more details.
      attr_accessor :fpx
      # giropay is a German payment method based on online banking, introduced in 2006. It allows customers to complete transactions online using their online banking environment, with funds debited from their bank account. Depending on their bank, customers confirm payments on giropay using a second factor of authentication or a PIN. giropay accounts for 10% of online checkouts in Germany. Check this [page](https://stripe.com/docs/payments/giropay) for more details.
      attr_accessor :giropay
      # Google Pay allows customers to make payments in your app or website using any credit or debit card saved to their Google Account, including those from Google Play, YouTube, Chrome, or an Android device. Use the Google Pay API to request any credit or debit card stored in your customer's Google account. Check this [page](https://stripe.com/docs/google-pay) for more details.
      attr_accessor :google_pay
      # GrabPay is a payment method developed by [Grab](https://www.grab.com/sg/consumer/finance/pay/). GrabPay is a digital wallet - customers maintain a balance in their wallets that they pay out with. Check this [page](https://stripe.com/docs/payments/grabpay) for more details.
      attr_accessor :grabpay
      # iDEAL is a Netherlands-based payment method that allows customers to complete transactions online using their bank credentials. All major Dutch banks are members of Currence, the scheme that operates iDEAL, making it the most popular online payment method in the Netherlands with a share of online transactions close to 55%. Check this [page](https://stripe.com/docs/payments/ideal) for more details.
      attr_accessor :ideal
      # JCB is a credit card company based in Japan. JCB is currently available in Japan to businesses approved by JCB, and available to all businesses in Australia, Canada, Hong Kong, Japan, New Zealand, Singapore, Switzerland, United Kingdom, United States, and all countries in the European Economic Area except Iceland. Check this [page](https://support.stripe.com/questions/accepting-japan-credit-bureau-%28jcb%29-payments) for more details.
      attr_accessor :jcb
      # Kakao Pay is a popular local wallet available in South Korea.
      attr_accessor :kakao_pay
      # Klarna gives customers a range of [payment options](https://stripe.com/docs/payments/klarna#payment-options) during checkout. Available payment options vary depending on the customer's billing address and the transaction amount. These payment options make it convenient for customers to purchase items in all price ranges. Check this [page](https://stripe.com/docs/payments/klarna) for more details.
      attr_accessor :klarna
      # Konbini allows customers in Japan to pay for bills and online purchases at convenience stores with cash. Check this [page](https://stripe.com/docs/payments/konbini) for more details.
      attr_accessor :konbini
      # Korean cards let users pay using locally issued cards from South Korea.
      attr_accessor :kr_card
      # [Link](https://stripe.com/docs/payments/link) is a payment method network. With Link, users save their payment details once, then reuse that information to pay with one click for any business on the network.
      attr_accessor :link
      # MobilePay is a [single-use](https://stripe.com/docs/payments/payment-methods#usage) card wallet payment method used in Denmark and Finland. It allows customers to [authenticate and approve](https://stripe.com/docs/payments/payment-methods#customer-actions) payments using the MobilePay app. Check this [page](https://stripe.com/docs/payments/mobilepay) for more details.
      attr_accessor :mobilepay
      # Stripe users in Europe and the United States can accept Multibanco payments from customers in Portugal using [Sources](https://stripe.com/docs/sources)—a single integration path for creating payments using any supported method.
      attr_accessor :multibanco
      # Configuration name.
      attr_accessor :name
      # Naver Pay is a popular local wallet available in South Korea.
      attr_accessor :naver_pay
      # Stripe users in New Zealand can accept Bulk Electronic Clearing System (BECS) direct debit payments from customers with a New Zeland bank account. Check this [page](https://stripe.com/docs/payments/nz-bank-account) for more details.
      attr_accessor :nz_bank_account
      # OXXO is a Mexican chain of convenience stores with thousands of locations across Latin America and represents nearly 20% of online transactions in Mexico. OXXO allows customers to pay bills and online purchases in-store with cash. Check this [page](https://stripe.com/docs/payments/oxxo) for more details.
      attr_accessor :oxxo
      # Przelewy24 is a Poland-based payment method aggregator that allows customers to complete transactions online using bank transfers and other methods. Bank transfers account for 30% of online payments in Poland and Przelewy24 provides a way for customers to pay with over 165 banks. Check this [page](https://stripe.com/docs/payments/p24) for more details.
      attr_accessor :p24
      # Pay by bank is a redirect payment method backed by bank transfers. A customer is redirected to their bank to authorize a bank transfer for a given amount. This removes a lot of the error risks inherent in waiting for the customer to initiate a transfer themselves, and is less expensive than card payments.
      attr_accessor :pay_by_bank
      # PAYCO is a [single-use](https://docs.stripe.com/payments/payment-methods#usage local wallet available in South Korea.
      attr_accessor :payco
      # PayNow is a Singapore-based payment method that allows customers to make a payment using their preferred app from participating banks and participating non-bank financial institutions. Check this [page](https://stripe.com/docs/payments/paynow) for more details.
      attr_accessor :paynow
      # PayPal, a digital wallet popular with customers in Europe, allows your customers worldwide to pay using their PayPal account. Check this [page](https://stripe.com/docs/payments/paypal) for more details.
      attr_accessor :paypal
      # Pix is a payment method popular in Brazil. When paying with Pix, customers authenticate and approve payments by scanning a QR code in their preferred banking app. Check this [page](https://docs.stripe.com/payments/pix) for more details.
      attr_accessor :pix
      # PromptPay is a Thailand-based payment method that allows customers to make a payment using their preferred app from participating banks. Check this [page](https://stripe.com/docs/payments/promptpay) for more details.
      attr_accessor :promptpay
      # Revolut Pay, developed by Revolut, a global finance app, is a digital wallet payment method. Revolut Pay uses the customer’s stored balance or cards to fund the payment, and offers the option for non-Revolut customers to save their details after their first purchase.
      attr_accessor :revolut_pay
      # Samsung Pay is a [single-use](https://docs.stripe.com/payments/payment-methods#usage local wallet available in South Korea.
      attr_accessor :samsung_pay
      # Satispay is a [single-use](https://docs.stripe.com/payments/payment-methods#usage) payment method where customers are required to [authenticate](/payments/payment-methods#customer-actions) their payment. Customers pay by being redirected from your website or app, authorizing the payment with Satispay, then returning to your website or app. You get [immediate notification](/payments/payment-methods#payment-notification) of whether the payment succeeded or failed.
      attr_accessor :satispay
      # The [Single Euro Payments Area (SEPA)](https://en.wikipedia.org/wiki/Single_Euro_Payments_Area) is an initiative of the European Union to simplify payments within and across member countries. SEPA established and enforced banking standards to allow for the direct debiting of every EUR-denominated bank account within the SEPA region, check this [page](https://stripe.com/docs/payments/sepa-debit) for more details.
      attr_accessor :sepa_debit
      # Stripe users in Europe and the United States can use the [Payment Intents API](https://stripe.com/docs/payments/payment-intents)—a single integration path for creating payments using any supported method—to accept [Sofort](https://www.sofort.com/) payments from customers. Check this [page](https://stripe.com/docs/payments/sofort) for more details.
      attr_accessor :sofort
      # Swish is a [real-time](https://stripe.com/docs/payments/real-time) payment method popular in Sweden. It allows customers to [authenticate and approve](https://stripe.com/docs/payments/payment-methods#customer-actions) payments using the Swish mobile app and the Swedish BankID mobile app. Check this [page](https://stripe.com/docs/payments/swish) for more details.
      attr_accessor :swish
      # Twint is a payment method popular in Switzerland. It allows customers to pay using their mobile phone. Check this [page](https://docs.stripe.com/payments/twint) for more details.
      attr_accessor :twint
      # Stripe users in the United States can accept ACH direct debit payments from customers with a US bank account using the Automated Clearing House (ACH) payments system operated by Nacha. Check this [page](https://stripe.com/docs/payments/ach-direct-debit) for more details.
      attr_accessor :us_bank_account
      # WeChat, owned by Tencent, is China's leading mobile app with over 1 billion monthly active users. Chinese consumers can use WeChat Pay to pay for goods and services inside of businesses' apps and websites. WeChat Pay users buy most frequently in gaming, e-commerce, travel, online education, and food/nutrition. Check this [page](https://stripe.com/docs/payments/wechat-pay) for more details.
      attr_accessor :wechat_pay
      # Zip gives your customers a way to split purchases over a series of payments. Check this [page](https://stripe.com/docs/payments/zip) for more details like country availability.
      attr_accessor :zip

      def initialize(
        acss_debit: nil,
        active: nil,
        affirm: nil,
        afterpay_clearpay: nil,
        alipay: nil,
        alma: nil,
        amazon_pay: nil,
        apple_pay: nil,
        apple_pay_later: nil,
        au_becs_debit: nil,
        bacs_debit: nil,
        bancontact: nil,
        billie: nil,
        blik: nil,
        boleto: nil,
        card: nil,
        cartes_bancaires: nil,
        cashapp: nil,
        customer_balance: nil,
        eps: nil,
        expand: nil,
        fpx: nil,
        giropay: nil,
        google_pay: nil,
        grabpay: nil,
        ideal: nil,
        jcb: nil,
        kakao_pay: nil,
        klarna: nil,
        konbini: nil,
        kr_card: nil,
        link: nil,
        mobilepay: nil,
        multibanco: nil,
        name: nil,
        naver_pay: nil,
        nz_bank_account: nil,
        oxxo: nil,
        p24: nil,
        pay_by_bank: nil,
        payco: nil,
        paynow: nil,
        paypal: nil,
        pix: nil,
        promptpay: nil,
        revolut_pay: nil,
        samsung_pay: nil,
        satispay: nil,
        sepa_debit: nil,
        sofort: nil,
        swish: nil,
        twint: nil,
        us_bank_account: nil,
        wechat_pay: nil,
        zip: nil
      )
        @acss_debit = acss_debit
        @active = active
        @affirm = affirm
        @afterpay_clearpay = afterpay_clearpay
        @alipay = alipay
        @alma = alma
        @amazon_pay = amazon_pay
        @apple_pay = apple_pay
        @apple_pay_later = apple_pay_later
        @au_becs_debit = au_becs_debit
        @bacs_debit = bacs_debit
        @bancontact = bancontact
        @billie = billie
        @blik = blik
        @boleto = boleto
        @card = card
        @cartes_bancaires = cartes_bancaires
        @cashapp = cashapp
        @customer_balance = customer_balance
        @eps = eps
        @expand = expand
        @fpx = fpx
        @giropay = giropay
        @google_pay = google_pay
        @grabpay = grabpay
        @ideal = ideal
        @jcb = jcb
        @kakao_pay = kakao_pay
        @klarna = klarna
        @konbini = konbini
        @kr_card = kr_card
        @link = link
        @mobilepay = mobilepay
        @multibanco = multibanco
        @name = name
        @naver_pay = naver_pay
        @nz_bank_account = nz_bank_account
        @oxxo = oxxo
        @p24 = p24
        @pay_by_bank = pay_by_bank
        @payco = payco
        @paynow = paynow
        @paypal = paypal
        @pix = pix
        @promptpay = promptpay
        @revolut_pay = revolut_pay
        @samsung_pay = samsung_pay
        @satispay = satispay
        @sepa_debit = sepa_debit
        @sofort = sofort
        @swish = swish
        @twint = twint
        @us_bank_account = us_bank_account
        @wechat_pay = wechat_pay
        @zip = zip
      end
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
    # Attribute for field billie
    attr_reader :billie
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
    # Attribute for field grabpay
    attr_reader :grabpay
    # Unique identifier for the object.
    attr_reader :id
    # Attribute for field ideal
    attr_reader :ideal
    # The default configuration is used whenever a payment method configuration is not specified.
    attr_reader :is_default
    # Attribute for field jcb
    attr_reader :jcb
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
    # Attribute for field mobilepay
    attr_reader :mobilepay
    # Attribute for field multibanco
    attr_reader :multibanco
    # The configuration's name.
    attr_reader :name
    # Attribute for field naver_pay
    attr_reader :naver_pay
    # Attribute for field nz_bank_account
    attr_reader :nz_bank_account
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # Attribute for field oxxo
    attr_reader :oxxo
    # Attribute for field p24
    attr_reader :p24
    # For child configs, the configuration's parent configuration.
    attr_reader :parent
    # Attribute for field pay_by_bank
    attr_reader :pay_by_bank
    # Attribute for field payco
    attr_reader :payco
    # Attribute for field paynow
    attr_reader :paynow
    # Attribute for field paypal
    attr_reader :paypal
    # Attribute for field pix
    attr_reader :pix
    # Attribute for field promptpay
    attr_reader :promptpay
    # Attribute for field revolut_pay
    attr_reader :revolut_pay
    # Attribute for field samsung_pay
    attr_reader :samsung_pay
    # Attribute for field satispay
    attr_reader :satispay
    # Attribute for field sepa_debit
    attr_reader :sepa_debit
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
    def self.list(params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: "/v1/payment_method_configurations",
        params: params,
        opts: opts
      )
    end

    # Update payment method configuration
    def self.update(configuration, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_method_configurations/%<configuration>s", { configuration: CGI.escape(configuration) }),
        params: params,
        opts: opts
      )
    end
  end
end
