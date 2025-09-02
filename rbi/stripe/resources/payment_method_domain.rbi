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
        def error_message; end
      end
      # The status of the payment method on the domain.
      sig { returns(String) }
      def status; end
      # Contains additional details about the status of a payment method for a specific payment method domain.
      sig { returns(StatusDetails) }
      def status_details; end
    end
    class ApplePay < Stripe::StripeObject
      class StatusDetails < Stripe::StripeObject
        # The error message associated with the status of the payment method on the domain.
        sig { returns(String) }
        def error_message; end
      end
      # The status of the payment method on the domain.
      sig { returns(String) }
      def status; end
      # Contains additional details about the status of a payment method for a specific payment method domain.
      sig { returns(StatusDetails) }
      def status_details; end
    end
    class GooglePay < Stripe::StripeObject
      class StatusDetails < Stripe::StripeObject
        # The error message associated with the status of the payment method on the domain.
        sig { returns(String) }
        def error_message; end
      end
      # The status of the payment method on the domain.
      sig { returns(String) }
      def status; end
      # Contains additional details about the status of a payment method for a specific payment method domain.
      sig { returns(StatusDetails) }
      def status_details; end
    end
    class Klarna < Stripe::StripeObject
      class StatusDetails < Stripe::StripeObject
        # The error message associated with the status of the payment method on the domain.
        sig { returns(String) }
        def error_message; end
      end
      # The status of the payment method on the domain.
      sig { returns(String) }
      def status; end
      # Contains additional details about the status of a payment method for a specific payment method domain.
      sig { returns(StatusDetails) }
      def status_details; end
    end
    class Link < Stripe::StripeObject
      class StatusDetails < Stripe::StripeObject
        # The error message associated with the status of the payment method on the domain.
        sig { returns(String) }
        def error_message; end
      end
      # The status of the payment method on the domain.
      sig { returns(String) }
      def status; end
      # Contains additional details about the status of a payment method for a specific payment method domain.
      sig { returns(StatusDetails) }
      def status_details; end
    end
    class Paypal < Stripe::StripeObject
      class StatusDetails < Stripe::StripeObject
        # The error message associated with the status of the payment method on the domain.
        sig { returns(String) }
        def error_message; end
      end
      # The status of the payment method on the domain.
      sig { returns(String) }
      def status; end
      # Contains additional details about the status of a payment method for a specific payment method domain.
      sig { returns(StatusDetails) }
      def status_details; end
    end
    # Indicates the status of a specific payment method on a payment method domain.
    sig { returns(AmazonPay) }
    def amazon_pay; end
    # Indicates the status of a specific payment method on a payment method domain.
    sig { returns(ApplePay) }
    def apple_pay; end
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    def created; end
    # The domain name that this payment method domain object represents.
    sig { returns(String) }
    def domain_name; end
    # Whether this payment method domain is enabled. If the domain is not enabled, payment methods that require a payment method domain will not appear in Elements.
    sig { returns(T::Boolean) }
    def enabled; end
    # Indicates the status of a specific payment method on a payment method domain.
    sig { returns(GooglePay) }
    def google_pay; end
    # Unique identifier for the object.
    sig { returns(String) }
    def id; end
    # Indicates the status of a specific payment method on a payment method domain.
    sig { returns(Klarna) }
    def klarna; end
    # Indicates the status of a specific payment method on a payment method domain.
    sig { returns(Link) }
    def link; end
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    def livemode; end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
    # Indicates the status of a specific payment method on a payment method domain.
    sig { returns(Paypal) }
    def paypal; end
    class ListParams < Stripe::RequestParams
      # The domain name that this payment method domain object represents.
      sig { returns(T.nilable(String)) }
      def domain_name; end
      sig { params(_domain_name: T.nilable(String)).returns(T.nilable(String)) }
      def domain_name=(_domain_name); end
      # Whether this payment method domain is enabled. If the domain is not enabled, payment methods will not appear in Elements or Embedded Checkout
      sig { returns(T.nilable(T::Boolean)) }
      def enabled; end
      sig { params(_enabled: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def enabled=(_enabled); end
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
      def domain_name; end
      sig { params(_domain_name: String).returns(String) }
      def domain_name=(_domain_name); end
      # Whether this payment method domain is enabled. If the domain is not enabled, payment methods that require a payment method domain will not appear in Elements or Embedded Checkout.
      sig { returns(T.nilable(T::Boolean)) }
      def enabled; end
      sig { params(_enabled: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def enabled=(_enabled); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      sig {
        params(domain_name: String, enabled: T.nilable(T::Boolean), expand: T.nilable(T::Array[String])).void
       }
      def initialize(domain_name: nil, enabled: nil, expand: nil); end
    end
    class UpdateParams < Stripe::RequestParams
      # Whether this payment method domain is enabled. If the domain is not enabled, payment methods that require a payment method domain will not appear in Elements or Embedded Checkout.
      sig { returns(T.nilable(T::Boolean)) }
      def enabled; end
      sig { params(_enabled: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def enabled=(_enabled); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      sig { params(enabled: T.nilable(T::Boolean), expand: T.nilable(T::Array[String])).void }
      def initialize(enabled: nil, expand: nil); end
    end
    class ValidateParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
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