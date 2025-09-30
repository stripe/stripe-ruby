# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Checkout
    class SessionListParams < Stripe::RequestParams
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

      class CustomerDetails < Stripe::RequestParams
        # Customer's email address.
        attr_accessor :email

        def initialize(email: nil)
          @email = email
        end
      end
      # Only return Checkout Sessions that were created during the given date interval.
      attr_accessor :created
      # Only return the Checkout Sessions for the Customer specified.
      attr_accessor :customer
      # Only return the Checkout Sessions for the Account specified.
      attr_accessor :customer_account
      # Only return the Checkout Sessions for the Customer details specified.
      attr_accessor :customer_details
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # Only return the Checkout Session for the PaymentIntent specified.
      attr_accessor :payment_intent
      # Only return the Checkout Sessions for the Payment Link specified.
      attr_accessor :payment_link
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after
      # Only return the Checkout Sessions matching the given status.
      attr_accessor :status
      # Only return the Checkout Session for the subscription specified.
      attr_accessor :subscription

      def initialize(
        created: nil,
        customer: nil,
        customer_account: nil,
        customer_details: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        payment_intent: nil,
        payment_link: nil,
        starting_after: nil,
        status: nil,
        subscription: nil
      )
        @created = created
        @customer = customer
        @customer_account = customer_account
        @customer_details = customer_details
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @payment_intent = payment_intent
        @payment_link = payment_link
        @starting_after = starting_after
        @status = status
        @subscription = subscription
      end
    end
  end
end
