# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Identity
    class VerificationSessionListParams < ::Stripe::RequestParams
      class Created < ::Stripe::RequestParams
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
      # A string to reference this user. This can be a customer ID, a session ID, or similar, and can be used to reconcile this verification with your internal systems.
      attr_accessor :client_reference_id
      # Only return VerificationSessions that were created during the given date interval.
      attr_accessor :created
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # Attribute for param field related_customer
      attr_accessor :related_customer
      # Attribute for param field related_customer_account
      attr_accessor :related_customer_account
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after
      # Only return VerificationSessions with this status. [Learn more about the lifecycle of sessions](https://stripe.com/docs/identity/how-sessions-work).
      attr_accessor :status

      def initialize(
        client_reference_id: nil,
        created: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        related_customer: nil,
        related_customer_account: nil,
        starting_after: nil,
        status: nil
      )
        @client_reference_id = client_reference_id
        @created = created
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @related_customer = related_customer
        @related_customer_account = related_customer_account
        @starting_after = starting_after
        @status = status
      end
    end
  end
end
