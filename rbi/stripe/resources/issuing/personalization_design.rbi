# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Issuing
    # A Personalization Design is a logical grouping of a Physical Bundle, card logo, and carrier text that represents a product line.
    class PersonalizationDesign < APIResource
      class CarrierText < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :footer_body
        sig { returns(T.nilable(String)) }
        attr_reader :footer_title
        sig { returns(T.nilable(String)) }
        attr_reader :header_body
        sig { returns(T.nilable(String)) }
        attr_reader :header_title
      end
      class Preferences < Stripe::StripeObject
        sig { returns(T::Boolean) }
        attr_reader :is_default
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_platform_default
      end
      class RejectionReasons < Stripe::StripeObject
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :card_logo
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :carrier_text
      end
      sig { returns(T.nilable(T.any(String, Stripe::File))) }
      # The file for the card logo to use with physical bundles that support card logos. Must have a `purpose` value of `issuing_logo`.
      attr_reader :card_logo
      sig { returns(T.nilable(CarrierText)) }
      # Hash containing carrier text, for use with physical bundles that support carrier text.
      attr_reader :carrier_text
      sig { returns(Integer) }
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(T.nilable(String)) }
      # A lookup key used to retrieve personalization designs dynamically from a static string. This may be up to 200 characters.
      attr_reader :lookup_key
      sig { returns(T::Hash[String, String]) }
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      sig { returns(T.nilable(String)) }
      # Friendly display name.
      attr_reader :name
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(T.any(String, Stripe::Issuing::PhysicalBundle)) }
      # The physical bundle object belonging to this personalization design.
      attr_reader :physical_bundle
      sig { returns(Preferences) }
      # Attribute for field preferences
      attr_reader :preferences
      sig { returns(RejectionReasons) }
      # Attribute for field rejection_reasons
      attr_reader :rejection_reasons
      sig { returns(String) }
      # Whether this personalization design can be used to create cards.
      attr_reader :status
    end
  end
end