# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class PaymentMethodDomainService < StripeService
    class ListParams < Stripe::RequestParams
      # The domain name that this payment method domain object represents.
      attr_accessor :domain_name
      # Whether this payment method domain is enabled. If the domain is not enabled, payment methods will not appear in Elements or Embedded Checkout
      attr_accessor :enabled
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after

      def initialize(
        domain_name: nil,
        enabled: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        starting_after: nil
      )
        @domain_name = domain_name
        @enabled = enabled
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @starting_after = starting_after
      end
    end

    class CreateParams < Stripe::RequestParams
      # The domain name that this payment method domain object represents.
      attr_accessor :domain_name
      # Whether this payment method domain is enabled. If the domain is not enabled, payment methods that require a payment method domain will not appear in Elements or Embedded Checkout.
      attr_accessor :enabled
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(domain_name: nil, enabled: nil, expand: nil)
        @domain_name = domain_name
        @enabled = enabled
        @expand = expand
      end
    end

    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

    class UpdateParams < Stripe::RequestParams
      # Whether this payment method domain is enabled. If the domain is not enabled, payment methods that require a payment method domain will not appear in Elements or Embedded Checkout.
      attr_accessor :enabled
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(enabled: nil, expand: nil)
        @enabled = enabled
        @expand = expand
      end
    end

    class ValidateParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

    # Creates a payment method domain.
    def create(params = {}, opts = {})
      request(
        method: :post,
        path: "/v1/payment_method_domains",
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Lists the details of existing payment method domains.
    def list(params = {}, opts = {})
      request(
        method: :get,
        path: "/v1/payment_method_domains",
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieves the details of an existing payment method domain.
    def retrieve(payment_method_domain, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/payment_method_domains/%<payment_method_domain>s", { payment_method_domain: CGI.escape(payment_method_domain) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Updates an existing payment method domain.
    def update(payment_method_domain, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/payment_method_domains/%<payment_method_domain>s", { payment_method_domain: CGI.escape(payment_method_domain) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Some payment methods might require additional steps to register a domain. If the requirements weren't satisfied when the domain was created, the payment method will be inactive on the domain.
    # The payment method doesn't appear in Elements or Embedded Checkout for this domain until it is active.
    #
    # To activate a payment method on an existing payment method domain, complete the required registration steps specific to the payment method, and then validate the payment method domain with this endpoint.
    #
    # Related guides: [Payment method domains](https://stripe.com/docs/payments/payment-methods/pmd-registration).
    def validate(payment_method_domain, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/payment_method_domains/%<payment_method_domain>s/validate", { payment_method_domain: CGI.escape(payment_method_domain) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
