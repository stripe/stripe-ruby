# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Billing
    class AlertNotificationListParams < ::Stripe::RequestParams
      class NotifiedAt < ::Stripe::RequestParams
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
      # Filter results to only include triggered or recovered notifications.
      attr_accessor :action
      # Filter results to only include notifications for the given billing cadence.
      attr_accessor :cadence
      # The customer to list notifications for.
      attr_accessor :customer
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # Filter results to only include notifications for the given meter.
      attr_accessor :meter
      # Filter results according to when the notification was sent.
      attr_accessor :notified_at
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after
      # Filter results to only include notifications for the given subscription.
      attr_accessor :subscription

      def initialize(
        action: nil,
        cadence: nil,
        customer: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        meter: nil,
        notified_at: nil,
        starting_after: nil,
        subscription: nil
      )
        @action = action
        @cadence = cadence
        @customer = customer
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @meter = meter
        @notified_at = notified_at
        @starting_after = starting_after
        @subscription = subscription
      end
    end
  end
end
