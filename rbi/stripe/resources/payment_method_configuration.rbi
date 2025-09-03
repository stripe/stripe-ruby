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
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class Affirm < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class AfterpayClearpay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class Alipay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class Alma < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class AmazonPay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class ApplePay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class AuBecsDebit < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class BacsDebit < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class Bancontact < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class Billie < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class Blik < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class Boleto < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class Card < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class CartesBancaires < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class Cashapp < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class CustomerBalance < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class Eps < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class Fpx < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class Giropay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class GooglePay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class Grabpay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class Ideal < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class Jcb < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class KakaoPay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class Klarna < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class Konbini < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class KrCard < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class Link < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class Mobilepay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class Multibanco < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class NaverPay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class NzBankAccount < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class Oxxo < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class P24 < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class PayByBank < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class Payco < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class Paynow < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class Paypal < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class Pix < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class Promptpay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class RevolutPay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class SamsungPay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class Satispay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class SepaDebit < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class Sofort < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class Swish < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class Twint < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class UsBankAccount < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class WechatPay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    class Zip < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        def overridable; end
        # The account's display preference.
        sig { returns(String) }
        def preference; end
        # The effective display preference value.
        sig { returns(String) }
        def value; end
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      def available; end
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      def display_preference; end
    end
    # Attribute for field acss_debit
    sig { returns(AcssDebit) }
    def acss_debit; end
    # Whether the configuration can be used for new payments.
    sig { returns(T::Boolean) }
    def active; end
    # Attribute for field affirm
    sig { returns(Affirm) }
    def affirm; end
    # Attribute for field afterpay_clearpay
    sig { returns(AfterpayClearpay) }
    def afterpay_clearpay; end
    # Attribute for field alipay
    sig { returns(Alipay) }
    def alipay; end
    # Attribute for field alma
    sig { returns(Alma) }
    def alma; end
    # Attribute for field amazon_pay
    sig { returns(AmazonPay) }
    def amazon_pay; end
    # Attribute for field apple_pay
    sig { returns(ApplePay) }
    def apple_pay; end
    # For child configs, the Connect application associated with the configuration.
    sig { returns(T.nilable(String)) }
    def application; end
    # Attribute for field au_becs_debit
    sig { returns(AuBecsDebit) }
    def au_becs_debit; end
    # Attribute for field bacs_debit
    sig { returns(BacsDebit) }
    def bacs_debit; end
    # Attribute for field bancontact
    sig { returns(Bancontact) }
    def bancontact; end
    # Attribute for field billie
    sig { returns(Billie) }
    def billie; end
    # Attribute for field blik
    sig { returns(Blik) }
    def blik; end
    # Attribute for field boleto
    sig { returns(Boleto) }
    def boleto; end
    # Attribute for field card
    sig { returns(Card) }
    def card; end
    # Attribute for field cartes_bancaires
    sig { returns(CartesBancaires) }
    def cartes_bancaires; end
    # Attribute for field cashapp
    sig { returns(Cashapp) }
    def cashapp; end
    # Attribute for field customer_balance
    sig { returns(CustomerBalance) }
    def customer_balance; end
    # Attribute for field eps
    sig { returns(Eps) }
    def eps; end
    # Attribute for field fpx
    sig { returns(Fpx) }
    def fpx; end
    # Attribute for field giropay
    sig { returns(Giropay) }
    def giropay; end
    # Attribute for field google_pay
    sig { returns(GooglePay) }
    def google_pay; end
    # Attribute for field grabpay
    sig { returns(Grabpay) }
    def grabpay; end
    # Unique identifier for the object.
    sig { returns(String) }
    def id; end
    # Attribute for field ideal
    sig { returns(Ideal) }
    def ideal; end
    # The default configuration is used whenever a payment method configuration is not specified.
    sig { returns(T::Boolean) }
    def is_default; end
    # Attribute for field jcb
    sig { returns(Jcb) }
    def jcb; end
    # Attribute for field kakao_pay
    sig { returns(KakaoPay) }
    def kakao_pay; end
    # Attribute for field klarna
    sig { returns(Klarna) }
    def klarna; end
    # Attribute for field konbini
    sig { returns(Konbini) }
    def konbini; end
    # Attribute for field kr_card
    sig { returns(KrCard) }
    def kr_card; end
    # Attribute for field link
    sig { returns(Link) }
    def link; end
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    def livemode; end
    # Attribute for field mobilepay
    sig { returns(Mobilepay) }
    def mobilepay; end
    # Attribute for field multibanco
    sig { returns(Multibanco) }
    def multibanco; end
    # The configuration's name.
    sig { returns(String) }
    def name; end
    # Attribute for field naver_pay
    sig { returns(NaverPay) }
    def naver_pay; end
    # Attribute for field nz_bank_account
    sig { returns(NzBankAccount) }
    def nz_bank_account; end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
    # Attribute for field oxxo
    sig { returns(Oxxo) }
    def oxxo; end
    # Attribute for field p24
    sig { returns(P24) }
    def p24; end
    # For child configs, the configuration's parent configuration.
    sig { returns(T.nilable(String)) }
    def parent; end
    # Attribute for field pay_by_bank
    sig { returns(PayByBank) }
    def pay_by_bank; end
    # Attribute for field payco
    sig { returns(Payco) }
    def payco; end
    # Attribute for field paynow
    sig { returns(Paynow) }
    def paynow; end
    # Attribute for field paypal
    sig { returns(Paypal) }
    def paypal; end
    # Attribute for field pix
    sig { returns(Pix) }
    def pix; end
    # Attribute for field promptpay
    sig { returns(Promptpay) }
    def promptpay; end
    # Attribute for field revolut_pay
    sig { returns(RevolutPay) }
    def revolut_pay; end
    # Attribute for field samsung_pay
    sig { returns(SamsungPay) }
    def samsung_pay; end
    # Attribute for field satispay
    sig { returns(Satispay) }
    def satispay; end
    # Attribute for field sepa_debit
    sig { returns(SepaDebit) }
    def sepa_debit; end
    # Attribute for field sofort
    sig { returns(Sofort) }
    def sofort; end
    # Attribute for field swish
    sig { returns(Swish) }
    def swish; end
    # Attribute for field twint
    sig { returns(Twint) }
    def twint; end
    # Attribute for field us_bank_account
    sig { returns(UsBankAccount) }
    def us_bank_account; end
    # Attribute for field wechat_pay
    sig { returns(WechatPay) }
    def wechat_pay; end
    # Attribute for field zip
    sig { returns(Zip) }
    def zip; end
    class ListParams < Stripe::RequestParams
      # The Connect application to filter by.
      sig { returns(T.nilable(String)) }
      def application; end
      sig { params(_application: T.nilable(String)).returns(T.nilable(String)) }
      def application=(_application); end
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(T.nilable(String)) }
      def ending_before; end
      sig { params(_ending_before: T.nilable(String)).returns(T.nilable(String)) }
      def ending_before=(_ending_before); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      def limit; end
      sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def limit=(_limit); end
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      def starting_after; end
      sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
      def starting_after=(_starting_after); end
      sig {
        params(application: T.nilable(String), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
       }
      def initialize(
        application: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        starting_after: nil
      ); end
    end
    class CreateParams < Stripe::RequestParams
      class AcssDebit < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::AcssDebit::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::AcssDebit::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::AcssDebit::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::AcssDebit::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Affirm < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Affirm::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Affirm::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Affirm::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Affirm::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class AfterpayClearpay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::AfterpayClearpay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::AfterpayClearpay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::AfterpayClearpay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::AfterpayClearpay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Alipay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Alipay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Alipay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Alipay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Alipay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Alma < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Alma::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Alma::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Alma::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Alma::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class AmazonPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::AmazonPay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::AmazonPay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::AmazonPay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::AmazonPay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class ApplePay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::ApplePay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::ApplePay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::ApplePay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::ApplePay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class ApplePayLater < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::ApplePayLater::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::ApplePayLater::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::ApplePayLater::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::ApplePayLater::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class AuBecsDebit < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::AuBecsDebit::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::AuBecsDebit::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::AuBecsDebit::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::AuBecsDebit::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class BacsDebit < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::BacsDebit::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::BacsDebit::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::BacsDebit::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::BacsDebit::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Bancontact < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Bancontact::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Bancontact::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Bancontact::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Bancontact::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Billie < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Billie::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Billie::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Billie::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Billie::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Blik < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Blik::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Blik::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Blik::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Blik::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Boleto < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Boleto::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Boleto::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Boleto::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Boleto::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Card < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Card::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Card::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Card::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Card::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class CartesBancaires < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::CartesBancaires::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::CartesBancaires::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::CartesBancaires::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::CartesBancaires::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Cashapp < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Cashapp::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Cashapp::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Cashapp::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Cashapp::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class CustomerBalance < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::CustomerBalance::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::CustomerBalance::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::CustomerBalance::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::CustomerBalance::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Eps < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Eps::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Eps::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Eps::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Eps::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Fpx < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Fpx::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Fpx::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Fpx::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Fpx::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Giropay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Giropay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Giropay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Giropay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Giropay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class GooglePay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::GooglePay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::GooglePay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::GooglePay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::GooglePay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Grabpay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Grabpay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Grabpay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Grabpay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Grabpay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Ideal < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Ideal::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Ideal::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Ideal::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Ideal::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Jcb < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Jcb::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Jcb::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Jcb::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Jcb::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class KakaoPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::KakaoPay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::KakaoPay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::KakaoPay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::KakaoPay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Klarna < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Klarna::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Klarna::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Klarna::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Klarna::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Konbini < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Konbini::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Konbini::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Konbini::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Konbini::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class KrCard < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::KrCard::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::KrCard::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::KrCard::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::KrCard::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Link < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Link::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Link::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Link::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Link::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Mobilepay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Mobilepay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Mobilepay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Mobilepay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Mobilepay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Multibanco < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Multibanco::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Multibanco::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Multibanco::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Multibanco::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class NaverPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::NaverPay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::NaverPay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::NaverPay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::NaverPay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class NzBankAccount < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::NzBankAccount::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::NzBankAccount::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::NzBankAccount::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::NzBankAccount::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Oxxo < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Oxxo::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Oxxo::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Oxxo::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Oxxo::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class P24 < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::P24::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::P24::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::P24::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::P24::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class PayByBank < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::PayByBank::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::PayByBank::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::PayByBank::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::PayByBank::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Payco < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Payco::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Payco::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Payco::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Payco::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Paynow < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Paynow::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Paynow::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Paynow::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Paynow::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Paypal < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Paypal::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Paypal::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Paypal::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Paypal::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Pix < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Pix::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Pix::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Pix::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Pix::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Promptpay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Promptpay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Promptpay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Promptpay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Promptpay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class RevolutPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::RevolutPay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::RevolutPay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::RevolutPay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::RevolutPay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class SamsungPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::SamsungPay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::SamsungPay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::SamsungPay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::SamsungPay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Satispay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Satispay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Satispay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Satispay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Satispay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class SepaDebit < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::SepaDebit::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::SepaDebit::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::SepaDebit::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::SepaDebit::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Sofort < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Sofort::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Sofort::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Sofort::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Sofort::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Swish < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Swish::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Swish::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Swish::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Swish::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Twint < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Twint::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Twint::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Twint::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Twint::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class UsBankAccount < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::UsBankAccount::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::UsBankAccount::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::UsBankAccount::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::UsBankAccount::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class WechatPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::WechatPay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::WechatPay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::WechatPay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::WechatPay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Zip < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Zip::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Zip::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Zip::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Zip::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      # Canadian pre-authorized debit payments, check this [page](https://stripe.com/docs/payments/acss-debit) for more details like country availability.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::AcssDebit)) }
      def acss_debit; end
      sig {
        params(_acss_debit: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::AcssDebit)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::AcssDebit))
       }
      def acss_debit=(_acss_debit); end
      # [Affirm](https://www.affirm.com/) gives your customers a way to split purchases over a series of payments. Depending on the purchase, they can pay with four interest-free payments (Split Pay) or pay over a longer term (Installments), which might include interest. Check this [page](https://stripe.com/docs/payments/affirm) for more details like country availability.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Affirm)) }
      def affirm; end
      sig {
        params(_affirm: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Affirm)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Affirm))
       }
      def affirm=(_affirm); end
      # Afterpay gives your customers a way to pay for purchases in installments, check this [page](https://stripe.com/docs/payments/afterpay-clearpay) for more details like country availability. Afterpay is particularly popular among businesses selling fashion, beauty, and sports products.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::AfterpayClearpay))
       }
      def afterpay_clearpay; end
      sig {
        params(_afterpay_clearpay: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::AfterpayClearpay)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::AfterpayClearpay))
       }
      def afterpay_clearpay=(_afterpay_clearpay); end
      # Alipay is a digital wallet in China that has more than a billion active users worldwide. Alipay users can pay on the web or on a mobile device using login credentials or their Alipay app. Alipay has a low dispute rate and reduces fraud by authenticating payments using the customer's login credentials. Check this [page](https://stripe.com/docs/payments/alipay) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Alipay)) }
      def alipay; end
      sig {
        params(_alipay: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Alipay)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Alipay))
       }
      def alipay=(_alipay); end
      # Alma is a Buy Now, Pay Later payment method that offers customers the ability to pay in 2, 3, or 4 installments.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Alma)) }
      def alma; end
      sig {
        params(_alma: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Alma)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Alma))
       }
      def alma=(_alma); end
      # Amazon Pay is a wallet payment method that lets your customers check out the same way as on Amazon.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::AmazonPay)) }
      def amazon_pay; end
      sig {
        params(_amazon_pay: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::AmazonPay)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::AmazonPay))
       }
      def amazon_pay=(_amazon_pay); end
      # Stripe users can accept [Apple Pay](https://stripe.com/payments/apple-pay) in iOS applications in iOS 9 and later, and on the web in Safari starting with iOS 10 or macOS Sierra. There are no additional fees to process Apple Pay payments, and the [pricing](https://stripe.com/pricing) is the same as other card transactions. Check this [page](https://stripe.com/docs/apple-pay) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::ApplePay)) }
      def apple_pay; end
      sig {
        params(_apple_pay: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::ApplePay)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::ApplePay))
       }
      def apple_pay=(_apple_pay); end
      # Apple Pay Later, a payment method for customers to buy now and pay later, gives your customers a way to split purchases into four installments across six weeks.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::ApplePayLater)) }
      def apple_pay_later; end
      sig {
        params(_apple_pay_later: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::ApplePayLater)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::ApplePayLater))
       }
      def apple_pay_later=(_apple_pay_later); end
      # Stripe users in Australia can accept Bulk Electronic Clearing System (BECS) direct debit payments from customers with an Australian bank account. Check this [page](https://stripe.com/docs/payments/au-becs-debit) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::AuBecsDebit)) }
      def au_becs_debit; end
      sig {
        params(_au_becs_debit: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::AuBecsDebit)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::AuBecsDebit))
       }
      def au_becs_debit=(_au_becs_debit); end
      # Stripe users in the UK can accept Bacs Direct Debit payments from customers with a UK bank account, check this [page](https://stripe.com/docs/payments/payment-methods/bacs-debit) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::BacsDebit)) }
      def bacs_debit; end
      sig {
        params(_bacs_debit: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::BacsDebit)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::BacsDebit))
       }
      def bacs_debit=(_bacs_debit); end
      # Bancontact is the most popular online payment method in Belgium, with over 15 million cards in circulation. [Customers](https://stripe.com/docs/api/customers) use a Bancontact card or mobile app linked to a Belgian bank account to make online payments that are secure, guaranteed, and confirmed immediately. Check this [page](https://stripe.com/docs/payments/bancontact) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Bancontact)) }
      def bancontact; end
      sig {
        params(_bancontact: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Bancontact)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Bancontact))
       }
      def bancontact=(_bancontact); end
      # Billie is a [single-use](https://docs.stripe.com/payments/payment-methods#usage) payment method that offers businesses Pay by Invoice where they offer payment terms ranging from 7-120 days. Customers are redirected from your website or app, authorize the payment with Billie, then return to your website or app. You get [immediate notification](/payments/payment-methods#payment-notification) of whether the payment succeeded or failed.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Billie)) }
      def billie; end
      sig {
        params(_billie: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Billie)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Billie))
       }
      def billie=(_billie); end
      # BLIK is a [single use](https://stripe.com/docs/payments/payment-methods#usage) payment method that requires customers to authenticate their payments. When customers want to pay online using BLIK, they request a six-digit code from their banking application and enter it into the payment collection form. Check this [page](https://stripe.com/docs/payments/blik) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Blik)) }
      def blik; end
      sig {
        params(_blik: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Blik)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Blik))
       }
      def blik=(_blik); end
      # Boleto is an official (regulated by the Central Bank of Brazil) payment method in Brazil. Check this [page](https://stripe.com/docs/payments/boleto) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Boleto)) }
      def boleto; end
      sig {
        params(_boleto: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Boleto)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Boleto))
       }
      def boleto=(_boleto); end
      # Cards are a popular way for consumers and businesses to pay online or in person. Stripe supports global and local card networks.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Card)) }
      def card; end
      sig {
        params(_card: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Card)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Card))
       }
      def card=(_card); end
      # Cartes Bancaires is France's local card network. More than 95% of these cards are co-branded with either Visa or Mastercard, meaning you can process these cards over either Cartes Bancaires or the Visa or Mastercard networks. Check this [page](https://stripe.com/docs/payments/cartes-bancaires) for more details.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::CartesBancaires))
       }
      def cartes_bancaires; end
      sig {
        params(_cartes_bancaires: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::CartesBancaires)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::CartesBancaires))
       }
      def cartes_bancaires=(_cartes_bancaires); end
      # Cash App is a popular consumer app in the US that allows customers to bank, invest, send, and receive money using their digital wallet. Check this [page](https://stripe.com/docs/payments/cash-app-pay) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Cashapp)) }
      def cashapp; end
      sig {
        params(_cashapp: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Cashapp)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Cashapp))
       }
      def cashapp=(_cashapp); end
      # Uses a customer’s [cash balance](https://stripe.com/docs/payments/customer-balance) for the payment. The cash balance can be funded via a bank transfer. Check this [page](https://stripe.com/docs/payments/bank-transfers) for more details.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::CustomerBalance))
       }
      def customer_balance; end
      sig {
        params(_customer_balance: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::CustomerBalance)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::CustomerBalance))
       }
      def customer_balance=(_customer_balance); end
      # EPS is an Austria-based payment method that allows customers to complete transactions online using their bank credentials. EPS is supported by all Austrian banks and is accepted by over 80% of Austrian online retailers. Check this [page](https://stripe.com/docs/payments/eps) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Eps)) }
      def eps; end
      sig {
        params(_eps: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Eps)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Eps))
       }
      def eps=(_eps); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Financial Process Exchange (FPX) is a Malaysia-based payment method that allows customers to complete transactions online using their bank credentials. Bank Negara Malaysia (BNM), the Central Bank of Malaysia, and eleven other major Malaysian financial institutions are members of the PayNet Group, which owns and operates FPX. It is one of the most popular online payment methods in Malaysia, with nearly 90 million transactions in 2018 according to BNM. Check this [page](https://stripe.com/docs/payments/fpx) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Fpx)) }
      def fpx; end
      sig {
        params(_fpx: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Fpx)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Fpx))
       }
      def fpx=(_fpx); end
      # giropay is a German payment method based on online banking, introduced in 2006. It allows customers to complete transactions online using their online banking environment, with funds debited from their bank account. Depending on their bank, customers confirm payments on giropay using a second factor of authentication or a PIN. giropay accounts for 10% of online checkouts in Germany. Check this [page](https://stripe.com/docs/payments/giropay) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Giropay)) }
      def giropay; end
      sig {
        params(_giropay: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Giropay)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Giropay))
       }
      def giropay=(_giropay); end
      # Google Pay allows customers to make payments in your app or website using any credit or debit card saved to their Google Account, including those from Google Play, YouTube, Chrome, or an Android device. Use the Google Pay API to request any credit or debit card stored in your customer's Google account. Check this [page](https://stripe.com/docs/google-pay) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::GooglePay)) }
      def google_pay; end
      sig {
        params(_google_pay: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::GooglePay)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::GooglePay))
       }
      def google_pay=(_google_pay); end
      # GrabPay is a payment method developed by [Grab](https://www.grab.com/sg/consumer/finance/pay/). GrabPay is a digital wallet - customers maintain a balance in their wallets that they pay out with. Check this [page](https://stripe.com/docs/payments/grabpay) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Grabpay)) }
      def grabpay; end
      sig {
        params(_grabpay: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Grabpay)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Grabpay))
       }
      def grabpay=(_grabpay); end
      # iDEAL is a Netherlands-based payment method that allows customers to complete transactions online using their bank credentials. All major Dutch banks are members of Currence, the scheme that operates iDEAL, making it the most popular online payment method in the Netherlands with a share of online transactions close to 55%. Check this [page](https://stripe.com/docs/payments/ideal) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Ideal)) }
      def ideal; end
      sig {
        params(_ideal: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Ideal)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Ideal))
       }
      def ideal=(_ideal); end
      # JCB is a credit card company based in Japan. JCB is currently available in Japan to businesses approved by JCB, and available to all businesses in Australia, Canada, Hong Kong, Japan, New Zealand, Singapore, Switzerland, United Kingdom, United States, and all countries in the European Economic Area except Iceland. Check this [page](https://support.stripe.com/questions/accepting-japan-credit-bureau-%28jcb%29-payments) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Jcb)) }
      def jcb; end
      sig {
        params(_jcb: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Jcb)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Jcb))
       }
      def jcb=(_jcb); end
      # Kakao Pay is a popular local wallet available in South Korea.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::KakaoPay)) }
      def kakao_pay; end
      sig {
        params(_kakao_pay: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::KakaoPay)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::KakaoPay))
       }
      def kakao_pay=(_kakao_pay); end
      # Klarna gives customers a range of [payment options](https://stripe.com/docs/payments/klarna#payment-options) during checkout. Available payment options vary depending on the customer's billing address and the transaction amount. These payment options make it convenient for customers to purchase items in all price ranges. Check this [page](https://stripe.com/docs/payments/klarna) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Klarna)) }
      def klarna; end
      sig {
        params(_klarna: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Klarna)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Klarna))
       }
      def klarna=(_klarna); end
      # Konbini allows customers in Japan to pay for bills and online purchases at convenience stores with cash. Check this [page](https://stripe.com/docs/payments/konbini) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Konbini)) }
      def konbini; end
      sig {
        params(_konbini: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Konbini)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Konbini))
       }
      def konbini=(_konbini); end
      # Korean cards let users pay using locally issued cards from South Korea.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::KrCard)) }
      def kr_card; end
      sig {
        params(_kr_card: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::KrCard)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::KrCard))
       }
      def kr_card=(_kr_card); end
      # [Link](https://stripe.com/docs/payments/link) is a payment method network. With Link, users save their payment details once, then reuse that information to pay with one click for any business on the network.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Link)) }
      def link; end
      sig {
        params(_link: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Link)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Link))
       }
      def link=(_link); end
      # MobilePay is a [single-use](https://stripe.com/docs/payments/payment-methods#usage) card wallet payment method used in Denmark and Finland. It allows customers to [authenticate and approve](https://stripe.com/docs/payments/payment-methods#customer-actions) payments using the MobilePay app. Check this [page](https://stripe.com/docs/payments/mobilepay) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Mobilepay)) }
      def mobilepay; end
      sig {
        params(_mobilepay: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Mobilepay)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Mobilepay))
       }
      def mobilepay=(_mobilepay); end
      # Stripe users in Europe and the United States can accept Multibanco payments from customers in Portugal using [Sources](https://stripe.com/docs/sources)—a single integration path for creating payments using any supported method.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Multibanco)) }
      def multibanco; end
      sig {
        params(_multibanco: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Multibanco)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Multibanco))
       }
      def multibanco=(_multibanco); end
      # Configuration name.
      sig { returns(T.nilable(String)) }
      def name; end
      sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
      def name=(_name); end
      # Naver Pay is a popular local wallet available in South Korea.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::NaverPay)) }
      def naver_pay; end
      sig {
        params(_naver_pay: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::NaverPay)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::NaverPay))
       }
      def naver_pay=(_naver_pay); end
      # Stripe users in New Zealand can accept Bulk Electronic Clearing System (BECS) direct debit payments from customers with a New Zeland bank account. Check this [page](https://stripe.com/docs/payments/nz-bank-account) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::NzBankAccount)) }
      def nz_bank_account; end
      sig {
        params(_nz_bank_account: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::NzBankAccount)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::NzBankAccount))
       }
      def nz_bank_account=(_nz_bank_account); end
      # OXXO is a Mexican chain of convenience stores with thousands of locations across Latin America and represents nearly 20% of online transactions in Mexico. OXXO allows customers to pay bills and online purchases in-store with cash. Check this [page](https://stripe.com/docs/payments/oxxo) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Oxxo)) }
      def oxxo; end
      sig {
        params(_oxxo: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Oxxo)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Oxxo))
       }
      def oxxo=(_oxxo); end
      # Przelewy24 is a Poland-based payment method aggregator that allows customers to complete transactions online using bank transfers and other methods. Bank transfers account for 30% of online payments in Poland and Przelewy24 provides a way for customers to pay with over 165 banks. Check this [page](https://stripe.com/docs/payments/p24) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::P24)) }
      def p24; end
      sig {
        params(_p24: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::P24)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::P24))
       }
      def p24=(_p24); end
      # Configuration's parent configuration. Specify to create a child configuration.
      sig { returns(T.nilable(String)) }
      def parent; end
      sig { params(_parent: T.nilable(String)).returns(T.nilable(String)) }
      def parent=(_parent); end
      # Pay by bank is a redirect payment method backed by bank transfers. A customer is redirected to their bank to authorize a bank transfer for a given amount. This removes a lot of the error risks inherent in waiting for the customer to initiate a transfer themselves, and is less expensive than card payments.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::PayByBank)) }
      def pay_by_bank; end
      sig {
        params(_pay_by_bank: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::PayByBank)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::PayByBank))
       }
      def pay_by_bank=(_pay_by_bank); end
      # PAYCO is a [single-use](https://docs.stripe.com/payments/payment-methods#usage local wallet available in South Korea.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Payco)) }
      def payco; end
      sig {
        params(_payco: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Payco)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Payco))
       }
      def payco=(_payco); end
      # PayNow is a Singapore-based payment method that allows customers to make a payment using their preferred app from participating banks and participating non-bank financial institutions. Check this [page](https://stripe.com/docs/payments/paynow) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Paynow)) }
      def paynow; end
      sig {
        params(_paynow: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Paynow)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Paynow))
       }
      def paynow=(_paynow); end
      # PayPal, a digital wallet popular with customers in Europe, allows your customers worldwide to pay using their PayPal account. Check this [page](https://stripe.com/docs/payments/paypal) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Paypal)) }
      def paypal; end
      sig {
        params(_paypal: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Paypal)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Paypal))
       }
      def paypal=(_paypal); end
      # Pix is a payment method popular in Brazil. When paying with Pix, customers authenticate and approve payments by scanning a QR code in their preferred banking app. Check this [page](https://docs.stripe.com/payments/pix) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Pix)) }
      def pix; end
      sig {
        params(_pix: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Pix)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Pix))
       }
      def pix=(_pix); end
      # PromptPay is a Thailand-based payment method that allows customers to make a payment using their preferred app from participating banks. Check this [page](https://stripe.com/docs/payments/promptpay) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Promptpay)) }
      def promptpay; end
      sig {
        params(_promptpay: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Promptpay)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Promptpay))
       }
      def promptpay=(_promptpay); end
      # Revolut Pay, developed by Revolut, a global finance app, is a digital wallet payment method. Revolut Pay uses the customer’s stored balance or cards to fund the payment, and offers the option for non-Revolut customers to save their details after their first purchase.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::RevolutPay)) }
      def revolut_pay; end
      sig {
        params(_revolut_pay: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::RevolutPay)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::RevolutPay))
       }
      def revolut_pay=(_revolut_pay); end
      # Samsung Pay is a [single-use](https://docs.stripe.com/payments/payment-methods#usage local wallet available in South Korea.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::SamsungPay)) }
      def samsung_pay; end
      sig {
        params(_samsung_pay: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::SamsungPay)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::SamsungPay))
       }
      def samsung_pay=(_samsung_pay); end
      # Satispay is a [single-use](https://docs.stripe.com/payments/payment-methods#usage) payment method where customers are required to [authenticate](/payments/payment-methods#customer-actions) their payment. Customers pay by being redirected from your website or app, authorizing the payment with Satispay, then returning to your website or app. You get [immediate notification](/payments/payment-methods#payment-notification) of whether the payment succeeded or failed.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Satispay)) }
      def satispay; end
      sig {
        params(_satispay: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Satispay)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Satispay))
       }
      def satispay=(_satispay); end
      # The [Single Euro Payments Area (SEPA)](https://en.wikipedia.org/wiki/Single_Euro_Payments_Area) is an initiative of the European Union to simplify payments within and across member countries. SEPA established and enforced banking standards to allow for the direct debiting of every EUR-denominated bank account within the SEPA region, check this [page](https://stripe.com/docs/payments/sepa-debit) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::SepaDebit)) }
      def sepa_debit; end
      sig {
        params(_sepa_debit: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::SepaDebit)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::SepaDebit))
       }
      def sepa_debit=(_sepa_debit); end
      # Stripe users in Europe and the United States can use the [Payment Intents API](https://stripe.com/docs/payments/payment-intents)—a single integration path for creating payments using any supported method—to accept [Sofort](https://www.sofort.com/) payments from customers. Check this [page](https://stripe.com/docs/payments/sofort) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Sofort)) }
      def sofort; end
      sig {
        params(_sofort: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Sofort)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Sofort))
       }
      def sofort=(_sofort); end
      # Swish is a [real-time](https://stripe.com/docs/payments/real-time) payment method popular in Sweden. It allows customers to [authenticate and approve](https://stripe.com/docs/payments/payment-methods#customer-actions) payments using the Swish mobile app and the Swedish BankID mobile app. Check this [page](https://stripe.com/docs/payments/swish) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Swish)) }
      def swish; end
      sig {
        params(_swish: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Swish)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Swish))
       }
      def swish=(_swish); end
      # Twint is a payment method popular in Switzerland. It allows customers to pay using their mobile phone. Check this [page](https://docs.stripe.com/payments/twint) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Twint)) }
      def twint; end
      sig {
        params(_twint: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Twint)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Twint))
       }
      def twint=(_twint); end
      # Stripe users in the United States can accept ACH direct debit payments from customers with a US bank account using the Automated Clearing House (ACH) payments system operated by Nacha. Check this [page](https://stripe.com/docs/payments/ach-direct-debit) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::UsBankAccount)) }
      def us_bank_account; end
      sig {
        params(_us_bank_account: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::UsBankAccount)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::UsBankAccount))
       }
      def us_bank_account=(_us_bank_account); end
      # WeChat, owned by Tencent, is China's leading mobile app with over 1 billion monthly active users. Chinese consumers can use WeChat Pay to pay for goods and services inside of businesses' apps and websites. WeChat Pay users buy most frequently in gaming, e-commerce, travel, online education, and food/nutrition. Check this [page](https://stripe.com/docs/payments/wechat-pay) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::WechatPay)) }
      def wechat_pay; end
      sig {
        params(_wechat_pay: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::WechatPay)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::WechatPay))
       }
      def wechat_pay=(_wechat_pay); end
      # Zip gives your customers a way to split purchases over a series of payments. Check this [page](https://stripe.com/docs/payments/zip) for more details like country availability.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Zip)) }
      def zip; end
      sig {
        params(_zip: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Zip)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Zip))
       }
      def zip=(_zip); end
      sig {
        params(acss_debit: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::AcssDebit), affirm: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Affirm), afterpay_clearpay: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::AfterpayClearpay), alipay: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Alipay), alma: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Alma), amazon_pay: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::AmazonPay), apple_pay: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::ApplePay), apple_pay_later: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::ApplePayLater), au_becs_debit: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::AuBecsDebit), bacs_debit: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::BacsDebit), bancontact: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Bancontact), billie: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Billie), blik: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Blik), boleto: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Boleto), card: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Card), cartes_bancaires: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::CartesBancaires), cashapp: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Cashapp), customer_balance: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::CustomerBalance), eps: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Eps), expand: T.nilable(T::Array[String]), fpx: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Fpx), giropay: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Giropay), google_pay: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::GooglePay), grabpay: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Grabpay), ideal: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Ideal), jcb: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Jcb), kakao_pay: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::KakaoPay), klarna: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Klarna), konbini: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Konbini), kr_card: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::KrCard), link: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Link), mobilepay: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Mobilepay), multibanco: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Multibanco), name: T.nilable(String), naver_pay: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::NaverPay), nz_bank_account: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::NzBankAccount), oxxo: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Oxxo), p24: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::P24), parent: T.nilable(String), pay_by_bank: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::PayByBank), payco: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Payco), paynow: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Paynow), paypal: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Paypal), pix: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Pix), promptpay: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Promptpay), revolut_pay: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::RevolutPay), samsung_pay: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::SamsungPay), satispay: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Satispay), sepa_debit: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::SepaDebit), sofort: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Sofort), swish: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Swish), twint: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Twint), us_bank_account: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::UsBankAccount), wechat_pay: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::WechatPay), zip: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Zip)).void
       }
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
      ); end
    end
    class UpdateParams < Stripe::RequestParams
      class AcssDebit < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::AcssDebit::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::AcssDebit::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::AcssDebit::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::AcssDebit::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Affirm < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Affirm::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Affirm::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Affirm::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Affirm::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class AfterpayClearpay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::AfterpayClearpay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::AfterpayClearpay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::AfterpayClearpay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::AfterpayClearpay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Alipay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Alipay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Alipay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Alipay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Alipay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Alma < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Alma::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Alma::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Alma::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Alma::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class AmazonPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::AmazonPay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::AmazonPay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::AmazonPay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::AmazonPay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class ApplePay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::ApplePay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::ApplePay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::ApplePay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::ApplePay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class ApplePayLater < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::ApplePayLater::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::ApplePayLater::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::ApplePayLater::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::ApplePayLater::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class AuBecsDebit < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::AuBecsDebit::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::AuBecsDebit::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::AuBecsDebit::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::AuBecsDebit::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class BacsDebit < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::BacsDebit::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::BacsDebit::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::BacsDebit::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::BacsDebit::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Bancontact < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Bancontact::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Bancontact::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Bancontact::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Bancontact::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Billie < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Billie::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Billie::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Billie::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Billie::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Blik < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Blik::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Blik::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Blik::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Blik::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Boleto < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Boleto::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Boleto::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Boleto::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Boleto::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Card < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Card::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Card::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Card::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Card::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class CartesBancaires < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::CartesBancaires::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::CartesBancaires::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::CartesBancaires::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::CartesBancaires::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Cashapp < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Cashapp::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Cashapp::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Cashapp::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Cashapp::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class CustomerBalance < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::CustomerBalance::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::CustomerBalance::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::CustomerBalance::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::CustomerBalance::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Eps < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Eps::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Eps::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Eps::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Eps::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Fpx < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Fpx::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Fpx::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Fpx::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Fpx::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Giropay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Giropay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Giropay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Giropay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Giropay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class GooglePay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::GooglePay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::GooglePay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::GooglePay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::GooglePay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Grabpay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Grabpay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Grabpay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Grabpay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Grabpay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Ideal < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Ideal::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Ideal::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Ideal::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Ideal::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Jcb < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Jcb::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Jcb::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Jcb::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Jcb::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class KakaoPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::KakaoPay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::KakaoPay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::KakaoPay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::KakaoPay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Klarna < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Klarna::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Klarna::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Klarna::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Klarna::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Konbini < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Konbini::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Konbini::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Konbini::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Konbini::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class KrCard < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::KrCard::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::KrCard::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::KrCard::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::KrCard::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Link < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Link::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Link::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Link::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Link::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Mobilepay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Mobilepay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Mobilepay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Mobilepay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Mobilepay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Multibanco < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Multibanco::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Multibanco::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Multibanco::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Multibanco::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class NaverPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::NaverPay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::NaverPay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::NaverPay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::NaverPay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class NzBankAccount < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::NzBankAccount::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::NzBankAccount::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::NzBankAccount::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::NzBankAccount::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Oxxo < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Oxxo::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Oxxo::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Oxxo::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Oxxo::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class P24 < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::P24::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::P24::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::P24::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::P24::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class PayByBank < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::PayByBank::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::PayByBank::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::PayByBank::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::PayByBank::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Payco < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Payco::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Payco::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Payco::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Payco::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Paynow < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Paynow::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Paynow::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Paynow::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Paynow::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Paypal < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Paypal::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Paypal::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Paypal::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Paypal::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Pix < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Pix::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Pix::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Pix::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Pix::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Promptpay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Promptpay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Promptpay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Promptpay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Promptpay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class RevolutPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::RevolutPay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::RevolutPay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::RevolutPay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::RevolutPay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class SamsungPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::SamsungPay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::SamsungPay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::SamsungPay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::SamsungPay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Satispay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Satispay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Satispay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Satispay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Satispay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class SepaDebit < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::SepaDebit::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::SepaDebit::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::SepaDebit::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::SepaDebit::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Sofort < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Sofort::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Sofort::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Sofort::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Sofort::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Swish < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Swish::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Swish::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Swish::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Swish::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Twint < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Twint::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Twint::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Twint::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Twint::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class UsBankAccount < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::UsBankAccount::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::UsBankAccount::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::UsBankAccount::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::UsBankAccount::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class WechatPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::WechatPay::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::WechatPay::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::WechatPay::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::WechatPay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Zip < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          def preference; end
          sig { params(_preference: T.nilable(String)).returns(T.nilable(String)) }
          def preference=(_preference); end
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Zip::DisplayPreference))
         }
        def display_preference; end
        sig {
          params(_display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Zip::DisplayPreference)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Zip::DisplayPreference))
         }
        def display_preference=(_display_preference); end
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Zip::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      # Canadian pre-authorized debit payments, check this [page](https://stripe.com/docs/payments/acss-debit) for more details like country availability.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::AcssDebit)) }
      def acss_debit; end
      sig {
        params(_acss_debit: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::AcssDebit)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::AcssDebit))
       }
      def acss_debit=(_acss_debit); end
      # Whether the configuration can be used for new payments.
      sig { returns(T.nilable(T::Boolean)) }
      def active; end
      sig { params(_active: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def active=(_active); end
      # [Affirm](https://www.affirm.com/) gives your customers a way to split purchases over a series of payments. Depending on the purchase, they can pay with four interest-free payments (Split Pay) or pay over a longer term (Installments), which might include interest. Check this [page](https://stripe.com/docs/payments/affirm) for more details like country availability.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Affirm)) }
      def affirm; end
      sig {
        params(_affirm: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Affirm)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Affirm))
       }
      def affirm=(_affirm); end
      # Afterpay gives your customers a way to pay for purchases in installments, check this [page](https://stripe.com/docs/payments/afterpay-clearpay) for more details like country availability. Afterpay is particularly popular among businesses selling fashion, beauty, and sports products.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::AfterpayClearpay))
       }
      def afterpay_clearpay; end
      sig {
        params(_afterpay_clearpay: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::AfterpayClearpay)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::AfterpayClearpay))
       }
      def afterpay_clearpay=(_afterpay_clearpay); end
      # Alipay is a digital wallet in China that has more than a billion active users worldwide. Alipay users can pay on the web or on a mobile device using login credentials or their Alipay app. Alipay has a low dispute rate and reduces fraud by authenticating payments using the customer's login credentials. Check this [page](https://stripe.com/docs/payments/alipay) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Alipay)) }
      def alipay; end
      sig {
        params(_alipay: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Alipay)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Alipay))
       }
      def alipay=(_alipay); end
      # Alma is a Buy Now, Pay Later payment method that offers customers the ability to pay in 2, 3, or 4 installments.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Alma)) }
      def alma; end
      sig {
        params(_alma: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Alma)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Alma))
       }
      def alma=(_alma); end
      # Amazon Pay is a wallet payment method that lets your customers check out the same way as on Amazon.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::AmazonPay)) }
      def amazon_pay; end
      sig {
        params(_amazon_pay: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::AmazonPay)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::AmazonPay))
       }
      def amazon_pay=(_amazon_pay); end
      # Stripe users can accept [Apple Pay](https://stripe.com/payments/apple-pay) in iOS applications in iOS 9 and later, and on the web in Safari starting with iOS 10 or macOS Sierra. There are no additional fees to process Apple Pay payments, and the [pricing](https://stripe.com/pricing) is the same as other card transactions. Check this [page](https://stripe.com/docs/apple-pay) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::ApplePay)) }
      def apple_pay; end
      sig {
        params(_apple_pay: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::ApplePay)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::ApplePay))
       }
      def apple_pay=(_apple_pay); end
      # Apple Pay Later, a payment method for customers to buy now and pay later, gives your customers a way to split purchases into four installments across six weeks.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::ApplePayLater)) }
      def apple_pay_later; end
      sig {
        params(_apple_pay_later: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::ApplePayLater)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::ApplePayLater))
       }
      def apple_pay_later=(_apple_pay_later); end
      # Stripe users in Australia can accept Bulk Electronic Clearing System (BECS) direct debit payments from customers with an Australian bank account. Check this [page](https://stripe.com/docs/payments/au-becs-debit) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::AuBecsDebit)) }
      def au_becs_debit; end
      sig {
        params(_au_becs_debit: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::AuBecsDebit)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::AuBecsDebit))
       }
      def au_becs_debit=(_au_becs_debit); end
      # Stripe users in the UK can accept Bacs Direct Debit payments from customers with a UK bank account, check this [page](https://stripe.com/docs/payments/payment-methods/bacs-debit) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::BacsDebit)) }
      def bacs_debit; end
      sig {
        params(_bacs_debit: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::BacsDebit)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::BacsDebit))
       }
      def bacs_debit=(_bacs_debit); end
      # Bancontact is the most popular online payment method in Belgium, with over 15 million cards in circulation. [Customers](https://stripe.com/docs/api/customers) use a Bancontact card or mobile app linked to a Belgian bank account to make online payments that are secure, guaranteed, and confirmed immediately. Check this [page](https://stripe.com/docs/payments/bancontact) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Bancontact)) }
      def bancontact; end
      sig {
        params(_bancontact: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Bancontact)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Bancontact))
       }
      def bancontact=(_bancontact); end
      # Billie is a [single-use](https://docs.stripe.com/payments/payment-methods#usage) payment method that offers businesses Pay by Invoice where they offer payment terms ranging from 7-120 days. Customers are redirected from your website or app, authorize the payment with Billie, then return to your website or app. You get [immediate notification](/payments/payment-methods#payment-notification) of whether the payment succeeded or failed.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Billie)) }
      def billie; end
      sig {
        params(_billie: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Billie)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Billie))
       }
      def billie=(_billie); end
      # BLIK is a [single use](https://stripe.com/docs/payments/payment-methods#usage) payment method that requires customers to authenticate their payments. When customers want to pay online using BLIK, they request a six-digit code from their banking application and enter it into the payment collection form. Check this [page](https://stripe.com/docs/payments/blik) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Blik)) }
      def blik; end
      sig {
        params(_blik: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Blik)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Blik))
       }
      def blik=(_blik); end
      # Boleto is an official (regulated by the Central Bank of Brazil) payment method in Brazil. Check this [page](https://stripe.com/docs/payments/boleto) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Boleto)) }
      def boleto; end
      sig {
        params(_boleto: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Boleto)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Boleto))
       }
      def boleto=(_boleto); end
      # Cards are a popular way for consumers and businesses to pay online or in person. Stripe supports global and local card networks.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Card)) }
      def card; end
      sig {
        params(_card: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Card)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Card))
       }
      def card=(_card); end
      # Cartes Bancaires is France's local card network. More than 95% of these cards are co-branded with either Visa or Mastercard, meaning you can process these cards over either Cartes Bancaires or the Visa or Mastercard networks. Check this [page](https://stripe.com/docs/payments/cartes-bancaires) for more details.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::CartesBancaires))
       }
      def cartes_bancaires; end
      sig {
        params(_cartes_bancaires: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::CartesBancaires)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::CartesBancaires))
       }
      def cartes_bancaires=(_cartes_bancaires); end
      # Cash App is a popular consumer app in the US that allows customers to bank, invest, send, and receive money using their digital wallet. Check this [page](https://stripe.com/docs/payments/cash-app-pay) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Cashapp)) }
      def cashapp; end
      sig {
        params(_cashapp: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Cashapp)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Cashapp))
       }
      def cashapp=(_cashapp); end
      # Uses a customer’s [cash balance](https://stripe.com/docs/payments/customer-balance) for the payment. The cash balance can be funded via a bank transfer. Check this [page](https://stripe.com/docs/payments/bank-transfers) for more details.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::CustomerBalance))
       }
      def customer_balance; end
      sig {
        params(_customer_balance: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::CustomerBalance)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::CustomerBalance))
       }
      def customer_balance=(_customer_balance); end
      # EPS is an Austria-based payment method that allows customers to complete transactions online using their bank credentials. EPS is supported by all Austrian banks and is accepted by over 80% of Austrian online retailers. Check this [page](https://stripe.com/docs/payments/eps) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Eps)) }
      def eps; end
      sig {
        params(_eps: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Eps)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Eps))
       }
      def eps=(_eps); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Financial Process Exchange (FPX) is a Malaysia-based payment method that allows customers to complete transactions online using their bank credentials. Bank Negara Malaysia (BNM), the Central Bank of Malaysia, and eleven other major Malaysian financial institutions are members of the PayNet Group, which owns and operates FPX. It is one of the most popular online payment methods in Malaysia, with nearly 90 million transactions in 2018 according to BNM. Check this [page](https://stripe.com/docs/payments/fpx) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Fpx)) }
      def fpx; end
      sig {
        params(_fpx: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Fpx)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Fpx))
       }
      def fpx=(_fpx); end
      # giropay is a German payment method based on online banking, introduced in 2006. It allows customers to complete transactions online using their online banking environment, with funds debited from their bank account. Depending on their bank, customers confirm payments on giropay using a second factor of authentication or a PIN. giropay accounts for 10% of online checkouts in Germany. Check this [page](https://stripe.com/docs/payments/giropay) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Giropay)) }
      def giropay; end
      sig {
        params(_giropay: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Giropay)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Giropay))
       }
      def giropay=(_giropay); end
      # Google Pay allows customers to make payments in your app or website using any credit or debit card saved to their Google Account, including those from Google Play, YouTube, Chrome, or an Android device. Use the Google Pay API to request any credit or debit card stored in your customer's Google account. Check this [page](https://stripe.com/docs/google-pay) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::GooglePay)) }
      def google_pay; end
      sig {
        params(_google_pay: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::GooglePay)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::GooglePay))
       }
      def google_pay=(_google_pay); end
      # GrabPay is a payment method developed by [Grab](https://www.grab.com/sg/consumer/finance/pay/). GrabPay is a digital wallet - customers maintain a balance in their wallets that they pay out with. Check this [page](https://stripe.com/docs/payments/grabpay) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Grabpay)) }
      def grabpay; end
      sig {
        params(_grabpay: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Grabpay)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Grabpay))
       }
      def grabpay=(_grabpay); end
      # iDEAL is a Netherlands-based payment method that allows customers to complete transactions online using their bank credentials. All major Dutch banks are members of Currence, the scheme that operates iDEAL, making it the most popular online payment method in the Netherlands with a share of online transactions close to 55%. Check this [page](https://stripe.com/docs/payments/ideal) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Ideal)) }
      def ideal; end
      sig {
        params(_ideal: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Ideal)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Ideal))
       }
      def ideal=(_ideal); end
      # JCB is a credit card company based in Japan. JCB is currently available in Japan to businesses approved by JCB, and available to all businesses in Australia, Canada, Hong Kong, Japan, New Zealand, Singapore, Switzerland, United Kingdom, United States, and all countries in the European Economic Area except Iceland. Check this [page](https://support.stripe.com/questions/accepting-japan-credit-bureau-%28jcb%29-payments) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Jcb)) }
      def jcb; end
      sig {
        params(_jcb: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Jcb)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Jcb))
       }
      def jcb=(_jcb); end
      # Kakao Pay is a popular local wallet available in South Korea.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::KakaoPay)) }
      def kakao_pay; end
      sig {
        params(_kakao_pay: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::KakaoPay)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::KakaoPay))
       }
      def kakao_pay=(_kakao_pay); end
      # Klarna gives customers a range of [payment options](https://stripe.com/docs/payments/klarna#payment-options) during checkout. Available payment options vary depending on the customer's billing address and the transaction amount. These payment options make it convenient for customers to purchase items in all price ranges. Check this [page](https://stripe.com/docs/payments/klarna) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Klarna)) }
      def klarna; end
      sig {
        params(_klarna: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Klarna)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Klarna))
       }
      def klarna=(_klarna); end
      # Konbini allows customers in Japan to pay for bills and online purchases at convenience stores with cash. Check this [page](https://stripe.com/docs/payments/konbini) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Konbini)) }
      def konbini; end
      sig {
        params(_konbini: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Konbini)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Konbini))
       }
      def konbini=(_konbini); end
      # Korean cards let users pay using locally issued cards from South Korea.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::KrCard)) }
      def kr_card; end
      sig {
        params(_kr_card: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::KrCard)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::KrCard))
       }
      def kr_card=(_kr_card); end
      # [Link](https://stripe.com/docs/payments/link) is a payment method network. With Link, users save their payment details once, then reuse that information to pay with one click for any business on the network.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Link)) }
      def link; end
      sig {
        params(_link: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Link)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Link))
       }
      def link=(_link); end
      # MobilePay is a [single-use](https://stripe.com/docs/payments/payment-methods#usage) card wallet payment method used in Denmark and Finland. It allows customers to [authenticate and approve](https://stripe.com/docs/payments/payment-methods#customer-actions) payments using the MobilePay app. Check this [page](https://stripe.com/docs/payments/mobilepay) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Mobilepay)) }
      def mobilepay; end
      sig {
        params(_mobilepay: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Mobilepay)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Mobilepay))
       }
      def mobilepay=(_mobilepay); end
      # Stripe users in Europe and the United States can accept Multibanco payments from customers in Portugal using [Sources](https://stripe.com/docs/sources)—a single integration path for creating payments using any supported method.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Multibanco)) }
      def multibanco; end
      sig {
        params(_multibanco: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Multibanco)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Multibanco))
       }
      def multibanco=(_multibanco); end
      # Configuration name.
      sig { returns(T.nilable(String)) }
      def name; end
      sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
      def name=(_name); end
      # Naver Pay is a popular local wallet available in South Korea.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::NaverPay)) }
      def naver_pay; end
      sig {
        params(_naver_pay: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::NaverPay)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::NaverPay))
       }
      def naver_pay=(_naver_pay); end
      # Stripe users in New Zealand can accept Bulk Electronic Clearing System (BECS) direct debit payments from customers with a New Zeland bank account. Check this [page](https://stripe.com/docs/payments/nz-bank-account) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::NzBankAccount)) }
      def nz_bank_account; end
      sig {
        params(_nz_bank_account: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::NzBankAccount)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::NzBankAccount))
       }
      def nz_bank_account=(_nz_bank_account); end
      # OXXO is a Mexican chain of convenience stores with thousands of locations across Latin America and represents nearly 20% of online transactions in Mexico. OXXO allows customers to pay bills and online purchases in-store with cash. Check this [page](https://stripe.com/docs/payments/oxxo) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Oxxo)) }
      def oxxo; end
      sig {
        params(_oxxo: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Oxxo)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Oxxo))
       }
      def oxxo=(_oxxo); end
      # Przelewy24 is a Poland-based payment method aggregator that allows customers to complete transactions online using bank transfers and other methods. Bank transfers account for 30% of online payments in Poland and Przelewy24 provides a way for customers to pay with over 165 banks. Check this [page](https://stripe.com/docs/payments/p24) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::P24)) }
      def p24; end
      sig {
        params(_p24: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::P24)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::P24))
       }
      def p24=(_p24); end
      # Pay by bank is a redirect payment method backed by bank transfers. A customer is redirected to their bank to authorize a bank transfer for a given amount. This removes a lot of the error risks inherent in waiting for the customer to initiate a transfer themselves, and is less expensive than card payments.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::PayByBank)) }
      def pay_by_bank; end
      sig {
        params(_pay_by_bank: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::PayByBank)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::PayByBank))
       }
      def pay_by_bank=(_pay_by_bank); end
      # PAYCO is a [single-use](https://docs.stripe.com/payments/payment-methods#usage local wallet available in South Korea.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Payco)) }
      def payco; end
      sig {
        params(_payco: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Payco)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Payco))
       }
      def payco=(_payco); end
      # PayNow is a Singapore-based payment method that allows customers to make a payment using their preferred app from participating banks and participating non-bank financial institutions. Check this [page](https://stripe.com/docs/payments/paynow) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Paynow)) }
      def paynow; end
      sig {
        params(_paynow: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Paynow)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Paynow))
       }
      def paynow=(_paynow); end
      # PayPal, a digital wallet popular with customers in Europe, allows your customers worldwide to pay using their PayPal account. Check this [page](https://stripe.com/docs/payments/paypal) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Paypal)) }
      def paypal; end
      sig {
        params(_paypal: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Paypal)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Paypal))
       }
      def paypal=(_paypal); end
      # Pix is a payment method popular in Brazil. When paying with Pix, customers authenticate and approve payments by scanning a QR code in their preferred banking app. Check this [page](https://docs.stripe.com/payments/pix) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Pix)) }
      def pix; end
      sig {
        params(_pix: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Pix)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Pix))
       }
      def pix=(_pix); end
      # PromptPay is a Thailand-based payment method that allows customers to make a payment using their preferred app from participating banks. Check this [page](https://stripe.com/docs/payments/promptpay) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Promptpay)) }
      def promptpay; end
      sig {
        params(_promptpay: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Promptpay)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Promptpay))
       }
      def promptpay=(_promptpay); end
      # Revolut Pay, developed by Revolut, a global finance app, is a digital wallet payment method. Revolut Pay uses the customer’s stored balance or cards to fund the payment, and offers the option for non-Revolut customers to save their details after their first purchase.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::RevolutPay)) }
      def revolut_pay; end
      sig {
        params(_revolut_pay: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::RevolutPay)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::RevolutPay))
       }
      def revolut_pay=(_revolut_pay); end
      # Samsung Pay is a [single-use](https://docs.stripe.com/payments/payment-methods#usage local wallet available in South Korea.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::SamsungPay)) }
      def samsung_pay; end
      sig {
        params(_samsung_pay: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::SamsungPay)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::SamsungPay))
       }
      def samsung_pay=(_samsung_pay); end
      # Satispay is a [single-use](https://docs.stripe.com/payments/payment-methods#usage) payment method where customers are required to [authenticate](/payments/payment-methods#customer-actions) their payment. Customers pay by being redirected from your website or app, authorizing the payment with Satispay, then returning to your website or app. You get [immediate notification](/payments/payment-methods#payment-notification) of whether the payment succeeded or failed.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Satispay)) }
      def satispay; end
      sig {
        params(_satispay: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Satispay)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Satispay))
       }
      def satispay=(_satispay); end
      # The [Single Euro Payments Area (SEPA)](https://en.wikipedia.org/wiki/Single_Euro_Payments_Area) is an initiative of the European Union to simplify payments within and across member countries. SEPA established and enforced banking standards to allow for the direct debiting of every EUR-denominated bank account within the SEPA region, check this [page](https://stripe.com/docs/payments/sepa-debit) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::SepaDebit)) }
      def sepa_debit; end
      sig {
        params(_sepa_debit: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::SepaDebit)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::SepaDebit))
       }
      def sepa_debit=(_sepa_debit); end
      # Stripe users in Europe and the United States can use the [Payment Intents API](https://stripe.com/docs/payments/payment-intents)—a single integration path for creating payments using any supported method—to accept [Sofort](https://www.sofort.com/) payments from customers. Check this [page](https://stripe.com/docs/payments/sofort) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Sofort)) }
      def sofort; end
      sig {
        params(_sofort: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Sofort)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Sofort))
       }
      def sofort=(_sofort); end
      # Swish is a [real-time](https://stripe.com/docs/payments/real-time) payment method popular in Sweden. It allows customers to [authenticate and approve](https://stripe.com/docs/payments/payment-methods#customer-actions) payments using the Swish mobile app and the Swedish BankID mobile app. Check this [page](https://stripe.com/docs/payments/swish) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Swish)) }
      def swish; end
      sig {
        params(_swish: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Swish)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Swish))
       }
      def swish=(_swish); end
      # Twint is a payment method popular in Switzerland. It allows customers to pay using their mobile phone. Check this [page](https://docs.stripe.com/payments/twint) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Twint)) }
      def twint; end
      sig {
        params(_twint: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Twint)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Twint))
       }
      def twint=(_twint); end
      # Stripe users in the United States can accept ACH direct debit payments from customers with a US bank account using the Automated Clearing House (ACH) payments system operated by Nacha. Check this [page](https://stripe.com/docs/payments/ach-direct-debit) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::UsBankAccount)) }
      def us_bank_account; end
      sig {
        params(_us_bank_account: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::UsBankAccount)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::UsBankAccount))
       }
      def us_bank_account=(_us_bank_account); end
      # WeChat, owned by Tencent, is China's leading mobile app with over 1 billion monthly active users. Chinese consumers can use WeChat Pay to pay for goods and services inside of businesses' apps and websites. WeChat Pay users buy most frequently in gaming, e-commerce, travel, online education, and food/nutrition. Check this [page](https://stripe.com/docs/payments/wechat-pay) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::WechatPay)) }
      def wechat_pay; end
      sig {
        params(_wechat_pay: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::WechatPay)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::WechatPay))
       }
      def wechat_pay=(_wechat_pay); end
      # Zip gives your customers a way to split purchases over a series of payments. Check this [page](https://stripe.com/docs/payments/zip) for more details like country availability.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Zip)) }
      def zip; end
      sig {
        params(_zip: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Zip)).returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Zip))
       }
      def zip=(_zip); end
      sig {
        params(acss_debit: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::AcssDebit), active: T.nilable(T::Boolean), affirm: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Affirm), afterpay_clearpay: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::AfterpayClearpay), alipay: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Alipay), alma: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Alma), amazon_pay: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::AmazonPay), apple_pay: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::ApplePay), apple_pay_later: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::ApplePayLater), au_becs_debit: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::AuBecsDebit), bacs_debit: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::BacsDebit), bancontact: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Bancontact), billie: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Billie), blik: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Blik), boleto: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Boleto), card: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Card), cartes_bancaires: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::CartesBancaires), cashapp: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Cashapp), customer_balance: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::CustomerBalance), eps: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Eps), expand: T.nilable(T::Array[String]), fpx: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Fpx), giropay: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Giropay), google_pay: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::GooglePay), grabpay: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Grabpay), ideal: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Ideal), jcb: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Jcb), kakao_pay: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::KakaoPay), klarna: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Klarna), konbini: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Konbini), kr_card: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::KrCard), link: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Link), mobilepay: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Mobilepay), multibanco: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Multibanco), name: T.nilable(String), naver_pay: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::NaverPay), nz_bank_account: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::NzBankAccount), oxxo: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Oxxo), p24: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::P24), pay_by_bank: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::PayByBank), payco: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Payco), paynow: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Paynow), paypal: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Paypal), pix: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Pix), promptpay: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Promptpay), revolut_pay: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::RevolutPay), samsung_pay: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::SamsungPay), satispay: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Satispay), sepa_debit: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::SepaDebit), sofort: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Sofort), swish: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Swish), twint: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Twint), us_bank_account: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::UsBankAccount), wechat_pay: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::WechatPay), zip: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Zip)).void
       }
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
      ); end
    end
    # Creates a payment method configuration
    sig {
      params(params: T.any(::Stripe::PaymentMethodConfiguration::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentMethodConfiguration)
     }
    def self.create(params = {}, opts = {}); end

    # List payment method configurations
    sig {
      params(params: T.any(::Stripe::PaymentMethodConfiguration::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def self.list(params = {}, opts = {}); end

    # Update payment method configuration
    sig {
      params(configuration: String, params: T.any(::Stripe::PaymentMethodConfiguration::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentMethodConfiguration)
     }
    def self.update(configuration, params = {}, opts = {}); end
  end
end