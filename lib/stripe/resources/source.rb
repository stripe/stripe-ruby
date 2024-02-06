# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # `Source` objects allow you to accept a variety of payment methods. They
  # represent a customer's payment instrument, and can be used with the Stripe API
  # just like a `Card` object: once chargeable, they can be charged, or can be
  # attached to customers.
  #
  # Stripe doesn't recommend using the deprecated [Sources API](https://stripe.com/docs/api/sources).
  # We recommend that you adopt the [PaymentMethods API](https://stripe.com/docs/api/payment_methods).
  # This newer API provides access to our latest features and payment method types.
  #
  # Related guides: [Sources API](https://stripe.com/docs/sources) and [Sources & Customers](https://stripe.com/docs/sources/customers).
  class Source < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Save
    extend Stripe::APIOperations::NestedResource

    OBJECT_NAME = "source"

    nested_resource_class_methods :source_transaction, operations: %i[retrieve list]

    # Verify a given source.
    def verify(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/sources/%<source>s/verify", { source: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Verify a given source.
    def self.verify(source, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/sources/%<source>s/verify", { source: CGI.escape(source) }),
        params: params,
        opts: opts
      )
    end

    def detach(params = {}, opts = {})
      if !respond_to?(:customer) || customer.nil? || customer.empty?
        raise NotImplementedError,
              "This source object does not appear to be currently attached " \
              "to a customer object."
      end

      url = "#{Customer.resource_url}/#{CGI.escape(customer)}/sources" \
            "/#{CGI.escape(id)}"
      resp, opts = execute_resource_request(:delete, url, params, opts)
      initialize_from(resp.data, opts)
    end

    def source_transactions(params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: resource_url + "/source_transactions",
        params: params,
        opts: opts
      )
    end
    extend Gem::Deprecate
    deprecate :source_transactions, :"Source.list_source_transactions", 2020, 1

    # Creates a new source object.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/sources", params: params, opts: opts)
    end

    # Updates the specified source by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
    #
    # This request accepts the metadata and owner as arguments. It is also possible to update type specific information for selected payment methods. Please refer to our [payment method guides](https://stripe.com/docs/sources) for more detail.
    def self.update(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/sources/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end
  end
end
