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
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Affirm < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class AfterpayClearpay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Alipay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Alma < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class AmazonPay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class ApplePay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class AuBecsDebit < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class BacsDebit < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Bancontact < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Billie < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Blik < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Boleto < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Card < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class CartesBancaires < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Cashapp < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class CustomerBalance < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Eps < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Fpx < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Giropay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class GooglePay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Grabpay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Ideal < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Jcb < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class KakaoPay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Klarna < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Konbini < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class KrCard < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Link < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Mobilepay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Multibanco < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class NaverPay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class NzBankAccount < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Oxxo < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class P24 < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class PayByBank < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Payco < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Paynow < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Paypal < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Pix < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Promptpay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class RevolutPay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class SamsungPay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Satispay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class SepaDebit < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Sofort < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Swish < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Twint < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class UsBankAccount < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class WechatPay < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    class Zip < Stripe::StripeObject
      class DisplayPreference < Stripe::StripeObject
        # For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :overridable
        # The account's display preference.
        sig { returns(String) }
        attr_reader :preference
        # The effective display preference value.
        sig { returns(String) }
        attr_reader :value
      end
      # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
      sig { returns(T::Boolean) }
      attr_reader :available
      # Attribute for field display_preference
      sig { returns(DisplayPreference) }
      attr_reader :display_preference
    end
    # Attribute for field acss_debit
    sig { returns(AcssDebit) }
    attr_reader :acss_debit
    # Whether the configuration can be used for new payments.
    sig { returns(T::Boolean) }
    attr_reader :active
    # Attribute for field affirm
    sig { returns(Affirm) }
    attr_reader :affirm
    # Attribute for field afterpay_clearpay
    sig { returns(AfterpayClearpay) }
    attr_reader :afterpay_clearpay
    # Attribute for field alipay
    sig { returns(Alipay) }
    attr_reader :alipay
    # Attribute for field alma
    sig { returns(Alma) }
    attr_reader :alma
    # Attribute for field amazon_pay
    sig { returns(AmazonPay) }
    attr_reader :amazon_pay
    # Attribute for field apple_pay
    sig { returns(ApplePay) }
    attr_reader :apple_pay
    # For child configs, the Connect application associated with the configuration.
    sig { returns(T.nilable(String)) }
    attr_reader :application
    # Attribute for field au_becs_debit
    sig { returns(AuBecsDebit) }
    attr_reader :au_becs_debit
    # Attribute for field bacs_debit
    sig { returns(BacsDebit) }
    attr_reader :bacs_debit
    # Attribute for field bancontact
    sig { returns(Bancontact) }
    attr_reader :bancontact
    # Attribute for field billie
    sig { returns(Billie) }
    attr_reader :billie
    # Attribute for field blik
    sig { returns(Blik) }
    attr_reader :blik
    # Attribute for field boleto
    sig { returns(Boleto) }
    attr_reader :boleto
    # Attribute for field card
    sig { returns(Card) }
    attr_reader :card
    # Attribute for field cartes_bancaires
    sig { returns(CartesBancaires) }
    attr_reader :cartes_bancaires
    # Attribute for field cashapp
    sig { returns(Cashapp) }
    attr_reader :cashapp
    # Attribute for field customer_balance
    sig { returns(CustomerBalance) }
    attr_reader :customer_balance
    # Attribute for field eps
    sig { returns(Eps) }
    attr_reader :eps
    # Attribute for field fpx
    sig { returns(Fpx) }
    attr_reader :fpx
    # Attribute for field giropay
    sig { returns(Giropay) }
    attr_reader :giropay
    # Attribute for field google_pay
    sig { returns(GooglePay) }
    attr_reader :google_pay
    # Attribute for field grabpay
    sig { returns(Grabpay) }
    attr_reader :grabpay
    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id
    # Attribute for field ideal
    sig { returns(Ideal) }
    attr_reader :ideal
    # The default configuration is used whenever a payment method configuration is not specified.
    sig { returns(T::Boolean) }
    attr_reader :is_default
    # Attribute for field jcb
    sig { returns(Jcb) }
    attr_reader :jcb
    # Attribute for field kakao_pay
    sig { returns(KakaoPay) }
    attr_reader :kakao_pay
    # Attribute for field klarna
    sig { returns(Klarna) }
    attr_reader :klarna
    # Attribute for field konbini
    sig { returns(Konbini) }
    attr_reader :konbini
    # Attribute for field kr_card
    sig { returns(KrCard) }
    attr_reader :kr_card
    # Attribute for field link
    sig { returns(Link) }
    attr_reader :link
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode
    # Attribute for field mobilepay
    sig { returns(Mobilepay) }
    attr_reader :mobilepay
    # Attribute for field multibanco
    sig { returns(Multibanco) }
    attr_reader :multibanco
    # The configuration's name.
    sig { returns(String) }
    attr_reader :name
    # Attribute for field naver_pay
    sig { returns(NaverPay) }
    attr_reader :naver_pay
    # Attribute for field nz_bank_account
    sig { returns(NzBankAccount) }
    attr_reader :nz_bank_account
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object
    # Attribute for field oxxo
    sig { returns(Oxxo) }
    attr_reader :oxxo
    # Attribute for field p24
    sig { returns(P24) }
    attr_reader :p24
    # For child configs, the configuration's parent configuration.
    sig { returns(T.nilable(String)) }
    attr_reader :parent
    # Attribute for field pay_by_bank
    sig { returns(PayByBank) }
    attr_reader :pay_by_bank
    # Attribute for field payco
    sig { returns(Payco) }
    attr_reader :payco
    # Attribute for field paynow
    sig { returns(Paynow) }
    attr_reader :paynow
    # Attribute for field paypal
    sig { returns(Paypal) }
    attr_reader :paypal
    # Attribute for field pix
    sig { returns(Pix) }
    attr_reader :pix
    # Attribute for field promptpay
    sig { returns(Promptpay) }
    attr_reader :promptpay
    # Attribute for field revolut_pay
    sig { returns(RevolutPay) }
    attr_reader :revolut_pay
    # Attribute for field samsung_pay
    sig { returns(SamsungPay) }
    attr_reader :samsung_pay
    # Attribute for field satispay
    sig { returns(Satispay) }
    attr_reader :satispay
    # Attribute for field sepa_debit
    sig { returns(SepaDebit) }
    attr_reader :sepa_debit
    # Attribute for field sofort
    sig { returns(Sofort) }
    attr_reader :sofort
    # Attribute for field swish
    sig { returns(Swish) }
    attr_reader :swish
    # Attribute for field twint
    sig { returns(Twint) }
    attr_reader :twint
    # Attribute for field us_bank_account
    sig { returns(UsBankAccount) }
    attr_reader :us_bank_account
    # Attribute for field wechat_pay
    sig { returns(WechatPay) }
    attr_reader :wechat_pay
    # Attribute for field zip
    sig { returns(Zip) }
    attr_reader :zip
    class ListParams < Stripe::RequestParams
      # The Connect application to filter by.
      sig { returns(T.nilable(String)) }
      attr_accessor :application
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
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::AcssDebit::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::AcssDebit::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Affirm < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Affirm::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Affirm::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class AfterpayClearpay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::AfterpayClearpay::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::AfterpayClearpay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Alipay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Alipay::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Alipay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Alma < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Alma::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Alma::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class AmazonPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::AmazonPay::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::AmazonPay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class ApplePay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::ApplePay::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::ApplePay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class ApplePayLater < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::ApplePayLater::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::ApplePayLater::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class AuBecsDebit < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::AuBecsDebit::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::AuBecsDebit::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class BacsDebit < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::BacsDebit::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::BacsDebit::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Bancontact < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Bancontact::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Bancontact::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Billie < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Billie::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Billie::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Blik < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Blik::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Blik::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Boleto < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Boleto::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Boleto::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Card < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Card::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Card::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class CartesBancaires < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::CartesBancaires::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::CartesBancaires::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Cashapp < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Cashapp::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Cashapp::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class CustomerBalance < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::CustomerBalance::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::CustomerBalance::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Eps < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Eps::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Eps::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Fpx < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Fpx::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Fpx::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Giropay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Giropay::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Giropay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class GooglePay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::GooglePay::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::GooglePay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Grabpay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Grabpay::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Grabpay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Ideal < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Ideal::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Ideal::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Jcb < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Jcb::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Jcb::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class KakaoPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::KakaoPay::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::KakaoPay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Klarna < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Klarna::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Klarna::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Konbini < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Konbini::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Konbini::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class KrCard < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::KrCard::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::KrCard::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Link < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Link::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Link::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Mobilepay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Mobilepay::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Mobilepay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Multibanco < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Multibanco::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Multibanco::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class NaverPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::NaverPay::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::NaverPay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class NzBankAccount < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::NzBankAccount::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::NzBankAccount::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Oxxo < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Oxxo::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Oxxo::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class P24 < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::P24::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::P24::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class PayByBank < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::PayByBank::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::PayByBank::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Payco < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Payco::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Payco::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Paynow < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Paynow::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Paynow::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Paypal < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Paypal::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Paypal::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Pix < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Pix::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Pix::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Promptpay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Promptpay::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Promptpay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class RevolutPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::RevolutPay::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::RevolutPay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class SamsungPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::SamsungPay::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::SamsungPay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Satispay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Satispay::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Satispay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class SepaDebit < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::SepaDebit::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::SepaDebit::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Sofort < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Sofort::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Sofort::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Swish < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Swish::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Swish::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Twint < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Twint::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Twint::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class UsBankAccount < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::UsBankAccount::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::UsBankAccount::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class WechatPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::WechatPay::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::WechatPay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Zip < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Zip::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Zip::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      # Canadian pre-authorized debit payments, check this [page](https://stripe.com/docs/payments/acss-debit) for more details like country availability.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::AcssDebit)) }
      attr_accessor :acss_debit
      # [Affirm](https://www.affirm.com/) gives your customers a way to split purchases over a series of payments. Depending on the purchase, they can pay with four interest-free payments (Split Pay) or pay over a longer term (Installments), which might include interest. Check this [page](https://stripe.com/docs/payments/affirm) for more details like country availability.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Affirm)) }
      attr_accessor :affirm
      # Afterpay gives your customers a way to pay for purchases in installments, check this [page](https://stripe.com/docs/payments/afterpay-clearpay) for more details like country availability. Afterpay is particularly popular among businesses selling fashion, beauty, and sports products.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::AfterpayClearpay))
       }
      attr_accessor :afterpay_clearpay
      # Alipay is a digital wallet in China that has more than a billion active users worldwide. Alipay users can pay on the web or on a mobile device using login credentials or their Alipay app. Alipay has a low dispute rate and reduces fraud by authenticating payments using the customer's login credentials. Check this [page](https://stripe.com/docs/payments/alipay) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Alipay)) }
      attr_accessor :alipay
      # Alma is a Buy Now, Pay Later payment method that offers customers the ability to pay in 2, 3, or 4 installments.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Alma)) }
      attr_accessor :alma
      # Amazon Pay is a wallet payment method that lets your customers check out the same way as on Amazon.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::AmazonPay)) }
      attr_accessor :amazon_pay
      # Stripe users can accept [Apple Pay](https://stripe.com/payments/apple-pay) in iOS applications in iOS 9 and later, and on the web in Safari starting with iOS 10 or macOS Sierra. There are no additional fees to process Apple Pay payments, and the [pricing](https://stripe.com/pricing) is the same as other card transactions. Check this [page](https://stripe.com/docs/apple-pay) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::ApplePay)) }
      attr_accessor :apple_pay
      # Apple Pay Later, a payment method for customers to buy now and pay later, gives your customers a way to split purchases into four installments across six weeks.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::ApplePayLater)) }
      attr_accessor :apple_pay_later
      # Stripe users in Australia can accept Bulk Electronic Clearing System (BECS) direct debit payments from customers with an Australian bank account. Check this [page](https://stripe.com/docs/payments/au-becs-debit) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::AuBecsDebit)) }
      attr_accessor :au_becs_debit
      # Stripe users in the UK can accept Bacs Direct Debit payments from customers with a UK bank account, check this [page](https://stripe.com/docs/payments/payment-methods/bacs-debit) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::BacsDebit)) }
      attr_accessor :bacs_debit
      # Bancontact is the most popular online payment method in Belgium, with over 15 million cards in circulation. [Customers](https://stripe.com/docs/api/customers) use a Bancontact card or mobile app linked to a Belgian bank account to make online payments that are secure, guaranteed, and confirmed immediately. Check this [page](https://stripe.com/docs/payments/bancontact) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Bancontact)) }
      attr_accessor :bancontact
      # Billie is a [single-use](https://docs.stripe.com/payments/payment-methods#usage) payment method that offers businesses Pay by Invoice where they offer payment terms ranging from 7-120 days. Customers are redirected from your website or app, authorize the payment with Billie, then return to your website or app. You get [immediate notification](/payments/payment-methods#payment-notification) of whether the payment succeeded or failed.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Billie)) }
      attr_accessor :billie
      # BLIK is a [single use](https://stripe.com/docs/payments/payment-methods#usage) payment method that requires customers to authenticate their payments. When customers want to pay online using BLIK, they request a six-digit code from their banking application and enter it into the payment collection form. Check this [page](https://stripe.com/docs/payments/blik) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Blik)) }
      attr_accessor :blik
      # Boleto is an official (regulated by the Central Bank of Brazil) payment method in Brazil. Check this [page](https://stripe.com/docs/payments/boleto) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Boleto)) }
      attr_accessor :boleto
      # Cards are a popular way for consumers and businesses to pay online or in person. Stripe supports global and local card networks.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Card)) }
      attr_accessor :card
      # Cartes Bancaires is France's local card network. More than 95% of these cards are co-branded with either Visa or Mastercard, meaning you can process these cards over either Cartes Bancaires or the Visa or Mastercard networks. Check this [page](https://stripe.com/docs/payments/cartes-bancaires) for more details.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::CartesBancaires))
       }
      attr_accessor :cartes_bancaires
      # Cash App is a popular consumer app in the US that allows customers to bank, invest, send, and receive money using their digital wallet. Check this [page](https://stripe.com/docs/payments/cash-app-pay) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Cashapp)) }
      attr_accessor :cashapp
      # Uses a customer’s [cash balance](https://stripe.com/docs/payments/customer-balance) for the payment. The cash balance can be funded via a bank transfer. Check this [page](https://stripe.com/docs/payments/bank-transfers) for more details.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::CustomerBalance))
       }
      attr_accessor :customer_balance
      # EPS is an Austria-based payment method that allows customers to complete transactions online using their bank credentials. EPS is supported by all Austrian banks and is accepted by over 80% of Austrian online retailers. Check this [page](https://stripe.com/docs/payments/eps) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Eps)) }
      attr_accessor :eps
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # Financial Process Exchange (FPX) is a Malaysia-based payment method that allows customers to complete transactions online using their bank credentials. Bank Negara Malaysia (BNM), the Central Bank of Malaysia, and eleven other major Malaysian financial institutions are members of the PayNet Group, which owns and operates FPX. It is one of the most popular online payment methods in Malaysia, with nearly 90 million transactions in 2018 according to BNM. Check this [page](https://stripe.com/docs/payments/fpx) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Fpx)) }
      attr_accessor :fpx
      # giropay is a German payment method based on online banking, introduced in 2006. It allows customers to complete transactions online using their online banking environment, with funds debited from their bank account. Depending on their bank, customers confirm payments on giropay using a second factor of authentication or a PIN. giropay accounts for 10% of online checkouts in Germany. Check this [page](https://stripe.com/docs/payments/giropay) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Giropay)) }
      attr_accessor :giropay
      # Google Pay allows customers to make payments in your app or website using any credit or debit card saved to their Google Account, including those from Google Play, YouTube, Chrome, or an Android device. Use the Google Pay API to request any credit or debit card stored in your customer's Google account. Check this [page](https://stripe.com/docs/google-pay) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::GooglePay)) }
      attr_accessor :google_pay
      # GrabPay is a payment method developed by [Grab](https://www.grab.com/sg/consumer/finance/pay/). GrabPay is a digital wallet - customers maintain a balance in their wallets that they pay out with. Check this [page](https://stripe.com/docs/payments/grabpay) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Grabpay)) }
      attr_accessor :grabpay
      # iDEAL is a Netherlands-based payment method that allows customers to complete transactions online using their bank credentials. All major Dutch banks are members of Currence, the scheme that operates iDEAL, making it the most popular online payment method in the Netherlands with a share of online transactions close to 55%. Check this [page](https://stripe.com/docs/payments/ideal) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Ideal)) }
      attr_accessor :ideal
      # JCB is a credit card company based in Japan. JCB is currently available in Japan to businesses approved by JCB, and available to all businesses in Australia, Canada, Hong Kong, Japan, New Zealand, Singapore, Switzerland, United Kingdom, United States, and all countries in the European Economic Area except Iceland. Check this [page](https://support.stripe.com/questions/accepting-japan-credit-bureau-%28jcb%29-payments) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Jcb)) }
      attr_accessor :jcb
      # Kakao Pay is a popular local wallet available in South Korea.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::KakaoPay)) }
      attr_accessor :kakao_pay
      # Klarna gives customers a range of [payment options](https://stripe.com/docs/payments/klarna#payment-options) during checkout. Available payment options vary depending on the customer's billing address and the transaction amount. These payment options make it convenient for customers to purchase items in all price ranges. Check this [page](https://stripe.com/docs/payments/klarna) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Klarna)) }
      attr_accessor :klarna
      # Konbini allows customers in Japan to pay for bills and online purchases at convenience stores with cash. Check this [page](https://stripe.com/docs/payments/konbini) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Konbini)) }
      attr_accessor :konbini
      # Korean cards let users pay using locally issued cards from South Korea.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::KrCard)) }
      attr_accessor :kr_card
      # [Link](https://stripe.com/docs/payments/link) is a payment method network. With Link, users save their payment details once, then reuse that information to pay with one click for any business on the network.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Link)) }
      attr_accessor :link
      # MobilePay is a [single-use](https://stripe.com/docs/payments/payment-methods#usage) card wallet payment method used in Denmark and Finland. It allows customers to [authenticate and approve](https://stripe.com/docs/payments/payment-methods#customer-actions) payments using the MobilePay app. Check this [page](https://stripe.com/docs/payments/mobilepay) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Mobilepay)) }
      attr_accessor :mobilepay
      # Stripe users in Europe and the United States can accept Multibanco payments from customers in Portugal using [Sources](https://stripe.com/docs/sources)—a single integration path for creating payments using any supported method.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Multibanco)) }
      attr_accessor :multibanco
      # Configuration name.
      sig { returns(T.nilable(String)) }
      attr_accessor :name
      # Naver Pay is a popular local wallet available in South Korea.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::NaverPay)) }
      attr_accessor :naver_pay
      # Stripe users in New Zealand can accept Bulk Electronic Clearing System (BECS) direct debit payments from customers with a New Zeland bank account. Check this [page](https://stripe.com/docs/payments/nz-bank-account) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::NzBankAccount)) }
      attr_accessor :nz_bank_account
      # OXXO is a Mexican chain of convenience stores with thousands of locations across Latin America and represents nearly 20% of online transactions in Mexico. OXXO allows customers to pay bills and online purchases in-store with cash. Check this [page](https://stripe.com/docs/payments/oxxo) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Oxxo)) }
      attr_accessor :oxxo
      # Przelewy24 is a Poland-based payment method aggregator that allows customers to complete transactions online using bank transfers and other methods. Bank transfers account for 30% of online payments in Poland and Przelewy24 provides a way for customers to pay with over 165 banks. Check this [page](https://stripe.com/docs/payments/p24) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::P24)) }
      attr_accessor :p24
      # Configuration's parent configuration. Specify to create a child configuration.
      sig { returns(T.nilable(String)) }
      attr_accessor :parent
      # Pay by bank is a redirect payment method backed by bank transfers. A customer is redirected to their bank to authorize a bank transfer for a given amount. This removes a lot of the error risks inherent in waiting for the customer to initiate a transfer themselves, and is less expensive than card payments.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::PayByBank)) }
      attr_accessor :pay_by_bank
      # PAYCO is a [single-use](https://docs.stripe.com/payments/payment-methods#usage local wallet available in South Korea.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Payco)) }
      attr_accessor :payco
      # PayNow is a Singapore-based payment method that allows customers to make a payment using their preferred app from participating banks and participating non-bank financial institutions. Check this [page](https://stripe.com/docs/payments/paynow) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Paynow)) }
      attr_accessor :paynow
      # PayPal, a digital wallet popular with customers in Europe, allows your customers worldwide to pay using their PayPal account. Check this [page](https://stripe.com/docs/payments/paypal) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Paypal)) }
      attr_accessor :paypal
      # Pix is a payment method popular in Brazil. When paying with Pix, customers authenticate and approve payments by scanning a QR code in their preferred banking app. Check this [page](https://docs.stripe.com/payments/pix) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Pix)) }
      attr_accessor :pix
      # PromptPay is a Thailand-based payment method that allows customers to make a payment using their preferred app from participating banks. Check this [page](https://stripe.com/docs/payments/promptpay) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Promptpay)) }
      attr_accessor :promptpay
      # Revolut Pay, developed by Revolut, a global finance app, is a digital wallet payment method. Revolut Pay uses the customer’s stored balance or cards to fund the payment, and offers the option for non-Revolut customers to save their details after their first purchase.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::RevolutPay)) }
      attr_accessor :revolut_pay
      # Samsung Pay is a [single-use](https://docs.stripe.com/payments/payment-methods#usage local wallet available in South Korea.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::SamsungPay)) }
      attr_accessor :samsung_pay
      # Satispay is a [single-use](https://docs.stripe.com/payments/payment-methods#usage) payment method where customers are required to [authenticate](/payments/payment-methods#customer-actions) their payment. Customers pay by being redirected from your website or app, authorizing the payment with Satispay, then returning to your website or app. You get [immediate notification](/payments/payment-methods#payment-notification) of whether the payment succeeded or failed.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Satispay)) }
      attr_accessor :satispay
      # The [Single Euro Payments Area (SEPA)](https://en.wikipedia.org/wiki/Single_Euro_Payments_Area) is an initiative of the European Union to simplify payments within and across member countries. SEPA established and enforced banking standards to allow for the direct debiting of every EUR-denominated bank account within the SEPA region, check this [page](https://stripe.com/docs/payments/sepa-debit) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::SepaDebit)) }
      attr_accessor :sepa_debit
      # Stripe users in Europe and the United States can use the [Payment Intents API](https://stripe.com/docs/payments/payment-intents)—a single integration path for creating payments using any supported method—to accept [Sofort](https://www.sofort.com/) payments from customers. Check this [page](https://stripe.com/docs/payments/sofort) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Sofort)) }
      attr_accessor :sofort
      # Swish is a [real-time](https://stripe.com/docs/payments/real-time) payment method popular in Sweden. It allows customers to [authenticate and approve](https://stripe.com/docs/payments/payment-methods#customer-actions) payments using the Swish mobile app and the Swedish BankID mobile app. Check this [page](https://stripe.com/docs/payments/swish) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Swish)) }
      attr_accessor :swish
      # Twint is a payment method popular in Switzerland. It allows customers to pay using their mobile phone. Check this [page](https://docs.stripe.com/payments/twint) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Twint)) }
      attr_accessor :twint
      # Stripe users in the United States can accept ACH direct debit payments from customers with a US bank account using the Automated Clearing House (ACH) payments system operated by Nacha. Check this [page](https://stripe.com/docs/payments/ach-direct-debit) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::UsBankAccount)) }
      attr_accessor :us_bank_account
      # WeChat, owned by Tencent, is China's leading mobile app with over 1 billion monthly active users. Chinese consumers can use WeChat Pay to pay for goods and services inside of businesses' apps and websites. WeChat Pay users buy most frequently in gaming, e-commerce, travel, online education, and food/nutrition. Check this [page](https://stripe.com/docs/payments/wechat-pay) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::WechatPay)) }
      attr_accessor :wechat_pay
      # Zip gives your customers a way to split purchases over a series of payments. Check this [page](https://stripe.com/docs/payments/zip) for more details like country availability.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::CreateParams::Zip)) }
      attr_accessor :zip
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
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::AcssDebit::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::AcssDebit::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Affirm < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Affirm::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Affirm::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class AfterpayClearpay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::AfterpayClearpay::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::AfterpayClearpay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Alipay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Alipay::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Alipay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Alma < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Alma::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Alma::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class AmazonPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::AmazonPay::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::AmazonPay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class ApplePay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::ApplePay::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::ApplePay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class ApplePayLater < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::ApplePayLater::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::ApplePayLater::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class AuBecsDebit < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::AuBecsDebit::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::AuBecsDebit::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class BacsDebit < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::BacsDebit::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::BacsDebit::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Bancontact < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Bancontact::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Bancontact::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Billie < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Billie::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Billie::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Blik < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Blik::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Blik::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Boleto < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Boleto::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Boleto::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Card < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Card::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Card::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class CartesBancaires < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::CartesBancaires::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::CartesBancaires::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Cashapp < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Cashapp::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Cashapp::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class CustomerBalance < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::CustomerBalance::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::CustomerBalance::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Eps < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Eps::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Eps::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Fpx < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Fpx::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Fpx::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Giropay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Giropay::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Giropay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class GooglePay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::GooglePay::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::GooglePay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Grabpay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Grabpay::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Grabpay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Ideal < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Ideal::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Ideal::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Jcb < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Jcb::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Jcb::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class KakaoPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::KakaoPay::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::KakaoPay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Klarna < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Klarna::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Klarna::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Konbini < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Konbini::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Konbini::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class KrCard < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::KrCard::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::KrCard::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Link < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Link::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Link::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Mobilepay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Mobilepay::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Mobilepay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Multibanco < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Multibanco::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Multibanco::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class NaverPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::NaverPay::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::NaverPay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class NzBankAccount < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::NzBankAccount::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::NzBankAccount::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Oxxo < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Oxxo::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Oxxo::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class P24 < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::P24::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::P24::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class PayByBank < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::PayByBank::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::PayByBank::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Payco < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Payco::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Payco::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Paynow < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Paynow::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Paynow::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Paypal < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Paypal::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Paypal::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Pix < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Pix::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Pix::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Promptpay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Promptpay::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Promptpay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class RevolutPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::RevolutPay::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::RevolutPay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class SamsungPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::SamsungPay::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::SamsungPay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Satispay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Satispay::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Satispay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class SepaDebit < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::SepaDebit::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::SepaDebit::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Sofort < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Sofort::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Sofort::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Swish < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Swish::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Swish::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Twint < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Twint::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Twint::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class UsBankAccount < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::UsBankAccount::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::UsBankAccount::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class WechatPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::WechatPay::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::WechatPay::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      class Zip < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(T.nilable(String)) }
          attr_accessor :preference
          sig { params(preference: T.nilable(String)).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Zip::DisplayPreference))
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Zip::DisplayPreference)).void
         }
        def initialize(display_preference: nil); end
      end
      # Canadian pre-authorized debit payments, check this [page](https://stripe.com/docs/payments/acss-debit) for more details like country availability.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::AcssDebit)) }
      attr_accessor :acss_debit
      # Whether the configuration can be used for new payments.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :active
      # [Affirm](https://www.affirm.com/) gives your customers a way to split purchases over a series of payments. Depending on the purchase, they can pay with four interest-free payments (Split Pay) or pay over a longer term (Installments), which might include interest. Check this [page](https://stripe.com/docs/payments/affirm) for more details like country availability.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Affirm)) }
      attr_accessor :affirm
      # Afterpay gives your customers a way to pay for purchases in installments, check this [page](https://stripe.com/docs/payments/afterpay-clearpay) for more details like country availability. Afterpay is particularly popular among businesses selling fashion, beauty, and sports products.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::AfterpayClearpay))
       }
      attr_accessor :afterpay_clearpay
      # Alipay is a digital wallet in China that has more than a billion active users worldwide. Alipay users can pay on the web or on a mobile device using login credentials or their Alipay app. Alipay has a low dispute rate and reduces fraud by authenticating payments using the customer's login credentials. Check this [page](https://stripe.com/docs/payments/alipay) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Alipay)) }
      attr_accessor :alipay
      # Alma is a Buy Now, Pay Later payment method that offers customers the ability to pay in 2, 3, or 4 installments.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Alma)) }
      attr_accessor :alma
      # Amazon Pay is a wallet payment method that lets your customers check out the same way as on Amazon.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::AmazonPay)) }
      attr_accessor :amazon_pay
      # Stripe users can accept [Apple Pay](https://stripe.com/payments/apple-pay) in iOS applications in iOS 9 and later, and on the web in Safari starting with iOS 10 or macOS Sierra. There are no additional fees to process Apple Pay payments, and the [pricing](https://stripe.com/pricing) is the same as other card transactions. Check this [page](https://stripe.com/docs/apple-pay) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::ApplePay)) }
      attr_accessor :apple_pay
      # Apple Pay Later, a payment method for customers to buy now and pay later, gives your customers a way to split purchases into four installments across six weeks.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::ApplePayLater)) }
      attr_accessor :apple_pay_later
      # Stripe users in Australia can accept Bulk Electronic Clearing System (BECS) direct debit payments from customers with an Australian bank account. Check this [page](https://stripe.com/docs/payments/au-becs-debit) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::AuBecsDebit)) }
      attr_accessor :au_becs_debit
      # Stripe users in the UK can accept Bacs Direct Debit payments from customers with a UK bank account, check this [page](https://stripe.com/docs/payments/payment-methods/bacs-debit) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::BacsDebit)) }
      attr_accessor :bacs_debit
      # Bancontact is the most popular online payment method in Belgium, with over 15 million cards in circulation. [Customers](https://stripe.com/docs/api/customers) use a Bancontact card or mobile app linked to a Belgian bank account to make online payments that are secure, guaranteed, and confirmed immediately. Check this [page](https://stripe.com/docs/payments/bancontact) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Bancontact)) }
      attr_accessor :bancontact
      # Billie is a [single-use](https://docs.stripe.com/payments/payment-methods#usage) payment method that offers businesses Pay by Invoice where they offer payment terms ranging from 7-120 days. Customers are redirected from your website or app, authorize the payment with Billie, then return to your website or app. You get [immediate notification](/payments/payment-methods#payment-notification) of whether the payment succeeded or failed.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Billie)) }
      attr_accessor :billie
      # BLIK is a [single use](https://stripe.com/docs/payments/payment-methods#usage) payment method that requires customers to authenticate their payments. When customers want to pay online using BLIK, they request a six-digit code from their banking application and enter it into the payment collection form. Check this [page](https://stripe.com/docs/payments/blik) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Blik)) }
      attr_accessor :blik
      # Boleto is an official (regulated by the Central Bank of Brazil) payment method in Brazil. Check this [page](https://stripe.com/docs/payments/boleto) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Boleto)) }
      attr_accessor :boleto
      # Cards are a popular way for consumers and businesses to pay online or in person. Stripe supports global and local card networks.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Card)) }
      attr_accessor :card
      # Cartes Bancaires is France's local card network. More than 95% of these cards are co-branded with either Visa or Mastercard, meaning you can process these cards over either Cartes Bancaires or the Visa or Mastercard networks. Check this [page](https://stripe.com/docs/payments/cartes-bancaires) for more details.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::CartesBancaires))
       }
      attr_accessor :cartes_bancaires
      # Cash App is a popular consumer app in the US that allows customers to bank, invest, send, and receive money using their digital wallet. Check this [page](https://stripe.com/docs/payments/cash-app-pay) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Cashapp)) }
      attr_accessor :cashapp
      # Uses a customer’s [cash balance](https://stripe.com/docs/payments/customer-balance) for the payment. The cash balance can be funded via a bank transfer. Check this [page](https://stripe.com/docs/payments/bank-transfers) for more details.
      sig {
        returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::CustomerBalance))
       }
      attr_accessor :customer_balance
      # EPS is an Austria-based payment method that allows customers to complete transactions online using their bank credentials. EPS is supported by all Austrian banks and is accepted by over 80% of Austrian online retailers. Check this [page](https://stripe.com/docs/payments/eps) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Eps)) }
      attr_accessor :eps
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # Financial Process Exchange (FPX) is a Malaysia-based payment method that allows customers to complete transactions online using their bank credentials. Bank Negara Malaysia (BNM), the Central Bank of Malaysia, and eleven other major Malaysian financial institutions are members of the PayNet Group, which owns and operates FPX. It is one of the most popular online payment methods in Malaysia, with nearly 90 million transactions in 2018 according to BNM. Check this [page](https://stripe.com/docs/payments/fpx) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Fpx)) }
      attr_accessor :fpx
      # giropay is a German payment method based on online banking, introduced in 2006. It allows customers to complete transactions online using their online banking environment, with funds debited from their bank account. Depending on their bank, customers confirm payments on giropay using a second factor of authentication or a PIN. giropay accounts for 10% of online checkouts in Germany. Check this [page](https://stripe.com/docs/payments/giropay) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Giropay)) }
      attr_accessor :giropay
      # Google Pay allows customers to make payments in your app or website using any credit or debit card saved to their Google Account, including those from Google Play, YouTube, Chrome, or an Android device. Use the Google Pay API to request any credit or debit card stored in your customer's Google account. Check this [page](https://stripe.com/docs/google-pay) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::GooglePay)) }
      attr_accessor :google_pay
      # GrabPay is a payment method developed by [Grab](https://www.grab.com/sg/consumer/finance/pay/). GrabPay is a digital wallet - customers maintain a balance in their wallets that they pay out with. Check this [page](https://stripe.com/docs/payments/grabpay) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Grabpay)) }
      attr_accessor :grabpay
      # iDEAL is a Netherlands-based payment method that allows customers to complete transactions online using their bank credentials. All major Dutch banks are members of Currence, the scheme that operates iDEAL, making it the most popular online payment method in the Netherlands with a share of online transactions close to 55%. Check this [page](https://stripe.com/docs/payments/ideal) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Ideal)) }
      attr_accessor :ideal
      # JCB is a credit card company based in Japan. JCB is currently available in Japan to businesses approved by JCB, and available to all businesses in Australia, Canada, Hong Kong, Japan, New Zealand, Singapore, Switzerland, United Kingdom, United States, and all countries in the European Economic Area except Iceland. Check this [page](https://support.stripe.com/questions/accepting-japan-credit-bureau-%28jcb%29-payments) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Jcb)) }
      attr_accessor :jcb
      # Kakao Pay is a popular local wallet available in South Korea.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::KakaoPay)) }
      attr_accessor :kakao_pay
      # Klarna gives customers a range of [payment options](https://stripe.com/docs/payments/klarna#payment-options) during checkout. Available payment options vary depending on the customer's billing address and the transaction amount. These payment options make it convenient for customers to purchase items in all price ranges. Check this [page](https://stripe.com/docs/payments/klarna) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Klarna)) }
      attr_accessor :klarna
      # Konbini allows customers in Japan to pay for bills and online purchases at convenience stores with cash. Check this [page](https://stripe.com/docs/payments/konbini) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Konbini)) }
      attr_accessor :konbini
      # Korean cards let users pay using locally issued cards from South Korea.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::KrCard)) }
      attr_accessor :kr_card
      # [Link](https://stripe.com/docs/payments/link) is a payment method network. With Link, users save their payment details once, then reuse that information to pay with one click for any business on the network.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Link)) }
      attr_accessor :link
      # MobilePay is a [single-use](https://stripe.com/docs/payments/payment-methods#usage) card wallet payment method used in Denmark and Finland. It allows customers to [authenticate and approve](https://stripe.com/docs/payments/payment-methods#customer-actions) payments using the MobilePay app. Check this [page](https://stripe.com/docs/payments/mobilepay) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Mobilepay)) }
      attr_accessor :mobilepay
      # Stripe users in Europe and the United States can accept Multibanco payments from customers in Portugal using [Sources](https://stripe.com/docs/sources)—a single integration path for creating payments using any supported method.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Multibanco)) }
      attr_accessor :multibanco
      # Configuration name.
      sig { returns(T.nilable(String)) }
      attr_accessor :name
      # Naver Pay is a popular local wallet available in South Korea.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::NaverPay)) }
      attr_accessor :naver_pay
      # Stripe users in New Zealand can accept Bulk Electronic Clearing System (BECS) direct debit payments from customers with a New Zeland bank account. Check this [page](https://stripe.com/docs/payments/nz-bank-account) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::NzBankAccount)) }
      attr_accessor :nz_bank_account
      # OXXO is a Mexican chain of convenience stores with thousands of locations across Latin America and represents nearly 20% of online transactions in Mexico. OXXO allows customers to pay bills and online purchases in-store with cash. Check this [page](https://stripe.com/docs/payments/oxxo) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Oxxo)) }
      attr_accessor :oxxo
      # Przelewy24 is a Poland-based payment method aggregator that allows customers to complete transactions online using bank transfers and other methods. Bank transfers account for 30% of online payments in Poland and Przelewy24 provides a way for customers to pay with over 165 banks. Check this [page](https://stripe.com/docs/payments/p24) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::P24)) }
      attr_accessor :p24
      # Pay by bank is a redirect payment method backed by bank transfers. A customer is redirected to their bank to authorize a bank transfer for a given amount. This removes a lot of the error risks inherent in waiting for the customer to initiate a transfer themselves, and is less expensive than card payments.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::PayByBank)) }
      attr_accessor :pay_by_bank
      # PAYCO is a [single-use](https://docs.stripe.com/payments/payment-methods#usage local wallet available in South Korea.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Payco)) }
      attr_accessor :payco
      # PayNow is a Singapore-based payment method that allows customers to make a payment using their preferred app from participating banks and participating non-bank financial institutions. Check this [page](https://stripe.com/docs/payments/paynow) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Paynow)) }
      attr_accessor :paynow
      # PayPal, a digital wallet popular with customers in Europe, allows your customers worldwide to pay using their PayPal account. Check this [page](https://stripe.com/docs/payments/paypal) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Paypal)) }
      attr_accessor :paypal
      # Pix is a payment method popular in Brazil. When paying with Pix, customers authenticate and approve payments by scanning a QR code in their preferred banking app. Check this [page](https://docs.stripe.com/payments/pix) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Pix)) }
      attr_accessor :pix
      # PromptPay is a Thailand-based payment method that allows customers to make a payment using their preferred app from participating banks. Check this [page](https://stripe.com/docs/payments/promptpay) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Promptpay)) }
      attr_accessor :promptpay
      # Revolut Pay, developed by Revolut, a global finance app, is a digital wallet payment method. Revolut Pay uses the customer’s stored balance or cards to fund the payment, and offers the option for non-Revolut customers to save their details after their first purchase.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::RevolutPay)) }
      attr_accessor :revolut_pay
      # Samsung Pay is a [single-use](https://docs.stripe.com/payments/payment-methods#usage local wallet available in South Korea.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::SamsungPay)) }
      attr_accessor :samsung_pay
      # Satispay is a [single-use](https://docs.stripe.com/payments/payment-methods#usage) payment method where customers are required to [authenticate](/payments/payment-methods#customer-actions) their payment. Customers pay by being redirected from your website or app, authorizing the payment with Satispay, then returning to your website or app. You get [immediate notification](/payments/payment-methods#payment-notification) of whether the payment succeeded or failed.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Satispay)) }
      attr_accessor :satispay
      # The [Single Euro Payments Area (SEPA)](https://en.wikipedia.org/wiki/Single_Euro_Payments_Area) is an initiative of the European Union to simplify payments within and across member countries. SEPA established and enforced banking standards to allow for the direct debiting of every EUR-denominated bank account within the SEPA region, check this [page](https://stripe.com/docs/payments/sepa-debit) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::SepaDebit)) }
      attr_accessor :sepa_debit
      # Stripe users in Europe and the United States can use the [Payment Intents API](https://stripe.com/docs/payments/payment-intents)—a single integration path for creating payments using any supported method—to accept [Sofort](https://www.sofort.com/) payments from customers. Check this [page](https://stripe.com/docs/payments/sofort) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Sofort)) }
      attr_accessor :sofort
      # Swish is a [real-time](https://stripe.com/docs/payments/real-time) payment method popular in Sweden. It allows customers to [authenticate and approve](https://stripe.com/docs/payments/payment-methods#customer-actions) payments using the Swish mobile app and the Swedish BankID mobile app. Check this [page](https://stripe.com/docs/payments/swish) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Swish)) }
      attr_accessor :swish
      # Twint is a payment method popular in Switzerland. It allows customers to pay using their mobile phone. Check this [page](https://docs.stripe.com/payments/twint) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Twint)) }
      attr_accessor :twint
      # Stripe users in the United States can accept ACH direct debit payments from customers with a US bank account using the Automated Clearing House (ACH) payments system operated by Nacha. Check this [page](https://stripe.com/docs/payments/ach-direct-debit) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::UsBankAccount)) }
      attr_accessor :us_bank_account
      # WeChat, owned by Tencent, is China's leading mobile app with over 1 billion monthly active users. Chinese consumers can use WeChat Pay to pay for goods and services inside of businesses' apps and websites. WeChat Pay users buy most frequently in gaming, e-commerce, travel, online education, and food/nutrition. Check this [page](https://stripe.com/docs/payments/wechat-pay) for more details.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::WechatPay)) }
      attr_accessor :wechat_pay
      # Zip gives your customers a way to split purchases over a series of payments. Check this [page](https://stripe.com/docs/payments/zip) for more details like country availability.
      sig { returns(T.nilable(::Stripe::PaymentMethodConfiguration::UpdateParams::Zip)) }
      attr_accessor :zip
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