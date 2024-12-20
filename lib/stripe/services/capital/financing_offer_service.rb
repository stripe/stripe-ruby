# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Capital
    class FinancingOfferService < StripeService
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
        # limit list to offers belonging to given connected account
        attr_accessor :connected_account

        # Only return offers that were created during the given date interval.
        attr_accessor :created

        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        attr_accessor :ending_before

        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        attr_accessor :limit

        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        attr_accessor :starting_after

        # limit list to offers with given status
        attr_accessor :status

        def initialize(
          connected_account: nil,
          created: nil,
          ending_before: nil,
          expand: nil,
          limit: nil,
          starting_after: nil,
          status: nil
        )
          @connected_account = connected_account
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

      class MarkDeliveredParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
        end
      end

      # Retrieves the financing offers available for Connected accounts that belong to your platform.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/capital/financing_offers",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Acknowledges that platform has received and delivered the financing_offer to
      # the intended merchant recipient.
      def mark_delivered(financing_offer, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/capital/financing_offers/%<financing_offer>s/mark_delivered", { financing_offer: CGI.escape(financing_offer) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Get the details of the financing offer
      def retrieve(financing_offer, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/capital/financing_offers/%<financing_offer>s", { financing_offer: CGI.escape(financing_offer) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
