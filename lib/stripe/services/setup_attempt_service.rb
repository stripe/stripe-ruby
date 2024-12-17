# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class SetupAttemptService < StripeService
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
      # A filter on the list, based on the object `created` field. The value
      # can be a string with an integer Unix timestamp or a
      # dictionary with a number of different query options.
      attr_accessor :created
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # Only return SetupAttempts created by the SetupIntent specified by
      # this ID.
      attr_accessor :setup_intent
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after

      def initialize(
        created: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        setup_intent: nil,
        starting_after: nil
      )
        @created = created
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @setup_intent = setup_intent
        @starting_after = starting_after
      end
    end

    # Returns a list of SetupAttempts that associate with a provided SetupIntent.
    def list(params = {}, opts = {})
      request(
        method: :get,
        path: "/v1/setup_attempts",
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
