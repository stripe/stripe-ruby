# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Climate
    # A supplier of carbon removal.
    class Supplier < APIResource
      class Location < Stripe::StripeObject
        # The city where the supplier is located.
        sig { returns(T.nilable(String)) }
        attr_reader :city
        # Two-letter ISO code representing the country where the supplier is located.
        sig { returns(String) }
        attr_reader :country
        # The geographic latitude where the supplier is located.
        sig { returns(T.nilable(Float)) }
        attr_reader :latitude
        # The geographic longitude where the supplier is located.
        sig { returns(T.nilable(Float)) }
        attr_reader :longitude
        # The state/county/province/region where the supplier is located.
        sig { returns(T.nilable(String)) }
        attr_reader :region
      end
      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id
      # Link to a webpage to learn more about the supplier.
      sig { returns(String) }
      attr_reader :info_url
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode
      # The locations in which this supplier operates.
      sig { returns(T::Array[Location]) }
      attr_reader :locations
      # Name of this carbon removal supplier.
      sig { returns(String) }
      attr_reader :name
      # String representing the object’s type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object
      # The scientific pathway used for carbon removal.
      sig { returns(String) }
      attr_reader :removal_pathway
      class ListParams < Stripe::RequestParams
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :starting_after
        sig {
          params(ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
         }
        def initialize(ending_before: nil, expand: nil, limit: nil, starting_after: nil); end
      end
      # Lists all available Climate supplier objects.
      sig {
        params(params: T.any(::Stripe::Climate::Supplier::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end
    end
  end
end