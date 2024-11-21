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
        # The error message associated with the status of the payment method on the domain.
        sig { returns(String) }
        attr_reader :error_message
      end
      # The status of the payment method on the domain.
      sig { returns(String) }
      attr_reader :status
      # Contains additional details about the status of a payment method for a specific payment method domain.
      sig { returns(StatusDetails) }
      attr_reader :status_details
    end
    class ApplePay < Stripe::StripeObject
      class StatusDetails < Stripe::StripeObject
        # The error message associated with the status of the payment method on the domain.
        sig { returns(String) }
        attr_reader :error_message
      end
      # The status of the payment method on the domain.
      sig { returns(String) }
      attr_reader :status
      # Contains additional details about the status of a payment method for a specific payment method domain.
      sig { returns(StatusDetails) }
      attr_reader :status_details
    end
    class GooglePay < Stripe::StripeObject
      class StatusDetails < Stripe::StripeObject
        # The error message associated with the status of the payment method on the domain.
        sig { returns(String) }
        attr_reader :error_message
      end
      # The status of the payment method on the domain.
      sig { returns(String) }
      attr_reader :status
      # Contains additional details about the status of a payment method for a specific payment method domain.
      sig { returns(StatusDetails) }
      attr_reader :status_details
    end
    class Link < Stripe::StripeObject
      class StatusDetails < Stripe::StripeObject
        # The error message associated with the status of the payment method on the domain.
        sig { returns(String) }
        attr_reader :error_message
      end
      # The status of the payment method on the domain.
      sig { returns(String) }
      attr_reader :status
      # Contains additional details about the status of a payment method for a specific payment method domain.
      sig { returns(StatusDetails) }
      attr_reader :status_details
    end
    class Paypal < Stripe::StripeObject
      class StatusDetails < Stripe::StripeObject
        # The error message associated with the status of the payment method on the domain.
        sig { returns(String) }
        attr_reader :error_message
      end
      # The status of the payment method on the domain.
      sig { returns(String) }
      attr_reader :status
      # Contains additional details about the status of a payment method for a specific payment method domain.
      sig { returns(StatusDetails) }
      attr_reader :status_details
    end
    # Indicates the status of a specific payment method on a payment method domain.
    sig { returns(AmazonPay) }
    attr_reader :amazon_pay

    # Indicates the status of a specific payment method on a payment method domain.
    sig { returns(ApplePay) }
    attr_reader :apple_pay

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created

    # The domain name that this payment method domain object represents.
    sig { returns(String) }
    attr_reader :domain_name

    # Whether this payment method domain is enabled. If the domain is not enabled, payment methods that require a payment method domain will not appear in Elements.
    sig { returns(T::Boolean) }
    attr_reader :enabled

    # Indicates the status of a specific payment method on a payment method domain.
    sig { returns(GooglePay) }
    attr_reader :google_pay

    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id

    # Indicates the status of a specific payment method on a payment method domain.
    sig { returns(Link) }
    attr_reader :link

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode

    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object

    # Indicates the status of a specific payment method on a payment method domain.
    sig { returns(Paypal) }
    attr_reader :paypal
  end
end