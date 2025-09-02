# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class PaymentMethodDomainService < StripeService
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
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
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
      params(params: T.any(::Stripe::PaymentMethodDomainService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentMethodDomain)
     }
    def create(params = {}, opts = {}); end

    # Lists the details of existing payment method domains.
    sig {
      params(params: T.any(::Stripe::PaymentMethodDomainService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # Retrieves the details of an existing payment method domain.
    sig {
      params(payment_method_domain: String, params: T.any(::Stripe::PaymentMethodDomainService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentMethodDomain)
     }
    def retrieve(payment_method_domain, params = {}, opts = {}); end

    # Updates an existing payment method domain.
    sig {
      params(payment_method_domain: String, params: T.any(::Stripe::PaymentMethodDomainService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentMethodDomain)
     }
    def update(payment_method_domain, params = {}, opts = {}); end

    # Some payment methods might require additional steps to register a domain. If the requirements weren't satisfied when the domain was created, the payment method will be inactive on the domain.
    # The payment method doesn't appear in Elements or Embedded Checkout for this domain until it is active.
    #
    # To activate a payment method on an existing payment method domain, complete the required registration steps specific to the payment method, and then validate the payment method domain with this endpoint.
    #
    # Related guides: [Payment method domains](https://docs.stripe.com/docs/payments/payment-methods/pmd-registration).
    sig {
      params(payment_method_domain: String, params: T.any(::Stripe::PaymentMethodDomainService::ValidateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentMethodDomain)
     }
    def validate(payment_method_domain, params = {}, opts = {}); end
  end
end