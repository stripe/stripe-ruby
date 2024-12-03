# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Issuing
    # A Personalization Design is a logical grouping of a Physical Bundle, card logo, and carrier text that represents a product line.
    class PersonalizationDesign < APIResource
      class CarrierText < Stripe::StripeObject
        # The footer body text of the carrier letter.
        sig { returns(T.nilable(String)) }
        attr_reader :footer_body
        # The footer title text of the carrier letter.
        sig { returns(T.nilable(String)) }
        attr_reader :footer_title
        # The header body text of the carrier letter.
        sig { returns(T.nilable(String)) }
        attr_reader :header_body
        # The header title text of the carrier letter.
        sig { returns(T.nilable(String)) }
        attr_reader :header_title
      end
      class Preferences < Stripe::StripeObject
        # Whether we use this personalization design to create cards when one isn't specified. A connected account uses the Connect platform's default design if no personalization design is set as the default design.
        sig { returns(T::Boolean) }
        attr_reader :is_default
        # Whether this personalization design is used to create cards when one is not specified and a default for this connected account does not exist.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_platform_default
      end
      class RejectionReasons < Stripe::StripeObject
        # The reason(s) the card logo was rejected.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :card_logo
        # The reason(s) the carrier text was rejected.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :carrier_text
      end
      # The file for the card logo to use with physical bundles that support card logos. Must have a `purpose` value of `issuing_logo`.
      sig { returns(T.nilable(T.any(String, Stripe::File))) }
      attr_reader :card_logo

      # Hash containing carrier text, for use with physical bundles that support carrier text.
      sig { returns(T.nilable(CarrierText)) }
      attr_reader :carrier_text

      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created

      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id

      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode

      # A lookup key used to retrieve personalization designs dynamically from a static string. This may be up to 200 characters.
      sig { returns(T.nilable(String)) }
      attr_reader :lookup_key

      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T::Hash[String, String]) }
      attr_reader :metadata

      # Friendly display name.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object

      # The physical bundle object belonging to this personalization design.
      sig { returns(T.any(String, Stripe::Issuing::PhysicalBundle)) }
      attr_reader :physical_bundle

      # Attribute for field preferences
      sig { returns(Preferences) }
      attr_reader :preferences

      # Attribute for field rejection_reasons
      sig { returns(RejectionReasons) }
      attr_reader :rejection_reasons

      # Whether this personalization design can be used to create cards.
      sig { returns(String) }
      attr_reader :status
    end
  end
end