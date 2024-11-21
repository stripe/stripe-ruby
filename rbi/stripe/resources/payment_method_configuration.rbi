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
  end
end