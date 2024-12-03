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
    end
  end
end