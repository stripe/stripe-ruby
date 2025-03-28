# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    class TokenService < StripeService
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
        # The Issuing card identifier to list tokens for.
        attr_accessor :card
        # Only return Issuing tokens that were created during the given date interval.
        attr_accessor :created
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        attr_accessor :starting_after
        # Select Issuing tokens with the given status.
        attr_accessor :status

        def initialize(
          card: nil,
          created: nil,
          ending_before: nil,
          expand: nil,
          limit: nil,
          starting_after: nil,
          status: nil
        )
          @card = card
          @created = created
          @ending_before = ending_before
          @expand = expand
          @limit = limit
          @starting_after = starting_after
          @status = status
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
        # Specifies which status the token should be updated to.
        attr_accessor :status

        def initialize(expand: nil, status: nil)
          @expand = expand
          @status = status
        end
      end

      # Lists all Issuing Token objects for a given card.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/issuing/tokens",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves an Issuing Token object.
      def retrieve(token, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/issuing/tokens/%<token>s", { token: CGI.escape(token) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Attempts to update the specified Issuing Token object to the status specified.
      def update(token, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/issuing/tokens/%<token>s", { token: CGI.escape(token) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
