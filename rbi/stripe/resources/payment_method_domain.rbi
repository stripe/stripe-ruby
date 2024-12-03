# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # A payment method domain represents a web domain that you have registered with Stripe.
  # Stripe Elements use registered payment method domains to control where certain payment methods are shown.
  #
  # Related guide: [Payment method domains](https://stripe.com/docs/payments/payment-methods/pmd-registration).
  class PaymentMethodDomain < APIResource
    class AmazonPay < Stripe::StripeObject
      class StatusDetails < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :error_message
      end
      sig { returns(String) }
      attr_reader :status
      sig { returns(StatusDetails) }
      attr_reader :status_details
    end
    class ApplePay < Stripe::StripeObject
      class StatusDetails < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :error_message
      end
      sig { returns(String) }
      attr_reader :status
      sig { returns(StatusDetails) }
      attr_reader :status_details
    end
    class GooglePay < Stripe::StripeObject
      class StatusDetails < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :error_message
      end
      sig { returns(String) }
      attr_reader :status
      sig { returns(StatusDetails) }
      attr_reader :status_details
    end
    class Link < Stripe::StripeObject
      class StatusDetails < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :error_message
      end
      sig { returns(String) }
      attr_reader :status
      sig { returns(StatusDetails) }
      attr_reader :status_details
    end
    class Paypal < Stripe::StripeObject
      class StatusDetails < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :error_message
      end
      sig { returns(String) }
      attr_reader :status
      sig { returns(StatusDetails) }
      attr_reader :status_details
    end
    sig { returns(AmazonPay) }
    # Indicates the status of a specific payment method on a payment method domain.
    attr_reader :amazon_pay
    sig { returns(ApplePay) }
    # Indicates the status of a specific payment method on a payment method domain.
    attr_reader :apple_pay
    sig { returns(Integer) }
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    sig { returns(String) }
    # The domain name that this payment method domain object represents.
    attr_reader :domain_name
    sig { returns(T::Boolean) }
    # Whether this payment method domain is enabled. If the domain is not enabled, payment methods that require a payment method domain will not appear in Elements.
    attr_reader :enabled
    sig { returns(GooglePay) }
    # Indicates the status of a specific payment method on a payment method domain.
    attr_reader :google_pay
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(Link) }
    # Indicates the status of a specific payment method on a payment method domain.
    attr_reader :link
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(Paypal) }
    # Indicates the status of a specific payment method on a payment method domain.
    attr_reader :paypal
  end
end