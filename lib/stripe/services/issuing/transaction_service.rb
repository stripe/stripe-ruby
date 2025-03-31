# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    class TransactionService < StripeService
      class ListParams < Stripe::RequestParams
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
        # Only return transactions that belong to the given card.
        attr_accessor :card
        # Only return transactions that belong to the given cardholder.
        attr_accessor :cardholder
        # Only return transactions that were created during the given date interval.
        attr_accessor :created
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        attr_accessor :starting_after
        # Only return transactions that have the given type. One of `capture` or `refund`.
        attr_accessor :type

        def initialize(
          card: nil,
          cardholder: nil,
          created: nil,
          ending_before: nil,
          expand: nil,
          limit: nil,
          starting_after: nil,
          type: nil
        )
          @card = card
          @cardholder = cardholder
          @created = created
          @ending_before = ending_before
          @expand = expand
          @limit = limit
          @starting_after = starting_after
          @type = type
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
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata

        def initialize(expand: nil, metadata: nil)
          @expand = expand
          @metadata = metadata
        end
      end

      # Returns a list of Issuing Transaction objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/issuing/transactions",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves an Issuing Transaction object.
      def retrieve(transaction, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/issuing/transactions/%<transaction>s", { transaction: CGI.escape(transaction) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Updates the specified Issuing Transaction object by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
      def update(transaction, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/issuing/transactions/%<transaction>s", { transaction: CGI.escape(transaction) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
