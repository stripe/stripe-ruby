# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Entitlements
    # An active entitlement describes access to a feature for a customer.
    class ActiveEntitlement < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "entitlements.active_entitlement"
      def self.object_name
        "entitlements.active_entitlement"
      end

      class ListParams < Stripe::RequestParams
        # The ID of the customer.
        attr_accessor :customer
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        attr_accessor :starting_after

        def initialize(
          customer: nil,
          ending_before: nil,
          expand: nil,
          limit: nil,
          starting_after: nil
        )
          @customer = customer
          @ending_before = ending_before
          @expand = expand
          @limit = limit
          @starting_after = starting_after
        end
      end
      # The [Feature](https://stripe.com/docs/api/entitlements/feature) that the customer is entitled to.
      attr_reader :feature
      # Unique identifier for the object.
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # A unique key you provide as your own system identifier. This may be up to 80 characters.
      attr_reader :lookup_key
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object

      # Retrieve a list of active entitlements for a customer
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/entitlements/active_entitlements",
          params: params,
          opts: opts
        )
      end
    end
  end
end
