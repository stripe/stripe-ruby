# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Climate
    # A supplier of carbon removal.
    class Supplier < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "climate.supplier"
      def self.object_name
        "climate.supplier"
      end

      class Location < Stripe::StripeObject
        # The city where the supplier is located.
        attr_reader :city
        # Two-letter ISO code representing the country where the supplier is located.
        attr_reader :country
        # The geographic latitude where the supplier is located.
        attr_reader :latitude
        # The geographic longitude where the supplier is located.
        attr_reader :longitude
        # The state/county/province/region where the supplier is located.
        attr_reader :region
      end

      class ListParams < Stripe::RequestParams
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        attr_accessor :starting_after

        def initialize(ending_before: nil, expand: nil, limit: nil, starting_after: nil)
          @ending_before = ending_before
          @expand = expand
          @limit = limit
          @starting_after = starting_after
        end
      end
      # Unique identifier for the object.
      attr_reader :id
      # Link to a webpage to learn more about the supplier.
      attr_reader :info_url
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # The locations in which this supplier operates.
      attr_reader :locations
      # Name of this carbon removal supplier.
      attr_reader :name
      # String representing the object’s type. Objects of the same type share the same value.
      attr_reader :object
      # The scientific pathway used for carbon removal.
      attr_reader :removal_pathway

      # Lists all available Climate supplier objects.
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/climate/suppliers",
          params: params,
          opts: opts
        )
      end
    end
  end
end
