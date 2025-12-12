# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Reserve
    class ReleaseListParams < ::Stripe::RequestParams
      # Only return ReserveReleases associated with the currency specified by this currency code. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_accessor :currency
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # Only return ReserveReleases associated with the ReserveHold specified by this ReserveHold ID.
      attr_accessor :reserve_hold
      # Only return ReserveReleases associated with the ReservePlan specified by this ReservePlan ID.
      attr_accessor :reserve_plan
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after

      def initialize(
        currency: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        reserve_hold: nil,
        reserve_plan: nil,
        starting_after: nil
      )
        @currency = currency
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @reserve_hold = reserve_hold
        @reserve_plan = reserve_plan
        @starting_after = starting_after
      end
    end
  end
end
