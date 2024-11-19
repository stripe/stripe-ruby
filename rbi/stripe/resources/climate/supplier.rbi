# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Climate
    # A supplier of carbon removal.
    class Supplier < APIResource
      class Location < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :city
        sig { returns(String) }
        attr_reader :country
        sig { returns(T.nilable(Float)) }
        attr_reader :latitude
        sig { returns(T.nilable(Float)) }
        attr_reader :longitude
        sig { returns(T.nilable(String)) }
        attr_reader :region
      end
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(String) }
      # Link to a webpage to learn more about the supplier.
      attr_reader :info_url
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(T::Array[Location]) }
      # The locations in which this supplier operates.
      attr_reader :locations
      sig { returns(String) }
      # Name of this carbon removal supplier.
      attr_reader :name
      sig { returns(String) }
      # String representing the object’s type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(String) }
      # The scientific pathway used for carbon removal.
      attr_reader :removal_pathway
    end
  end
end