# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class TopupService < StripeService
    class ListParams < Stripe::RequestParams
      class Amount < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        attr_accessor :gt
        # Minimum value to filter by (inclusive)
        attr_accessor :gte
        # Maximum value to filter by (exclusive)
        attr_accessor :lt
        # Maximum value to filter by (inclusive)
        attr_accessor :lte

        def initialize(gt: nil, gte: nil, lt: nil, lte: nil)
          @gt = gt
          @gte = gte
          @lt = lt
          @lte = lte
        end
      end

      class Created < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        attr_accessor :gt
        # Minimum value to filter by (inclusive)
        attr_accessor :gte
        # Maximum value to filter by (exclusive)
        attr_accessor :lt
        # Maximum value to filter by (inclusive)
        attr_accessor :lte

        def initialize(gt: nil, gte: nil, lt: nil, lte: nil)
          @gt = gt
          @gte = gte
          @lt = lt
          @lte = lte
        end
      end
      # A positive integer representing how much to transfer.
      attr_accessor :amount
      # A filter on the list, based on the object `created` field. The value can be a string with an integer Unix timestamp, or it can be a dictionary with a number of different query options.
      attr_accessor :created
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after
      # Only return top-ups that have the given status. One of `canceled`, `failed`, `pending` or `succeeded`.
      attr_accessor :status

      def initialize(
        amount: nil,
        created: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        starting_after: nil,
        status: nil
      )
        @amount = amount
        @created = created
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @starting_after = starting_after
        @status = status
      end
    end

    class CreateParams < Stripe::RequestParams
      # A positive integer representing how much to transfer.
      attr_accessor :amount
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_accessor :currency
      # An arbitrary string attached to the object. Often useful for displaying to users.
      attr_accessor :description
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # The ID of a source to transfer funds from. For most users, this should be left unspecified which will use the bank account that was set up in the dashboard for the specified currency. In test mode, this can be a test bank token (see [Testing Top-ups](https://stripe.com/docs/connect/testing#testing-top-ups)).
      attr_accessor :source
      # Extra information about a top-up for the source's bank statement. Limited to 15 ASCII characters.
      attr_accessor :statement_descriptor
      # A string that identifies this top-up as part of a group.
      attr_accessor :transfer_group

      def initialize(
        amount: nil,
        currency: nil,
        description: nil,
        expand: nil,
        metadata: nil,
        source: nil,
        statement_descriptor: nil,
        transfer_group: nil
      )
        @amount = amount
        @currency = currency
        @description = description
        @expand = expand
        @metadata = metadata
        @source = source
        @statement_descriptor = statement_descriptor
        @transfer_group = transfer_group
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
      # An arbitrary string attached to the object. Often useful for displaying to users.
      attr_accessor :description
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata

      def initialize(description: nil, expand: nil, metadata: nil)
        @description = description
        @expand = expand
        @metadata = metadata
      end
    end

    class CancelParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

    # Cancels a top-up. Only pending top-ups can be canceled.
    def cancel(topup, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/topups/%<topup>s/cancel", { topup: CGI.escape(topup) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Top up the balance of an account
    def create(params = {}, opts = {})
      request(method: :post, path: "/v1/topups", params: params, opts: opts, base_address: :api)
    end

    # Returns a list of top-ups.
    def list(params = {}, opts = {})
      request(method: :get, path: "/v1/topups", params: params, opts: opts, base_address: :api)
    end

    # Retrieves the details of a top-up that has previously been created. Supply the unique top-up ID that was returned from your previous request, and Stripe will return the corresponding top-up information.
    def retrieve(topup, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/topups/%<topup>s", { topup: CGI.escape(topup) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Updates the metadata of a top-up. Other top-up details are not editable by design.
    def update(topup, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/topups/%<topup>s", { topup: CGI.escape(topup) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
