# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class Customer < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List
    extend Stripe::APIOperations::Search
    include Stripe::APIOperations::Save
    extend Stripe::APIOperations::NestedResource

    OBJECT_NAME = "customer"

    nested_resource_class_methods :balance_transaction,
                                  operations: %i[create retrieve update list]
    nested_resource_class_methods :tax_id,
                                  operations: %i[create retrieve delete list]

    def create_funding_instructions(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/customers/%<customer>s/funding_instructions", { customer: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    def list_payment_methods(params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/customers/%<customer>s/payment_methods", { customer: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    def retrieve_payment_method(payment_method, params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/customers/%<customer>s/payment_methods/%<payment_method>s", { customer: CGI.escape(self["id"]), payment_method: CGI.escape(payment_method) }),
        params: params,
        opts: opts
      )
    end

    def self.create_funding_instructions(customer, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/customers/%<customer>s/funding_instructions", { customer: CGI.escape(customer) }),
        params: params,
        opts: opts
      )
    end

    def self.list_payment_methods(customer, params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/customers/%<customer>s/payment_methods", { customer: CGI.escape(customer) }),
        params: params,
        opts: opts
      )
    end

    def self.retrieve_payment_method(
      customer,
      payment_method,
      params = {},
      opts = {}
    )
      request_stripe_object(
        method: :get,
        path: format("/v1/customers/%<customer>s/payment_methods/%<payment_method>s", { customer: CGI.escape(customer), payment_method: CGI.escape(payment_method) }),
        params: params,
        opts: opts
      )
    end

    custom_method :delete_discount, http_verb: :delete, http_path: "discount"

    save_nested_resource :source
    nested_resource_class_methods :source,
                                  operations: %i[create retrieve update delete list]

    # The API request for deleting a card or bank account and for detaching a
    # source object are the same.
    class << self
      alias detach_source delete_source
    end

    # Deletes a discount associated with the customer.
    #
    # Returns the deleted discount. The customer object is not updated,
    # so you must call `refresh` on it to get a new version with the
    # discount removed.
    def delete_discount
      request_stripe_object(
        method: :delete,
        path: resource_url + "/discount",
        params: {}
      )
    end

    def self.search(params = {}, opts = {})
      _search("/v1/customers/search", params, opts)
    end

    def self.search_auto_paging_each(params = {}, opts = {}, &blk)
      search(params, opts).auto_paging_each(&blk)
    end

    def self.retrieve_cash_balance(
      customer,
      opts_or_unused_nested_id = nil,
      opts = {}
    )
      # Support two call patterns for backwards compatibility.
      # 1. Legacy: (nil unused nested_id, opts)
      # 2. Fixed pattern: (opts)
      if !opts_or_unused_nested_id.nil? && opts_or_unused_nested_id.class == Hash && opts.empty?
        opts = opts_or_unused_nested_id
      end
      request_stripe_object(
        method: :get,
        path: format("/v1/customers/%<customer>s/cash_balance", { customer: CGI.escape(customer) }),
        params: {},
        opts: opts
      )
    end

    def self.update_cash_balance(
      customer,
      unused_nested_id = nil,
      params = {},
      opts = {}
    )
      # Do not allow passing in a hash as the second argument, as we require a nil for compatibility reasons. We cannot differentiate from a legacy pattern (nil, params) and a modern pattern (nil for params, opts).
      if !unused_nested_id.nil? && unused_nested_id.class == Hash
        raise ArgumentError, "update_cash_balance requires the second argument always be nil for legacy reasons."
      end

      request_stripe_object(
        method: :post,
        path: format("/v1/customers/%<customer>s/cash_balance", { customer: CGI.escape(customer) }),
        params: params,
        opts: opts
      )
    end

    def test_helpers
      TestHelpers.new(self)
    end

    class TestHelpers < APIResourceTestHelpers
      RESOURCE_CLASS = Customer

      def self.fund_cash_balance(customer, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/test_helpers/customers/%<customer>s/fund_cash_balance", { customer: CGI.escape(customer) }),
          params: params,
          opts: opts
        )
      end

      def fund_cash_balance(params = {}, opts = {})
        @resource.request_stripe_object(
          method: :post,
          path: format("/v1/test_helpers/customers/%<customer>s/fund_cash_balance", { customer: CGI.escape(@resource["id"]) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
