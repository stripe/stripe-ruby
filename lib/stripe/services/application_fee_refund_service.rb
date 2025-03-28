# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class ApplicationFeeRefundService < StripeService
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

    class UpdateParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata

      def initialize(expand: nil, metadata: nil)
        @expand = expand
        @metadata = metadata
      end
    end

    class ListParams < Stripe::RequestParams
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after

      def initialize(ending_before: nil, expand: nil, limit: nil, starting_after: nil)
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @starting_after = starting_after
      end
    end

    class CreateParams < Stripe::RequestParams
      # A positive integer, in _cents (or local equivalent)_, representing how much of this fee to refund. Can refund only up to the remaining unrefunded amount of the fee.
      attr_accessor :amount
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata

      def initialize(amount: nil, expand: nil, metadata: nil)
        @amount = amount
        @expand = expand
        @metadata = metadata
      end
    end

    # Refunds an application fee that has previously been collected but not yet refunded.
    # Funds will be refunded to the Stripe account from which the fee was originally collected.
    #
    # You can optionally refund only part of an application fee.
    # You can do so multiple times, until the entire fee has been refunded.
    #
    # Once entirely refunded, an application fee can't be refunded again.
    # This method will raise an error when called on an already-refunded application fee,
    # or when trying to refund more money than is left on an application fee.
    def create(id, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/application_fees/%<id>s/refunds", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # You can see a list of the refunds belonging to a specific application fee. Note that the 10 most recent refunds are always available by default on the application fee object. If you need more than those 10, you can use this API method and the limit and starting_after parameters to page through additional refunds.
    def list(id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/application_fees/%<id>s/refunds", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # By default, you can see the 10 most recent refunds stored directly on the application fee object, but you can also retrieve details about a specific refund stored on the application fee.
    def retrieve(fee, id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/application_fees/%<fee>s/refunds/%<id>s", { fee: CGI.escape(fee), id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Updates the specified application fee refund by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
    #
    # This request only accepts metadata as an argument.
    def update(fee, id, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/application_fees/%<fee>s/refunds/%<id>s", { fee: CGI.escape(fee), id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
