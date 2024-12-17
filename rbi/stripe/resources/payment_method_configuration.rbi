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
    class Gopay < Stripe::StripeObject
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
    class IdBankTransfer < Stripe::StripeObject
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
    class Payto < Stripe::StripeObject
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
    class Qris < Stripe::StripeObject
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
    class Shopeepay < Stripe::StripeObject
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
    # Attribute for field gopay
    sig { returns(Gopay) }
    attr_reader :gopay
    # Attribute for field grabpay
    sig { returns(Grabpay) }
    attr_reader :grabpay
    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id
    # Attribute for field id_bank_transfer
    sig { returns(IdBankTransfer) }
    attr_reader :id_bank_transfer
    # Attribute for field ideal
    sig { returns(Ideal) }
    attr_reader :ideal
    # The default configuration is used whenever a payment method configuration is not specified.
    sig { returns(T::Boolean) }
    attr_reader :is_default
    # Attribute for field jcb
    sig { returns(Jcb) }
    attr_reader :jcb
    # Attribute for field klarna
    sig { returns(Klarna) }
    attr_reader :klarna
    # Attribute for field konbini
    sig { returns(Konbini) }
    attr_reader :konbini
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
    # Attribute for field paynow
    sig { returns(Paynow) }
    attr_reader :paynow
    # Attribute for field paypal
    sig { returns(Paypal) }
    attr_reader :paypal
    # Attribute for field payto
    sig { returns(Payto) }
    attr_reader :payto
    # Attribute for field promptpay
    sig { returns(Promptpay) }
    attr_reader :promptpay
    # Attribute for field qris
    sig { returns(Qris) }
    attr_reader :qris
    # Attribute for field revolut_pay
    sig { returns(RevolutPay) }
    attr_reader :revolut_pay
    # Attribute for field sepa_debit
    sig { returns(SepaDebit) }
    attr_reader :sepa_debit
    # Attribute for field shopeepay
    sig { returns(Shopeepay) }
    attr_reader :shopeepay
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
      sig { returns(String) }
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(Integer) }
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(String) }
      attr_accessor :starting_after
      sig {
        params(application: T.nilable(String), ending_before: String, expand: T::Array[String], limit: Integer, starting_after: String).void
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
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::CreateParams::AcssDebit::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::CreateParams::AcssDebit::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Affirm < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::CreateParams::Affirm::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::CreateParams::Affirm::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class AfterpayClearpay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::CreateParams::AfterpayClearpay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::CreateParams::AfterpayClearpay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Alipay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::CreateParams::Alipay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::CreateParams::Alipay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Alma < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::Alma::DisplayPreference) }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::CreateParams::Alma::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class AmazonPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::CreateParams::AmazonPay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::CreateParams::AmazonPay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class ApplePay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::CreateParams::ApplePay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::CreateParams::ApplePay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class ApplePayLater < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::CreateParams::ApplePayLater::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::CreateParams::ApplePayLater::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class AuBecsDebit < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::CreateParams::AuBecsDebit::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::CreateParams::AuBecsDebit::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class BacsDebit < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::CreateParams::BacsDebit::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::CreateParams::BacsDebit::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Bancontact < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::CreateParams::Bancontact::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::CreateParams::Bancontact::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Blik < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::Blik::DisplayPreference) }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::CreateParams::Blik::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Boleto < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::CreateParams::Boleto::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::CreateParams::Boleto::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Card < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::Card::DisplayPreference) }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::CreateParams::Card::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class CartesBancaires < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::CreateParams::CartesBancaires::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::CreateParams::CartesBancaires::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Cashapp < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::CreateParams::Cashapp::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::CreateParams::Cashapp::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class CustomerBalance < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::CreateParams::CustomerBalance::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::CreateParams::CustomerBalance::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Eps < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::Eps::DisplayPreference) }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::CreateParams::Eps::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Fpx < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::Fpx::DisplayPreference) }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::CreateParams::Fpx::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Giropay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::CreateParams::Giropay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::CreateParams::Giropay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class GooglePay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::CreateParams::GooglePay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::CreateParams::GooglePay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Gopay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::CreateParams::Gopay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::CreateParams::Gopay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Grabpay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::CreateParams::Grabpay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::CreateParams::Grabpay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class IdBankTransfer < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::CreateParams::IdBankTransfer::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::CreateParams::IdBankTransfer::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Ideal < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::CreateParams::Ideal::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::CreateParams::Ideal::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Jcb < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::Jcb::DisplayPreference) }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::CreateParams::Jcb::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Klarna < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::CreateParams::Klarna::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::CreateParams::Klarna::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Konbini < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::CreateParams::Konbini::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::CreateParams::Konbini::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Link < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::Link::DisplayPreference) }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::CreateParams::Link::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Mobilepay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::CreateParams::Mobilepay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::CreateParams::Mobilepay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Multibanco < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::CreateParams::Multibanco::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::CreateParams::Multibanco::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Oxxo < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::Oxxo::DisplayPreference) }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::CreateParams::Oxxo::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class P24 < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::P24::DisplayPreference) }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::CreateParams::P24::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Paynow < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::CreateParams::Paynow::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::CreateParams::Paynow::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Paypal < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::CreateParams::Paypal::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::CreateParams::Paypal::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Payto < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::CreateParams::Payto::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::CreateParams::Payto::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Promptpay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::CreateParams::Promptpay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::CreateParams::Promptpay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Qris < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::Qris::DisplayPreference) }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::CreateParams::Qris::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class RevolutPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::CreateParams::RevolutPay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::CreateParams::RevolutPay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class SepaDebit < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::CreateParams::SepaDebit::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::CreateParams::SepaDebit::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Shopeepay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::CreateParams::Shopeepay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::CreateParams::Shopeepay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Sofort < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::CreateParams::Sofort::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::CreateParams::Sofort::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Swish < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::CreateParams::Swish::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::CreateParams::Swish::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Twint < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::CreateParams::Twint::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::CreateParams::Twint::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class UsBankAccount < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::CreateParams::UsBankAccount::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::CreateParams::UsBankAccount::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class WechatPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::CreateParams::WechatPay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::CreateParams::WechatPay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Zip < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::Zip::DisplayPreference) }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::CreateParams::Zip::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      # Canadian pre-authorized debit payments, check this [page](https://stripe.com/docs/payments/acss-debit) for more details like country availability.
      sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::AcssDebit) }
      attr_accessor :acss_debit
      # [Affirm](https://www.affirm.com/) gives your customers a way to split purchases over a series of payments. Depending on the purchase, they can pay with four interest-free payments (Split Pay) or pay over a longer term (Installments), which might include interest. Check this [page](https://stripe.com/docs/payments/affirm) for more details like country availability.
      sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::Affirm) }
      attr_accessor :affirm
      # Afterpay gives your customers a way to pay for purchases in installments, check this [page](https://stripe.com/docs/payments/afterpay-clearpay) for more details like country availability. Afterpay is particularly popular among businesses selling fashion, beauty, and sports products.
      sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::AfterpayClearpay) }
      attr_accessor :afterpay_clearpay
      # Alipay is a digital wallet in China that has more than a billion active users worldwide. Alipay users can pay on the web or on a mobile device using login credentials or their Alipay app. Alipay has a low dispute rate and reduces fraud by authenticating payments using the customer's login credentials. Check this [page](https://stripe.com/docs/payments/alipay) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::Alipay) }
      attr_accessor :alipay
      # Alma is a Buy Now, Pay Later payment method that offers customers the ability to pay in 2, 3, or 4 installments.
      sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::Alma) }
      attr_accessor :alma
      # Amazon Pay is a wallet payment method that lets your customers check out the same way as on Amazon.
      sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::AmazonPay) }
      attr_accessor :amazon_pay
      # Stripe users can accept [Apple Pay](/payments/apple-pay) in iOS applications in iOS 9 and later, and on the web in Safari starting with iOS 10 or macOS Sierra. There are no additional fees to process Apple Pay payments, and the [pricing](/pricing) is the same as other card transactions. Check this [page](https://stripe.com/docs/apple-pay) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::ApplePay) }
      attr_accessor :apple_pay
      # Apple Pay Later, a payment method for customers to buy now and pay later, gives your customers a way to split purchases into four installments across six weeks.
      sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::ApplePayLater) }
      attr_accessor :apple_pay_later
      # Stripe users in Australia can accept Bulk Electronic Clearing System (BECS) direct debit payments from customers with an Australian bank account. Check this [page](https://stripe.com/docs/payments/au-becs-debit) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::AuBecsDebit) }
      attr_accessor :au_becs_debit
      # Stripe users in the UK can accept Bacs Direct Debit payments from customers with a UK bank account, check this [page](https://stripe.com/docs/payments/payment-methods/bacs-debit) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::BacsDebit) }
      attr_accessor :bacs_debit
      # Bancontact is the most popular online payment method in Belgium, with over 15 million cards in circulation. [Customers](https://stripe.com/docs/api/customers) use a Bancontact card or mobile app linked to a Belgian bank account to make online payments that are secure, guaranteed, and confirmed immediately. Check this [page](https://stripe.com/docs/payments/bancontact) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::Bancontact) }
      attr_accessor :bancontact
      # BLIK is a [single use](https://stripe.com/docs/payments/payment-methods#usage) payment method that requires customers to authenticate their payments. When customers want to pay online using BLIK, they request a six-digit code from their banking application and enter it into the payment collection form. Check this [page](https://stripe.com/docs/payments/blik) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::Blik) }
      attr_accessor :blik
      # Boleto is an official (regulated by the Central Bank of Brazil) payment method in Brazil. Check this [page](https://stripe.com/docs/payments/boleto) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::Boleto) }
      attr_accessor :boleto
      # Cards are a popular way for consumers and businesses to pay online or in person. Stripe supports global and local card networks.
      sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::Card) }
      attr_accessor :card
      # Cartes Bancaires is France's local card network. More than 95% of these cards are co-branded with either Visa or Mastercard, meaning you can process these cards over either Cartes Bancaires or the Visa or Mastercard networks. Check this [page](https://stripe.com/docs/payments/cartes-bancaires) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::CartesBancaires) }
      attr_accessor :cartes_bancaires
      # Cash App is a popular consumer app in the US that allows customers to bank, invest, send, and receive money using their digital wallet. Check this [page](https://stripe.com/docs/payments/cash-app-pay) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::Cashapp) }
      attr_accessor :cashapp
      # Uses a customer’s [cash balance](https://stripe.com/docs/payments/customer-balance) for the payment. The cash balance can be funded via a bank transfer. Check this [page](https://stripe.com/docs/payments/bank-transfers) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::CustomerBalance) }
      attr_accessor :customer_balance
      # EPS is an Austria-based payment method that allows customers to complete transactions online using their bank credentials. EPS is supported by all Austrian banks and is accepted by over 80% of Austrian online retailers. Check this [page](https://stripe.com/docs/payments/eps) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::Eps) }
      attr_accessor :eps
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # Financial Process Exchange (FPX) is a Malaysia-based payment method that allows customers to complete transactions online using their bank credentials. Bank Negara Malaysia (BNM), the Central Bank of Malaysia, and eleven other major Malaysian financial institutions are members of the PayNet Group, which owns and operates FPX. It is one of the most popular online payment methods in Malaysia, with nearly 90 million transactions in 2018 according to BNM. Check this [page](https://stripe.com/docs/payments/fpx) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::Fpx) }
      attr_accessor :fpx
      # giropay is a German payment method based on online banking, introduced in 2006. It allows customers to complete transactions online using their online banking environment, with funds debited from their bank account. Depending on their bank, customers confirm payments on giropay using a second factor of authentication or a PIN. giropay accounts for 10% of online checkouts in Germany. Check this [page](https://stripe.com/docs/payments/giropay) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::Giropay) }
      attr_accessor :giropay
      # Google Pay allows customers to make payments in your app or website using any credit or debit card saved to their Google Account, including those from Google Play, YouTube, Chrome, or an Android device. Use the Google Pay API to request any credit or debit card stored in your customer's Google account. Check this [page](https://stripe.com/docs/google-pay) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::GooglePay) }
      attr_accessor :google_pay
      # GoPay is a [single use](https://stripe.com/docs/payments/payment-methods#usage) digital wallet payment method popular in Indonesia. When paying with GoPay, customers authenticate and approve payments using the Gojek app. Desktop checkout is performed by scanning a QR code. When checking out on mobile, customers are redirected to the Gojek app to confirm payment.
      sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::Gopay) }
      attr_accessor :gopay
      # GrabPay is a payment method developed by [Grab](https://www.grab.com/sg/consumer/finance/pay/). GrabPay is a digital wallet - customers maintain a balance in their wallets that they pay out with. Check this [page](https://stripe.com/docs/payments/grabpay) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::Grabpay) }
      attr_accessor :grabpay
      # Stripe users in Indonesia can receive bank transfers from customers in Indonesia. Bank transfers are a popular B2C and B2B payment method in Indonesia.
      sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::IdBankTransfer) }
      attr_accessor :id_bank_transfer
      # iDEAL is a Netherlands-based payment method that allows customers to complete transactions online using their bank credentials. All major Dutch banks are members of Currence, the scheme that operates iDEAL, making it the most popular online payment method in the Netherlands with a share of online transactions close to 55%. Check this [page](https://stripe.com/docs/payments/ideal) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::Ideal) }
      attr_accessor :ideal
      # JCB is a credit card company based in Japan. JCB is currently available in Japan to businesses approved by JCB, and available to all businesses in Australia, Canada, Hong Kong, Japan, New Zealand, Singapore, Switzerland, United Kingdom, United States, and all countries in the European Economic Area except Iceland. Check this [page](https://support.stripe.com/questions/accepting-japan-credit-bureau-%28jcb%29-payments) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::Jcb) }
      attr_accessor :jcb
      # Klarna gives customers a range of [payment options](https://stripe.com/docs/payments/klarna#payment-options) during checkout. Available payment options vary depending on the customer's billing address and the transaction amount. These payment options make it convenient for customers to purchase items in all price ranges. Check this [page](https://stripe.com/docs/payments/klarna) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::Klarna) }
      attr_accessor :klarna
      # Konbini allows customers in Japan to pay for bills and online purchases at convenience stores with cash. Check this [page](https://stripe.com/docs/payments/konbini) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::Konbini) }
      attr_accessor :konbini
      # [Link](https://stripe.com/docs/payments/link) is a payment method network. With Link, users save their payment details once, then reuse that information to pay with one click for any business on the network.
      sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::Link) }
      attr_accessor :link
      # MobilePay is a [single-use](https://stripe.com/docs/payments/payment-methods#usage) card wallet payment method used in Denmark and Finland. It allows customers to [authenticate and approve](https://stripe.com/docs/payments/payment-methods#customer-actions) payments using the MobilePay app. Check this [page](https://stripe.com/docs/payments/mobilepay) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::Mobilepay) }
      attr_accessor :mobilepay
      # Stripe users in Europe and the United States can accept Multibanco payments from customers in Portugal using [Sources](https://stripe.com/docs/sources)—a single integration path for creating payments using any supported method.
      sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::Multibanco) }
      attr_accessor :multibanco
      # Configuration name.
      sig { returns(String) }
      attr_accessor :name
      # OXXO is a Mexican chain of convenience stores with thousands of locations across Latin America and represents nearly 20% of online transactions in Mexico. OXXO allows customers to pay bills and online purchases in-store with cash. Check this [page](https://stripe.com/docs/payments/oxxo) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::Oxxo) }
      attr_accessor :oxxo
      # Przelewy24 is a Poland-based payment method aggregator that allows customers to complete transactions online using bank transfers and other methods. Bank transfers account for 30% of online payments in Poland and Przelewy24 provides a way for customers to pay with over 165 banks. Check this [page](https://stripe.com/docs/payments/p24) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::P24) }
      attr_accessor :p24
      # Configuration's parent configuration. Specify to create a child configuration.
      sig { returns(String) }
      attr_accessor :parent
      # PayNow is a Singapore-based payment method that allows customers to make a payment using their preferred app from participating banks and participating non-bank financial institutions. Check this [page](https://stripe.com/docs/payments/paynow) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::Paynow) }
      attr_accessor :paynow
      # PayPal, a digital wallet popular with customers in Europe, allows your customers worldwide to pay using their PayPal account. Check this [page](https://stripe.com/docs/payments/paypal) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::Paypal) }
      attr_accessor :paypal
      # PayTo is a [real-time](https://docs.stripe.com/payments/real-time) payment method that enables customers in Australia to pay by providing their bank account details. Customers must accept a mandate authorizing you to debit their account. Check this [page](https://docs.stripe.com/payments/payto) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::Payto) }
      attr_accessor :payto
      # PromptPay is a Thailand-based payment method that allows customers to make a payment using their preferred app from participating banks. Check this [page](https://stripe.com/docs/payments/promptpay) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::Promptpay) }
      attr_accessor :promptpay
      # QRIS is a [real-time](https://docs.stripe.com/payments/real-time) payment method popular in Indonesia. When paying with QRIS, customers authenticate and approve payments by scanning a QR code in their preferred digital wallet app.
      sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::Qris) }
      attr_accessor :qris
      # Revolut Pay, developed by Revolut, a global finance app, is a digital wallet payment method. Revolut Pay uses the customer’s stored balance or cards to fund the payment, and offers the option for non-Revolut customers to save their details after their first purchase.
      sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::RevolutPay) }
      attr_accessor :revolut_pay
      # The [Single Euro Payments Area (SEPA)](https://en.wikipedia.org/wiki/Single_Euro_Payments_Area) is an initiative of the European Union to simplify payments within and across member countries. SEPA established and enforced banking standards to allow for the direct debiting of every EUR-denominated bank account within the SEPA region, check this [page](https://stripe.com/docs/payments/sepa-debit) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::SepaDebit) }
      attr_accessor :sepa_debit
      # ShopeePay is a [single use](https://stripe.com/docs/payments/payment-methods#usage) digital wallet payment method popular in Indonesia. When paying with GoPay, customers authenticate and approve payments using the Shopee app. Desktop checkout is performed by scanning a QR code. When checking out on mobile, customers are redirected to the Shopee app to confirm payment.
      sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::Shopeepay) }
      attr_accessor :shopeepay
      # Stripe users in Europe and the United States can use the [Payment Intents API](https://stripe.com/docs/payments/payment-intents)—a single integration path for creating payments using any supported method—to accept [Sofort](https://www.sofort.com/) payments from customers. Check this [page](https://stripe.com/docs/payments/sofort) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::Sofort) }
      attr_accessor :sofort
      # Swish is a [real-time](https://stripe.com/docs/payments/real-time) payment method popular in Sweden. It allows customers to [authenticate and approve](https://stripe.com/docs/payments/payment-methods#customer-actions) payments using the Swish mobile app and the Swedish BankID mobile app. Check this [page](https://stripe.com/docs/payments/swish) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::Swish) }
      attr_accessor :swish
      # Twint is a payment method popular in Switzerland. It allows customers to pay using their mobile phone. Check this [page](https://docs.stripe.com/payments/twint) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::Twint) }
      attr_accessor :twint
      # Stripe users in the United States can accept ACH direct debit payments from customers with a US bank account using the Automated Clearing House (ACH) payments system operated by Nacha. Check this [page](https://stripe.com/docs/payments/ach-direct-debit) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::UsBankAccount) }
      attr_accessor :us_bank_account
      # WeChat, owned by Tencent, is China's leading mobile app with over 1 billion monthly active users. Chinese consumers can use WeChat Pay to pay for goods and services inside of businesses' apps and websites. WeChat Pay users buy most frequently in gaming, e-commerce, travel, online education, and food/nutrition. Check this [page](https://stripe.com/docs/payments/wechat-pay) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::WechatPay) }
      attr_accessor :wechat_pay
      # Zip gives your customers a way to split purchases over a series of payments. Check this [page](https://stripe.com/docs/payments/zip) for more details like country availability.
      sig { returns(::Stripe::PaymentMethodConfiguration::CreateParams::Zip) }
      attr_accessor :zip
      sig {
        params(acss_debit: ::Stripe::PaymentMethodConfiguration::CreateParams::AcssDebit, affirm: ::Stripe::PaymentMethodConfiguration::CreateParams::Affirm, afterpay_clearpay: ::Stripe::PaymentMethodConfiguration::CreateParams::AfterpayClearpay, alipay: ::Stripe::PaymentMethodConfiguration::CreateParams::Alipay, alma: ::Stripe::PaymentMethodConfiguration::CreateParams::Alma, amazon_pay: ::Stripe::PaymentMethodConfiguration::CreateParams::AmazonPay, apple_pay: ::Stripe::PaymentMethodConfiguration::CreateParams::ApplePay, apple_pay_later: ::Stripe::PaymentMethodConfiguration::CreateParams::ApplePayLater, au_becs_debit: ::Stripe::PaymentMethodConfiguration::CreateParams::AuBecsDebit, bacs_debit: ::Stripe::PaymentMethodConfiguration::CreateParams::BacsDebit, bancontact: ::Stripe::PaymentMethodConfiguration::CreateParams::Bancontact, blik: ::Stripe::PaymentMethodConfiguration::CreateParams::Blik, boleto: ::Stripe::PaymentMethodConfiguration::CreateParams::Boleto, card: ::Stripe::PaymentMethodConfiguration::CreateParams::Card, cartes_bancaires: ::Stripe::PaymentMethodConfiguration::CreateParams::CartesBancaires, cashapp: ::Stripe::PaymentMethodConfiguration::CreateParams::Cashapp, customer_balance: ::Stripe::PaymentMethodConfiguration::CreateParams::CustomerBalance, eps: ::Stripe::PaymentMethodConfiguration::CreateParams::Eps, expand: T::Array[String], fpx: ::Stripe::PaymentMethodConfiguration::CreateParams::Fpx, giropay: ::Stripe::PaymentMethodConfiguration::CreateParams::Giropay, google_pay: ::Stripe::PaymentMethodConfiguration::CreateParams::GooglePay, gopay: ::Stripe::PaymentMethodConfiguration::CreateParams::Gopay, grabpay: ::Stripe::PaymentMethodConfiguration::CreateParams::Grabpay, id_bank_transfer: ::Stripe::PaymentMethodConfiguration::CreateParams::IdBankTransfer, ideal: ::Stripe::PaymentMethodConfiguration::CreateParams::Ideal, jcb: ::Stripe::PaymentMethodConfiguration::CreateParams::Jcb, klarna: ::Stripe::PaymentMethodConfiguration::CreateParams::Klarna, konbini: ::Stripe::PaymentMethodConfiguration::CreateParams::Konbini, link: ::Stripe::PaymentMethodConfiguration::CreateParams::Link, mobilepay: ::Stripe::PaymentMethodConfiguration::CreateParams::Mobilepay, multibanco: ::Stripe::PaymentMethodConfiguration::CreateParams::Multibanco, name: String, oxxo: ::Stripe::PaymentMethodConfiguration::CreateParams::Oxxo, p24: ::Stripe::PaymentMethodConfiguration::CreateParams::P24, parent: String, paynow: ::Stripe::PaymentMethodConfiguration::CreateParams::Paynow, paypal: ::Stripe::PaymentMethodConfiguration::CreateParams::Paypal, payto: ::Stripe::PaymentMethodConfiguration::CreateParams::Payto, promptpay: ::Stripe::PaymentMethodConfiguration::CreateParams::Promptpay, qris: ::Stripe::PaymentMethodConfiguration::CreateParams::Qris, revolut_pay: ::Stripe::PaymentMethodConfiguration::CreateParams::RevolutPay, sepa_debit: ::Stripe::PaymentMethodConfiguration::CreateParams::SepaDebit, shopeepay: ::Stripe::PaymentMethodConfiguration::CreateParams::Shopeepay, sofort: ::Stripe::PaymentMethodConfiguration::CreateParams::Sofort, swish: ::Stripe::PaymentMethodConfiguration::CreateParams::Swish, twint: ::Stripe::PaymentMethodConfiguration::CreateParams::Twint, us_bank_account: ::Stripe::PaymentMethodConfiguration::CreateParams::UsBankAccount, wechat_pay: ::Stripe::PaymentMethodConfiguration::CreateParams::WechatPay, zip: ::Stripe::PaymentMethodConfiguration::CreateParams::Zip).void
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
        gopay: nil,
        grabpay: nil,
        id_bank_transfer: nil,
        ideal: nil,
        jcb: nil,
        klarna: nil,
        konbini: nil,
        link: nil,
        mobilepay: nil,
        multibanco: nil,
        name: nil,
        oxxo: nil,
        p24: nil,
        parent: nil,
        paynow: nil,
        paypal: nil,
        payto: nil,
        promptpay: nil,
        qris: nil,
        revolut_pay: nil,
        sepa_debit: nil,
        shopeepay: nil,
        sofort: nil,
        swish: nil,
        twint: nil,
        us_bank_account: nil,
        wechat_pay: nil,
        zip: nil
      ); end
    end
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      sig { params(expand: T::Array[String]).void }
      def initialize(expand: nil); end
    end
    class UpdateParams < Stripe::RequestParams
      class AcssDebit < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::UpdateParams::AcssDebit::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::UpdateParams::AcssDebit::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Affirm < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Affirm::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::UpdateParams::Affirm::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class AfterpayClearpay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::UpdateParams::AfterpayClearpay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::UpdateParams::AfterpayClearpay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Alipay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Alipay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::UpdateParams::Alipay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Alma < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Alma::DisplayPreference) }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::UpdateParams::Alma::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class AmazonPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::UpdateParams::AmazonPay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::UpdateParams::AmazonPay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class ApplePay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::UpdateParams::ApplePay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::UpdateParams::ApplePay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class ApplePayLater < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::UpdateParams::ApplePayLater::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::UpdateParams::ApplePayLater::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class AuBecsDebit < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::UpdateParams::AuBecsDebit::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::UpdateParams::AuBecsDebit::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class BacsDebit < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::UpdateParams::BacsDebit::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::UpdateParams::BacsDebit::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Bancontact < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Bancontact::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::UpdateParams::Bancontact::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Blik < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Blik::DisplayPreference) }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::UpdateParams::Blik::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Boleto < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Boleto::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::UpdateParams::Boleto::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Card < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Card::DisplayPreference) }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::UpdateParams::Card::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class CartesBancaires < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::UpdateParams::CartesBancaires::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::UpdateParams::CartesBancaires::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Cashapp < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Cashapp::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::UpdateParams::Cashapp::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class CustomerBalance < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::UpdateParams::CustomerBalance::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::UpdateParams::CustomerBalance::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Eps < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Eps::DisplayPreference) }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::UpdateParams::Eps::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Fpx < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Fpx::DisplayPreference) }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::UpdateParams::Fpx::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Giropay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Giropay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::UpdateParams::Giropay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class GooglePay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::UpdateParams::GooglePay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::UpdateParams::GooglePay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Gopay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Gopay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::UpdateParams::Gopay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Grabpay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Grabpay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::UpdateParams::Grabpay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class IdBankTransfer < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::UpdateParams::IdBankTransfer::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::UpdateParams::IdBankTransfer::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Ideal < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Ideal::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::UpdateParams::Ideal::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Jcb < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Jcb::DisplayPreference) }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::UpdateParams::Jcb::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Klarna < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Klarna::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::UpdateParams::Klarna::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Konbini < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Konbini::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::UpdateParams::Konbini::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Link < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Link::DisplayPreference) }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::UpdateParams::Link::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Mobilepay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Mobilepay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::UpdateParams::Mobilepay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Multibanco < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Multibanco::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::UpdateParams::Multibanco::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Oxxo < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Oxxo::DisplayPreference) }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::UpdateParams::Oxxo::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class P24 < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::P24::DisplayPreference) }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::UpdateParams::P24::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Paynow < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Paynow::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::UpdateParams::Paynow::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Paypal < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Paypal::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::UpdateParams::Paypal::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Payto < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Payto::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::UpdateParams::Payto::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Promptpay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Promptpay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::UpdateParams::Promptpay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Qris < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Qris::DisplayPreference) }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::UpdateParams::Qris::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class RevolutPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::UpdateParams::RevolutPay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::UpdateParams::RevolutPay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class SepaDebit < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::UpdateParams::SepaDebit::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::UpdateParams::SepaDebit::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Shopeepay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Shopeepay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::UpdateParams::Shopeepay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Sofort < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Sofort::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::UpdateParams::Sofort::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Swish < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Swish::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::UpdateParams::Swish::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Twint < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Twint::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::UpdateParams::Twint::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class UsBankAccount < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::UpdateParams::UsBankAccount::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::UpdateParams::UsBankAccount::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class WechatPay < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig {
          returns(::Stripe::PaymentMethodConfiguration::UpdateParams::WechatPay::DisplayPreference)
         }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::UpdateParams::WechatPay::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      class Zip < Stripe::RequestParams
        class DisplayPreference < Stripe::RequestParams
          # The account's preference for whether or not to display this payment method.
          sig { returns(String) }
          attr_accessor :preference
          sig { params(preference: String).void }
          def initialize(preference: nil); end
        end
        # Whether or not the payment method should be displayed.
        sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Zip::DisplayPreference) }
        attr_accessor :display_preference
        sig {
          params(display_preference: ::Stripe::PaymentMethodConfiguration::UpdateParams::Zip::DisplayPreference).void
         }
        def initialize(display_preference: nil); end
      end
      # Canadian pre-authorized debit payments, check this [page](https://stripe.com/docs/payments/acss-debit) for more details like country availability.
      sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::AcssDebit) }
      attr_accessor :acss_debit
      # Whether the configuration can be used for new payments.
      sig { returns(T::Boolean) }
      attr_accessor :active
      # [Affirm](https://www.affirm.com/) gives your customers a way to split purchases over a series of payments. Depending on the purchase, they can pay with four interest-free payments (Split Pay) or pay over a longer term (Installments), which might include interest. Check this [page](https://stripe.com/docs/payments/affirm) for more details like country availability.
      sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Affirm) }
      attr_accessor :affirm
      # Afterpay gives your customers a way to pay for purchases in installments, check this [page](https://stripe.com/docs/payments/afterpay-clearpay) for more details like country availability. Afterpay is particularly popular among businesses selling fashion, beauty, and sports products.
      sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::AfterpayClearpay) }
      attr_accessor :afterpay_clearpay
      # Alipay is a digital wallet in China that has more than a billion active users worldwide. Alipay users can pay on the web or on a mobile device using login credentials or their Alipay app. Alipay has a low dispute rate and reduces fraud by authenticating payments using the customer's login credentials. Check this [page](https://stripe.com/docs/payments/alipay) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Alipay) }
      attr_accessor :alipay
      # Alma is a Buy Now, Pay Later payment method that offers customers the ability to pay in 2, 3, or 4 installments.
      sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Alma) }
      attr_accessor :alma
      # Amazon Pay is a wallet payment method that lets your customers check out the same way as on Amazon.
      sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::AmazonPay) }
      attr_accessor :amazon_pay
      # Stripe users can accept [Apple Pay](/payments/apple-pay) in iOS applications in iOS 9 and later, and on the web in Safari starting with iOS 10 or macOS Sierra. There are no additional fees to process Apple Pay payments, and the [pricing](/pricing) is the same as other card transactions. Check this [page](https://stripe.com/docs/apple-pay) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::ApplePay) }
      attr_accessor :apple_pay
      # Apple Pay Later, a payment method for customers to buy now and pay later, gives your customers a way to split purchases into four installments across six weeks.
      sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::ApplePayLater) }
      attr_accessor :apple_pay_later
      # Stripe users in Australia can accept Bulk Electronic Clearing System (BECS) direct debit payments from customers with an Australian bank account. Check this [page](https://stripe.com/docs/payments/au-becs-debit) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::AuBecsDebit) }
      attr_accessor :au_becs_debit
      # Stripe users in the UK can accept Bacs Direct Debit payments from customers with a UK bank account, check this [page](https://stripe.com/docs/payments/payment-methods/bacs-debit) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::BacsDebit) }
      attr_accessor :bacs_debit
      # Bancontact is the most popular online payment method in Belgium, with over 15 million cards in circulation. [Customers](https://stripe.com/docs/api/customers) use a Bancontact card or mobile app linked to a Belgian bank account to make online payments that are secure, guaranteed, and confirmed immediately. Check this [page](https://stripe.com/docs/payments/bancontact) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Bancontact) }
      attr_accessor :bancontact
      # BLIK is a [single use](https://stripe.com/docs/payments/payment-methods#usage) payment method that requires customers to authenticate their payments. When customers want to pay online using BLIK, they request a six-digit code from their banking application and enter it into the payment collection form. Check this [page](https://stripe.com/docs/payments/blik) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Blik) }
      attr_accessor :blik
      # Boleto is an official (regulated by the Central Bank of Brazil) payment method in Brazil. Check this [page](https://stripe.com/docs/payments/boleto) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Boleto) }
      attr_accessor :boleto
      # Cards are a popular way for consumers and businesses to pay online or in person. Stripe supports global and local card networks.
      sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Card) }
      attr_accessor :card
      # Cartes Bancaires is France's local card network. More than 95% of these cards are co-branded with either Visa or Mastercard, meaning you can process these cards over either Cartes Bancaires or the Visa or Mastercard networks. Check this [page](https://stripe.com/docs/payments/cartes-bancaires) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::CartesBancaires) }
      attr_accessor :cartes_bancaires
      # Cash App is a popular consumer app in the US that allows customers to bank, invest, send, and receive money using their digital wallet. Check this [page](https://stripe.com/docs/payments/cash-app-pay) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Cashapp) }
      attr_accessor :cashapp
      # Uses a customer’s [cash balance](https://stripe.com/docs/payments/customer-balance) for the payment. The cash balance can be funded via a bank transfer. Check this [page](https://stripe.com/docs/payments/bank-transfers) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::CustomerBalance) }
      attr_accessor :customer_balance
      # EPS is an Austria-based payment method that allows customers to complete transactions online using their bank credentials. EPS is supported by all Austrian banks and is accepted by over 80% of Austrian online retailers. Check this [page](https://stripe.com/docs/payments/eps) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Eps) }
      attr_accessor :eps
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # Financial Process Exchange (FPX) is a Malaysia-based payment method that allows customers to complete transactions online using their bank credentials. Bank Negara Malaysia (BNM), the Central Bank of Malaysia, and eleven other major Malaysian financial institutions are members of the PayNet Group, which owns and operates FPX. It is one of the most popular online payment methods in Malaysia, with nearly 90 million transactions in 2018 according to BNM. Check this [page](https://stripe.com/docs/payments/fpx) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Fpx) }
      attr_accessor :fpx
      # giropay is a German payment method based on online banking, introduced in 2006. It allows customers to complete transactions online using their online banking environment, with funds debited from their bank account. Depending on their bank, customers confirm payments on giropay using a second factor of authentication or a PIN. giropay accounts for 10% of online checkouts in Germany. Check this [page](https://stripe.com/docs/payments/giropay) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Giropay) }
      attr_accessor :giropay
      # Google Pay allows customers to make payments in your app or website using any credit or debit card saved to their Google Account, including those from Google Play, YouTube, Chrome, or an Android device. Use the Google Pay API to request any credit or debit card stored in your customer's Google account. Check this [page](https://stripe.com/docs/google-pay) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::GooglePay) }
      attr_accessor :google_pay
      # GoPay is a [single use](https://stripe.com/docs/payments/payment-methods#usage) digital wallet payment method popular in Indonesia. When paying with GoPay, customers authenticate and approve payments using the Gojek app. Desktop checkout is performed by scanning a QR code. When checking out on mobile, customers are redirected to the Gojek app to confirm payment.
      sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Gopay) }
      attr_accessor :gopay
      # GrabPay is a payment method developed by [Grab](https://www.grab.com/sg/consumer/finance/pay/). GrabPay is a digital wallet - customers maintain a balance in their wallets that they pay out with. Check this [page](https://stripe.com/docs/payments/grabpay) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Grabpay) }
      attr_accessor :grabpay
      # Stripe users in Indonesia can receive bank transfers from customers in Indonesia. Bank transfers are a popular B2C and B2B payment method in Indonesia.
      sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::IdBankTransfer) }
      attr_accessor :id_bank_transfer
      # iDEAL is a Netherlands-based payment method that allows customers to complete transactions online using their bank credentials. All major Dutch banks are members of Currence, the scheme that operates iDEAL, making it the most popular online payment method in the Netherlands with a share of online transactions close to 55%. Check this [page](https://stripe.com/docs/payments/ideal) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Ideal) }
      attr_accessor :ideal
      # JCB is a credit card company based in Japan. JCB is currently available in Japan to businesses approved by JCB, and available to all businesses in Australia, Canada, Hong Kong, Japan, New Zealand, Singapore, Switzerland, United Kingdom, United States, and all countries in the European Economic Area except Iceland. Check this [page](https://support.stripe.com/questions/accepting-japan-credit-bureau-%28jcb%29-payments) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Jcb) }
      attr_accessor :jcb
      # Klarna gives customers a range of [payment options](https://stripe.com/docs/payments/klarna#payment-options) during checkout. Available payment options vary depending on the customer's billing address and the transaction amount. These payment options make it convenient for customers to purchase items in all price ranges. Check this [page](https://stripe.com/docs/payments/klarna) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Klarna) }
      attr_accessor :klarna
      # Konbini allows customers in Japan to pay for bills and online purchases at convenience stores with cash. Check this [page](https://stripe.com/docs/payments/konbini) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Konbini) }
      attr_accessor :konbini
      # [Link](https://stripe.com/docs/payments/link) is a payment method network. With Link, users save their payment details once, then reuse that information to pay with one click for any business on the network.
      sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Link) }
      attr_accessor :link
      # MobilePay is a [single-use](https://stripe.com/docs/payments/payment-methods#usage) card wallet payment method used in Denmark and Finland. It allows customers to [authenticate and approve](https://stripe.com/docs/payments/payment-methods#customer-actions) payments using the MobilePay app. Check this [page](https://stripe.com/docs/payments/mobilepay) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Mobilepay) }
      attr_accessor :mobilepay
      # Stripe users in Europe and the United States can accept Multibanco payments from customers in Portugal using [Sources](https://stripe.com/docs/sources)—a single integration path for creating payments using any supported method.
      sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Multibanco) }
      attr_accessor :multibanco
      # Configuration name.
      sig { returns(String) }
      attr_accessor :name
      # OXXO is a Mexican chain of convenience stores with thousands of locations across Latin America and represents nearly 20% of online transactions in Mexico. OXXO allows customers to pay bills and online purchases in-store with cash. Check this [page](https://stripe.com/docs/payments/oxxo) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Oxxo) }
      attr_accessor :oxxo
      # Przelewy24 is a Poland-based payment method aggregator that allows customers to complete transactions online using bank transfers and other methods. Bank transfers account for 30% of online payments in Poland and Przelewy24 provides a way for customers to pay with over 165 banks. Check this [page](https://stripe.com/docs/payments/p24) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::P24) }
      attr_accessor :p24
      # PayNow is a Singapore-based payment method that allows customers to make a payment using their preferred app from participating banks and participating non-bank financial institutions. Check this [page](https://stripe.com/docs/payments/paynow) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Paynow) }
      attr_accessor :paynow
      # PayPal, a digital wallet popular with customers in Europe, allows your customers worldwide to pay using their PayPal account. Check this [page](https://stripe.com/docs/payments/paypal) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Paypal) }
      attr_accessor :paypal
      # PayTo is a [real-time](https://docs.stripe.com/payments/real-time) payment method that enables customers in Australia to pay by providing their bank account details. Customers must accept a mandate authorizing you to debit their account. Check this [page](https://docs.stripe.com/payments/payto) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Payto) }
      attr_accessor :payto
      # PromptPay is a Thailand-based payment method that allows customers to make a payment using their preferred app from participating banks. Check this [page](https://stripe.com/docs/payments/promptpay) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Promptpay) }
      attr_accessor :promptpay
      # QRIS is a [real-time](https://docs.stripe.com/payments/real-time) payment method popular in Indonesia. When paying with QRIS, customers authenticate and approve payments by scanning a QR code in their preferred digital wallet app.
      sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Qris) }
      attr_accessor :qris
      # Revolut Pay, developed by Revolut, a global finance app, is a digital wallet payment method. Revolut Pay uses the customer’s stored balance or cards to fund the payment, and offers the option for non-Revolut customers to save their details after their first purchase.
      sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::RevolutPay) }
      attr_accessor :revolut_pay
      # The [Single Euro Payments Area (SEPA)](https://en.wikipedia.org/wiki/Single_Euro_Payments_Area) is an initiative of the European Union to simplify payments within and across member countries. SEPA established and enforced banking standards to allow for the direct debiting of every EUR-denominated bank account within the SEPA region, check this [page](https://stripe.com/docs/payments/sepa-debit) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::SepaDebit) }
      attr_accessor :sepa_debit
      # ShopeePay is a [single use](https://stripe.com/docs/payments/payment-methods#usage) digital wallet payment method popular in Indonesia. When paying with GoPay, customers authenticate and approve payments using the Shopee app. Desktop checkout is performed by scanning a QR code. When checking out on mobile, customers are redirected to the Shopee app to confirm payment.
      sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Shopeepay) }
      attr_accessor :shopeepay
      # Stripe users in Europe and the United States can use the [Payment Intents API](https://stripe.com/docs/payments/payment-intents)—a single integration path for creating payments using any supported method—to accept [Sofort](https://www.sofort.com/) payments from customers. Check this [page](https://stripe.com/docs/payments/sofort) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Sofort) }
      attr_accessor :sofort
      # Swish is a [real-time](https://stripe.com/docs/payments/real-time) payment method popular in Sweden. It allows customers to [authenticate and approve](https://stripe.com/docs/payments/payment-methods#customer-actions) payments using the Swish mobile app and the Swedish BankID mobile app. Check this [page](https://stripe.com/docs/payments/swish) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Swish) }
      attr_accessor :swish
      # Twint is a payment method popular in Switzerland. It allows customers to pay using their mobile phone. Check this [page](https://docs.stripe.com/payments/twint) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Twint) }
      attr_accessor :twint
      # Stripe users in the United States can accept ACH direct debit payments from customers with a US bank account using the Automated Clearing House (ACH) payments system operated by Nacha. Check this [page](https://stripe.com/docs/payments/ach-direct-debit) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::UsBankAccount) }
      attr_accessor :us_bank_account
      # WeChat, owned by Tencent, is China's leading mobile app with over 1 billion monthly active users. Chinese consumers can use WeChat Pay to pay for goods and services inside of businesses' apps and websites. WeChat Pay users buy most frequently in gaming, e-commerce, travel, online education, and food/nutrition. Check this [page](https://stripe.com/docs/payments/wechat-pay) for more details.
      sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::WechatPay) }
      attr_accessor :wechat_pay
      # Zip gives your customers a way to split purchases over a series of payments. Check this [page](https://stripe.com/docs/payments/zip) for more details like country availability.
      sig { returns(::Stripe::PaymentMethodConfiguration::UpdateParams::Zip) }
      attr_accessor :zip
      sig {
        params(acss_debit: ::Stripe::PaymentMethodConfiguration::UpdateParams::AcssDebit, active: T::Boolean, affirm: ::Stripe::PaymentMethodConfiguration::UpdateParams::Affirm, afterpay_clearpay: ::Stripe::PaymentMethodConfiguration::UpdateParams::AfterpayClearpay, alipay: ::Stripe::PaymentMethodConfiguration::UpdateParams::Alipay, alma: ::Stripe::PaymentMethodConfiguration::UpdateParams::Alma, amazon_pay: ::Stripe::PaymentMethodConfiguration::UpdateParams::AmazonPay, apple_pay: ::Stripe::PaymentMethodConfiguration::UpdateParams::ApplePay, apple_pay_later: ::Stripe::PaymentMethodConfiguration::UpdateParams::ApplePayLater, au_becs_debit: ::Stripe::PaymentMethodConfiguration::UpdateParams::AuBecsDebit, bacs_debit: ::Stripe::PaymentMethodConfiguration::UpdateParams::BacsDebit, bancontact: ::Stripe::PaymentMethodConfiguration::UpdateParams::Bancontact, blik: ::Stripe::PaymentMethodConfiguration::UpdateParams::Blik, boleto: ::Stripe::PaymentMethodConfiguration::UpdateParams::Boleto, card: ::Stripe::PaymentMethodConfiguration::UpdateParams::Card, cartes_bancaires: ::Stripe::PaymentMethodConfiguration::UpdateParams::CartesBancaires, cashapp: ::Stripe::PaymentMethodConfiguration::UpdateParams::Cashapp, customer_balance: ::Stripe::PaymentMethodConfiguration::UpdateParams::CustomerBalance, eps: ::Stripe::PaymentMethodConfiguration::UpdateParams::Eps, expand: T::Array[String], fpx: ::Stripe::PaymentMethodConfiguration::UpdateParams::Fpx, giropay: ::Stripe::PaymentMethodConfiguration::UpdateParams::Giropay, google_pay: ::Stripe::PaymentMethodConfiguration::UpdateParams::GooglePay, gopay: ::Stripe::PaymentMethodConfiguration::UpdateParams::Gopay, grabpay: ::Stripe::PaymentMethodConfiguration::UpdateParams::Grabpay, id_bank_transfer: ::Stripe::PaymentMethodConfiguration::UpdateParams::IdBankTransfer, ideal: ::Stripe::PaymentMethodConfiguration::UpdateParams::Ideal, jcb: ::Stripe::PaymentMethodConfiguration::UpdateParams::Jcb, klarna: ::Stripe::PaymentMethodConfiguration::UpdateParams::Klarna, konbini: ::Stripe::PaymentMethodConfiguration::UpdateParams::Konbini, link: ::Stripe::PaymentMethodConfiguration::UpdateParams::Link, mobilepay: ::Stripe::PaymentMethodConfiguration::UpdateParams::Mobilepay, multibanco: ::Stripe::PaymentMethodConfiguration::UpdateParams::Multibanco, name: String, oxxo: ::Stripe::PaymentMethodConfiguration::UpdateParams::Oxxo, p24: ::Stripe::PaymentMethodConfiguration::UpdateParams::P24, paynow: ::Stripe::PaymentMethodConfiguration::UpdateParams::Paynow, paypal: ::Stripe::PaymentMethodConfiguration::UpdateParams::Paypal, payto: ::Stripe::PaymentMethodConfiguration::UpdateParams::Payto, promptpay: ::Stripe::PaymentMethodConfiguration::UpdateParams::Promptpay, qris: ::Stripe::PaymentMethodConfiguration::UpdateParams::Qris, revolut_pay: ::Stripe::PaymentMethodConfiguration::UpdateParams::RevolutPay, sepa_debit: ::Stripe::PaymentMethodConfiguration::UpdateParams::SepaDebit, shopeepay: ::Stripe::PaymentMethodConfiguration::UpdateParams::Shopeepay, sofort: ::Stripe::PaymentMethodConfiguration::UpdateParams::Sofort, swish: ::Stripe::PaymentMethodConfiguration::UpdateParams::Swish, twint: ::Stripe::PaymentMethodConfiguration::UpdateParams::Twint, us_bank_account: ::Stripe::PaymentMethodConfiguration::UpdateParams::UsBankAccount, wechat_pay: ::Stripe::PaymentMethodConfiguration::UpdateParams::WechatPay, zip: ::Stripe::PaymentMethodConfiguration::UpdateParams::Zip).void
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
        gopay: nil,
        grabpay: nil,
        id_bank_transfer: nil,
        ideal: nil,
        jcb: nil,
        klarna: nil,
        konbini: nil,
        link: nil,
        mobilepay: nil,
        multibanco: nil,
        name: nil,
        oxxo: nil,
        p24: nil,
        paynow: nil,
        paypal: nil,
        payto: nil,
        promptpay: nil,
        qris: nil,
        revolut_pay: nil,
        sepa_debit: nil,
        shopeepay: nil,
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
      params(id: String, params: T.any(::Stripe::PaymentMethodConfiguration::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentMethodConfiguration)
     }
    def self.update(id, params = {}, opts = {}); end
  end
end