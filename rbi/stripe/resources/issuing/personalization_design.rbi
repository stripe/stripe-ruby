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
        def footer_body; end
        # The footer title text of the carrier letter.
        sig { returns(T.nilable(String)) }
        def footer_title; end
        # The header body text of the carrier letter.
        sig { returns(T.nilable(String)) }
        def header_body; end
        # The header title text of the carrier letter.
        sig { returns(T.nilable(String)) }
        def header_title; end
      end
      class Preferences < Stripe::StripeObject
        # Whether we use this personalization design to create cards when one isn't specified. A connected account uses the Connect platform's default design if no personalization design is set as the default design.
        sig { returns(T::Boolean) }
        def is_default; end
        # Whether this personalization design is used to create cards when one is not specified and a default for this connected account does not exist.
        sig { returns(T.nilable(T::Boolean)) }
        def is_platform_default; end
      end
      class RejectionReasons < Stripe::StripeObject
        # The reason(s) the card logo was rejected.
        sig { returns(T.nilable(T::Array[String])) }
        def card_logo; end
        # The reason(s) the carrier text was rejected.
        sig { returns(T.nilable(T::Array[String])) }
        def carrier_text; end
      end
      # The file for the card logo to use with physical bundles that support card logos. Must have a `purpose` value of `issuing_logo`.
      sig { returns(T.nilable(T.any(String, Stripe::File))) }
      def card_logo; end
      # Hash containing carrier text, for use with physical bundles that support carrier text.
      sig { returns(T.nilable(CarrierText)) }
      def carrier_text; end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def created; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      def livemode; end
      # A lookup key used to retrieve personalization designs dynamically from a static string. This may be up to 200 characters.
      sig { returns(T.nilable(String)) }
      def lookup_key; end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T::Hash[String, String]) }
      def metadata; end
      # Friendly display name.
      sig { returns(T.nilable(String)) }
      def name; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # The physical bundle object belonging to this personalization design.
      sig { returns(T.any(String, Stripe::Issuing::PhysicalBundle)) }
      def physical_bundle; end
      # Attribute for field preferences
      sig { returns(Preferences) }
      def preferences; end
      # Attribute for field rejection_reasons
      sig { returns(RejectionReasons) }
      def rejection_reasons; end
      # Whether this personalization design can be used to create cards.
      sig { returns(String) }
      def status; end
      class ListParams < Stripe::RequestParams
        class Preferences < Stripe::RequestParams
          # Only return the personalization design that's set as the default. A connected account uses the Connect platform's default design if no personalization design is set as the default.
          sig { returns(T.nilable(T::Boolean)) }
          def is_default; end
          sig { params(_is_default: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def is_default=(_is_default); end
          # Only return the personalization design that is set as the Connect platform's default. This parameter is only applicable to connected accounts.
          sig { returns(T.nilable(T::Boolean)) }
          def is_platform_default; end
          sig { params(_is_platform_default: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def is_platform_default=(_is_platform_default); end
          sig {
            params(is_default: T.nilable(T::Boolean), is_platform_default: T.nilable(T::Boolean)).void
           }
          def initialize(is_default: nil, is_platform_default: nil); end
        end
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(T.nilable(String)) }
        def ending_before; end
        sig { params(_ending_before: T.nilable(String)).returns(T.nilable(String)) }
        def ending_before=(_ending_before); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # Only return personalization designs with the given lookup keys.
        sig { returns(T.nilable(T::Array[String])) }
        def lookup_keys; end
        sig {
          params(_lookup_keys: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
         }
        def lookup_keys=(_lookup_keys); end
        # Only return personalization designs with the given preferences.
        sig {
          returns(T.nilable(::Stripe::Issuing::PersonalizationDesign::ListParams::Preferences))
         }
        def preferences; end
        sig {
          params(_preferences: T.nilable(::Stripe::Issuing::PersonalizationDesign::ListParams::Preferences)).returns(T.nilable(::Stripe::Issuing::PersonalizationDesign::ListParams::Preferences))
         }
        def preferences=(_preferences); end
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        def starting_after; end
        sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
        def starting_after=(_starting_after); end
        # Only return personalization designs with the given status.
        sig { returns(T.nilable(String)) }
        def status; end
        sig { params(_status: T.nilable(String)).returns(T.nilable(String)) }
        def status=(_status); end
        sig {
          params(ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), lookup_keys: T.nilable(T::Array[String]), preferences: T.nilable(::Stripe::Issuing::PersonalizationDesign::ListParams::Preferences), starting_after: T.nilable(String), status: T.nilable(String)).void
         }
        def initialize(
          ending_before: nil,
          expand: nil,
          limit: nil,
          lookup_keys: nil,
          preferences: nil,
          starting_after: nil,
          status: nil
        ); end
      end
      class CreateParams < Stripe::RequestParams
        class CarrierText < Stripe::RequestParams
          # The footer body text of the carrier letter.
          sig { returns(T.nilable(String)) }
          def footer_body; end
          sig { params(_footer_body: T.nilable(String)).returns(T.nilable(String)) }
          def footer_body=(_footer_body); end
          # The footer title text of the carrier letter.
          sig { returns(T.nilable(String)) }
          def footer_title; end
          sig { params(_footer_title: T.nilable(String)).returns(T.nilable(String)) }
          def footer_title=(_footer_title); end
          # The header body text of the carrier letter.
          sig { returns(T.nilable(String)) }
          def header_body; end
          sig { params(_header_body: T.nilable(String)).returns(T.nilable(String)) }
          def header_body=(_header_body); end
          # The header title text of the carrier letter.
          sig { returns(T.nilable(String)) }
          def header_title; end
          sig { params(_header_title: T.nilable(String)).returns(T.nilable(String)) }
          def header_title=(_header_title); end
          sig {
            params(footer_body: T.nilable(String), footer_title: T.nilable(String), header_body: T.nilable(String), header_title: T.nilable(String)).void
           }
          def initialize(
            footer_body: nil,
            footer_title: nil,
            header_body: nil,
            header_title: nil
          ); end
        end
        class Preferences < Stripe::RequestParams
          # Whether we use this personalization design to create cards when one isn't specified. A connected account uses the Connect platform's default design if no personalization design is set as the default design.
          sig { returns(T::Boolean) }
          def is_default; end
          sig { params(_is_default: T::Boolean).returns(T::Boolean) }
          def is_default=(_is_default); end
          sig { params(is_default: T::Boolean).void }
          def initialize(is_default: nil); end
        end
        # The file for the card logo, for use with physical bundles that support card logos. Must have a `purpose` value of `issuing_logo`.
        sig { returns(T.nilable(String)) }
        def card_logo; end
        sig { params(_card_logo: T.nilable(String)).returns(T.nilable(String)) }
        def card_logo=(_card_logo); end
        # Hash containing carrier text, for use with physical bundles that support carrier text.
        sig {
          returns(T.nilable(::Stripe::Issuing::PersonalizationDesign::CreateParams::CarrierText))
         }
        def carrier_text; end
        sig {
          params(_carrier_text: T.nilable(::Stripe::Issuing::PersonalizationDesign::CreateParams::CarrierText)).returns(T.nilable(::Stripe::Issuing::PersonalizationDesign::CreateParams::CarrierText))
         }
        def carrier_text=(_carrier_text); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # A lookup key used to retrieve personalization designs dynamically from a static string. This may be up to 200 characters.
        sig { returns(T.nilable(String)) }
        def lookup_key; end
        sig { params(_lookup_key: T.nilable(String)).returns(T.nilable(String)) }
        def lookup_key=(_lookup_key); end
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        # Friendly display name.
        sig { returns(T.nilable(String)) }
        def name; end
        sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
        def name=(_name); end
        # The physical bundle object belonging to this personalization design.
        sig { returns(String) }
        def physical_bundle; end
        sig { params(_physical_bundle: String).returns(String) }
        def physical_bundle=(_physical_bundle); end
        # Information on whether this personalization design is used to create cards when one is not specified.
        sig {
          returns(T.nilable(::Stripe::Issuing::PersonalizationDesign::CreateParams::Preferences))
         }
        def preferences; end
        sig {
          params(_preferences: T.nilable(::Stripe::Issuing::PersonalizationDesign::CreateParams::Preferences)).returns(T.nilable(::Stripe::Issuing::PersonalizationDesign::CreateParams::Preferences))
         }
        def preferences=(_preferences); end
        # If set to true, will atomically remove the lookup key from the existing personalization design, and assign it to this personalization design.
        sig { returns(T.nilable(T::Boolean)) }
        def transfer_lookup_key; end
        sig { params(_transfer_lookup_key: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def transfer_lookup_key=(_transfer_lookup_key); end
        sig {
          params(card_logo: T.nilable(String), carrier_text: T.nilable(::Stripe::Issuing::PersonalizationDesign::CreateParams::CarrierText), expand: T.nilable(T::Array[String]), lookup_key: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), name: T.nilable(String), physical_bundle: String, preferences: T.nilable(::Stripe::Issuing::PersonalizationDesign::CreateParams::Preferences), transfer_lookup_key: T.nilable(T::Boolean)).void
         }
        def initialize(
          card_logo: nil,
          carrier_text: nil,
          expand: nil,
          lookup_key: nil,
          metadata: nil,
          name: nil,
          physical_bundle: nil,
          preferences: nil,
          transfer_lookup_key: nil
        ); end
      end
      class UpdateParams < Stripe::RequestParams
        class CarrierText < Stripe::RequestParams
          # The footer body text of the carrier letter.
          sig { returns(T.nilable(String)) }
          def footer_body; end
          sig { params(_footer_body: T.nilable(String)).returns(T.nilable(String)) }
          def footer_body=(_footer_body); end
          # The footer title text of the carrier letter.
          sig { returns(T.nilable(String)) }
          def footer_title; end
          sig { params(_footer_title: T.nilable(String)).returns(T.nilable(String)) }
          def footer_title=(_footer_title); end
          # The header body text of the carrier letter.
          sig { returns(T.nilable(String)) }
          def header_body; end
          sig { params(_header_body: T.nilable(String)).returns(T.nilable(String)) }
          def header_body=(_header_body); end
          # The header title text of the carrier letter.
          sig { returns(T.nilable(String)) }
          def header_title; end
          sig { params(_header_title: T.nilable(String)).returns(T.nilable(String)) }
          def header_title=(_header_title); end
          sig {
            params(footer_body: T.nilable(String), footer_title: T.nilable(String), header_body: T.nilable(String), header_title: T.nilable(String)).void
           }
          def initialize(
            footer_body: nil,
            footer_title: nil,
            header_body: nil,
            header_title: nil
          ); end
        end
        class Preferences < Stripe::RequestParams
          # Whether we use this personalization design to create cards when one isn't specified. A connected account uses the Connect platform's default design if no personalization design is set as the default design.
          sig { returns(T::Boolean) }
          def is_default; end
          sig { params(_is_default: T::Boolean).returns(T::Boolean) }
          def is_default=(_is_default); end
          sig { params(is_default: T::Boolean).void }
          def initialize(is_default: nil); end
        end
        # The file for the card logo, for use with physical bundles that support card logos. Must have a `purpose` value of `issuing_logo`.
        sig { returns(T.nilable(String)) }
        def card_logo; end
        sig { params(_card_logo: T.nilable(String)).returns(T.nilable(String)) }
        def card_logo=(_card_logo); end
        # Hash containing carrier text, for use with physical bundles that support carrier text.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::Issuing::PersonalizationDesign::UpdateParams::CarrierText)))
         }
        def carrier_text; end
        sig {
          params(_carrier_text: T.nilable(T.any(String, ::Stripe::Issuing::PersonalizationDesign::UpdateParams::CarrierText))).returns(T.nilable(T.any(String, ::Stripe::Issuing::PersonalizationDesign::UpdateParams::CarrierText)))
         }
        def carrier_text=(_carrier_text); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # A lookup key used to retrieve personalization designs dynamically from a static string. This may be up to 200 characters.
        sig { returns(T.nilable(String)) }
        def lookup_key; end
        sig { params(_lookup_key: T.nilable(String)).returns(T.nilable(String)) }
        def lookup_key=(_lookup_key); end
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        # Friendly display name. Providing an empty string will set the field to null.
        sig { returns(T.nilable(String)) }
        def name; end
        sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
        def name=(_name); end
        # The physical bundle object belonging to this personalization design.
        sig { returns(T.nilable(String)) }
        def physical_bundle; end
        sig { params(_physical_bundle: T.nilable(String)).returns(T.nilable(String)) }
        def physical_bundle=(_physical_bundle); end
        # Information on whether this personalization design is used to create cards when one is not specified.
        sig {
          returns(T.nilable(::Stripe::Issuing::PersonalizationDesign::UpdateParams::Preferences))
         }
        def preferences; end
        sig {
          params(_preferences: T.nilable(::Stripe::Issuing::PersonalizationDesign::UpdateParams::Preferences)).returns(T.nilable(::Stripe::Issuing::PersonalizationDesign::UpdateParams::Preferences))
         }
        def preferences=(_preferences); end
        # If set to true, will atomically remove the lookup key from the existing personalization design, and assign it to this personalization design.
        sig { returns(T.nilable(T::Boolean)) }
        def transfer_lookup_key; end
        sig { params(_transfer_lookup_key: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def transfer_lookup_key=(_transfer_lookup_key); end
        sig {
          params(card_logo: T.nilable(String), carrier_text: T.nilable(T.any(String, ::Stripe::Issuing::PersonalizationDesign::UpdateParams::CarrierText)), expand: T.nilable(T::Array[String]), lookup_key: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), name: T.nilable(String), physical_bundle: T.nilable(String), preferences: T.nilable(::Stripe::Issuing::PersonalizationDesign::UpdateParams::Preferences), transfer_lookup_key: T.nilable(T::Boolean)).void
         }
        def initialize(
          card_logo: nil,
          carrier_text: nil,
          expand: nil,
          lookup_key: nil,
          metadata: nil,
          name: nil,
          physical_bundle: nil,
          preferences: nil,
          transfer_lookup_key: nil
        ); end
      end
      class ActivateParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class DeactivateParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class RejectParams < Stripe::RequestParams
        class RejectionReasons < Stripe::RequestParams
          # The reason(s) the card logo was rejected.
          sig { returns(T.nilable(T::Array[String])) }
          def card_logo; end
          sig {
            params(_card_logo: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def card_logo=(_card_logo); end
          # The reason(s) the carrier text was rejected.
          sig { returns(T.nilable(T::Array[String])) }
          def carrier_text; end
          sig {
            params(_carrier_text: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def carrier_text=(_carrier_text); end
          sig {
            params(card_logo: T.nilable(T::Array[String]), carrier_text: T.nilable(T::Array[String])).void
           }
          def initialize(card_logo: nil, carrier_text: nil); end
        end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # The reason(s) the personalization design was rejected.
        sig { returns(::Stripe::Issuing::PersonalizationDesign::RejectParams::RejectionReasons) }
        def rejection_reasons; end
        sig {
          params(_rejection_reasons: ::Stripe::Issuing::PersonalizationDesign::RejectParams::RejectionReasons).returns(::Stripe::Issuing::PersonalizationDesign::RejectParams::RejectionReasons)
         }
        def rejection_reasons=(_rejection_reasons); end
        sig {
          params(expand: T.nilable(T::Array[String]), rejection_reasons: ::Stripe::Issuing::PersonalizationDesign::RejectParams::RejectionReasons).void
         }
        def initialize(expand: nil, rejection_reasons: nil); end
      end
      # Creates a personalization design object.
      sig {
        params(params: T.any(::Stripe::Issuing::PersonalizationDesign::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::PersonalizationDesign)
       }
      def self.create(params = {}, opts = {}); end

      # Returns a list of personalization design objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
      sig {
        params(params: T.any(::Stripe::Issuing::PersonalizationDesign::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end

      # Updates a card personalization object.
      sig {
        params(personalization_design: String, params: T.any(::Stripe::Issuing::PersonalizationDesign::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::PersonalizationDesign)
       }
      def self.update(personalization_design, params = {}, opts = {}); end
    end
  end
end