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
    class Klarna < Stripe::StripeObject
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
    sig { returns(Klarna) }
    attr_reader :klarna
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
    class ListParams < Stripe::RequestParams
      # The domain name that this payment method domain object represents.
      sig { returns(T.nilable(String)) }
      attr_accessor :domain_name
      # Whether this payment method domain is enabled. If the domain is not enabled, payment methods will not appear in Elements or Embedded Checkout
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :enabled
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
        params(domain_name: T.nilable(String), enabled: T.nilable(T::Boolean), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
       }
      def initialize(
        domain_name: nil,
        enabled: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        starting_after: nil
      ); end
    end
    class CreateParams < Stripe::RequestParams
      # The domain name that this payment method domain object represents.
      sig { returns(String) }
      attr_accessor :domain_name
      # Whether this payment method domain is enabled. If the domain is not enabled, payment methods that require a payment method domain will not appear in Elements or Embedded Checkout.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :enabled
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig {
        params(domain_name: String, enabled: T.nilable(T::Boolean), expand: T.nilable(T::Array[String])).void
       }
      def initialize(domain_name: nil, enabled: nil, expand: nil); end
    end
    class UpdateParams < Stripe::RequestParams
      # Whether this payment method domain is enabled. If the domain is not enabled, payment methods that require a payment method domain will not appear in Elements or Embedded Checkout.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :enabled
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig { params(enabled: T.nilable(T::Boolean), expand: T.nilable(T::Array[String])).void }
      def initialize(enabled: nil, expand: nil); end
    end
    class ValidateParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    # Creates a payment method domain.
    sig {
      params(params: T.any(::Stripe::PaymentMethodDomain::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentMethodDomain)
     }
    def self.create(params = {}, opts = {}); end

    # Lists the details of existing payment method domains.
    sig {
      params(params: T.any(::Stripe::PaymentMethodDomain::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def self.list(params = {}, opts = {}); end

    # Updates an existing payment method domain.
    sig {
      params(payment_method_domain: String, params: T.any(::Stripe::PaymentMethodDomain::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentMethodDomain)
     }
    def self.update(payment_method_domain, params = {}, opts = {}); end

    # Some payment methods might require additional steps to register a domain. If the requirements weren't satisfied when the domain was created, the payment method will be inactive on the domain.
    # The payment method doesn't appear in Elements or Embedded Checkout for this domain until it is active.
    #
    # To activate a payment method on an existing payment method domain, complete the required registration steps specific to the payment method, and then validate the payment method domain with this endpoint.
    #
    # Related guides: [Payment method domains](https://docs.stripe.com/docs/payments/payment-methods/pmd-registration).
    sig {
      params(params: T.any(::Stripe::PaymentMethodDomain::ValidateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentMethodDomain)
     }
    def validate(params = {}, opts = {}); end

    # Some payment methods might require additional steps to register a domain. If the requirements weren't satisfied when the domain was created, the payment method will be inactive on the domain.
    # The payment method doesn't appear in Elements or Embedded Checkout for this domain until it is active.
    #
    # To activate a payment method on an existing payment method domain, complete the required registration steps specific to the payment method, and then validate the payment method domain with this endpoint.
    #
    # Related guides: [Payment method domains](https://docs.stripe.com/docs/payments/payment-methods/pmd-registration).
    sig {
      params(payment_method_domain: String, params: T.any(::Stripe::PaymentMethodDomain::ValidateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentMethodDomain)
     }
    def self.validate(payment_method_domain, params = {}, opts = {}); end
  end
end