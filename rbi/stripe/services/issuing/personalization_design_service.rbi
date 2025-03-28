# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Issuing
    class PersonalizationDesignService < StripeService
      class ListParams < Stripe::RequestParams
        class Preferences < Stripe::RequestParams
          # Only return the personalization design that's set as the default. A connected account uses the Connect platform's default design if no personalization design is set as the default.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :is_default
          # Only return the personalization design that is set as the Connect platform's default. This parameter is only applicable to connected accounts.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :is_platform_default
          sig {
            params(is_default: T.nilable(T::Boolean), is_platform_default: T.nilable(T::Boolean)).void
           }
          def initialize(is_default: nil, is_platform_default: nil); end
        end
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :limit
        # Only return personalization designs with the given lookup keys.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :lookup_keys
        # Only return personalization designs with the given preferences.
        sig {
          returns(T.nilable(::Stripe::Issuing::PersonalizationDesignService::ListParams::Preferences))
         }
        attr_accessor :preferences
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :starting_after
        # Only return personalization designs with the given status.
        sig { returns(T.nilable(String)) }
        attr_accessor :status
        sig {
          params(ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), lookup_keys: T.nilable(T::Array[String]), preferences: T.nilable(::Stripe::Issuing::PersonalizationDesignService::ListParams::Preferences), starting_after: T.nilable(String), status: T.nilable(String)).void
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
          sig { returns(T.nilable(T.nilable(String))) }
          attr_accessor :footer_body
          # The footer title text of the carrier letter.
          sig { returns(T.nilable(T.nilable(String))) }
          attr_accessor :footer_title
          # The header body text of the carrier letter.
          sig { returns(T.nilable(T.nilable(String))) }
          attr_accessor :header_body
          # The header title text of the carrier letter.
          sig { returns(T.nilable(T.nilable(String))) }
          attr_accessor :header_title
          sig {
            params(footer_body: T.nilable(T.nilable(String)), footer_title: T.nilable(T.nilable(String)), header_body: T.nilable(T.nilable(String)), header_title: T.nilable(T.nilable(String))).void
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
          attr_accessor :is_default
          sig { params(is_default: T::Boolean).void }
          def initialize(is_default: nil); end
        end
        # The file for the card logo, for use with physical bundles that support card logos. Must have a `purpose` value of `issuing_logo`.
        sig { returns(T.nilable(String)) }
        attr_accessor :card_logo
        # Hash containing carrier text, for use with physical bundles that support carrier text.
        sig {
          returns(T.nilable(::Stripe::Issuing::PersonalizationDesignService::CreateParams::CarrierText))
         }
        attr_accessor :carrier_text
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # A lookup key used to retrieve personalization designs dynamically from a static string. This may be up to 200 characters.
        sig { returns(T.nilable(String)) }
        attr_accessor :lookup_key
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        # Friendly display name.
        sig { returns(T.nilable(String)) }
        attr_accessor :name
        # The physical bundle object belonging to this personalization design.
        sig { returns(String) }
        attr_accessor :physical_bundle
        # Information on whether this personalization design is used to create cards when one is not specified.
        sig {
          returns(T.nilable(::Stripe::Issuing::PersonalizationDesignService::CreateParams::Preferences))
         }
        attr_accessor :preferences
        # If set to true, will atomically remove the lookup key from the existing personalization design, and assign it to this personalization design.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :transfer_lookup_key
        sig {
          params(card_logo: T.nilable(String), carrier_text: T.nilable(::Stripe::Issuing::PersonalizationDesignService::CreateParams::CarrierText), expand: T.nilable(T::Array[String]), lookup_key: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), name: T.nilable(String), physical_bundle: String, preferences: T.nilable(::Stripe::Issuing::PersonalizationDesignService::CreateParams::Preferences), transfer_lookup_key: T.nilable(T::Boolean)).void
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
      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class UpdateParams < Stripe::RequestParams
        class CarrierText < Stripe::RequestParams
          # The footer body text of the carrier letter.
          sig { returns(T.nilable(T.nilable(String))) }
          attr_accessor :footer_body
          # The footer title text of the carrier letter.
          sig { returns(T.nilable(T.nilable(String))) }
          attr_accessor :footer_title
          # The header body text of the carrier letter.
          sig { returns(T.nilable(T.nilable(String))) }
          attr_accessor :header_body
          # The header title text of the carrier letter.
          sig { returns(T.nilable(T.nilable(String))) }
          attr_accessor :header_title
          sig {
            params(footer_body: T.nilable(T.nilable(String)), footer_title: T.nilable(T.nilable(String)), header_body: T.nilable(T.nilable(String)), header_title: T.nilable(T.nilable(String))).void
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
          attr_accessor :is_default
          sig { params(is_default: T::Boolean).void }
          def initialize(is_default: nil); end
        end
        # The file for the card logo, for use with physical bundles that support card logos. Must have a `purpose` value of `issuing_logo`.
        sig { returns(T.nilable(T.nilable(String))) }
        attr_accessor :card_logo
        # Hash containing carrier text, for use with physical bundles that support carrier text.
        sig {
          returns(T.nilable(T.nilable(T.any(String, ::Stripe::Issuing::PersonalizationDesignService::UpdateParams::CarrierText))))
         }
        attr_accessor :carrier_text
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # A lookup key used to retrieve personalization designs dynamically from a static string. This may be up to 200 characters.
        sig { returns(T.nilable(T.nilable(String))) }
        attr_accessor :lookup_key
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        # Friendly display name. Providing an empty string will set the field to null.
        sig { returns(T.nilable(T.nilable(String))) }
        attr_accessor :name
        # The physical bundle object belonging to this personalization design.
        sig { returns(T.nilable(String)) }
        attr_accessor :physical_bundle
        # Information on whether this personalization design is used to create cards when one is not specified.
        sig {
          returns(T.nilable(::Stripe::Issuing::PersonalizationDesignService::UpdateParams::Preferences))
         }
        attr_accessor :preferences
        # If set to true, will atomically remove the lookup key from the existing personalization design, and assign it to this personalization design.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :transfer_lookup_key
        sig {
          params(card_logo: T.nilable(T.nilable(String)), carrier_text: T.nilable(T.nilable(T.any(String, ::Stripe::Issuing::PersonalizationDesignService::UpdateParams::CarrierText))), expand: T.nilable(T::Array[String]), lookup_key: T.nilable(T.nilable(String)), metadata: T.nilable(T::Hash[String, String]), name: T.nilable(T.nilable(String)), physical_bundle: T.nilable(String), preferences: T.nilable(::Stripe::Issuing::PersonalizationDesignService::UpdateParams::Preferences), transfer_lookup_key: T.nilable(T::Boolean)).void
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
      # Creates a personalization design object.
      sig {
        params(params: T.any(::Stripe::Issuing::PersonalizationDesignService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::PersonalizationDesign)
       }
      def create(params = {}, opts = {}); end

      # Returns a list of personalization design objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
      sig {
        params(params: T.any(::Stripe::Issuing::PersonalizationDesignService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Retrieves a personalization design object.
      sig {
        params(personalization_design: String, params: T.any(::Stripe::Issuing::PersonalizationDesignService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::PersonalizationDesign)
       }
      def retrieve(personalization_design, params = {}, opts = {}); end

      # Updates a card personalization object.
      sig {
        params(personalization_design: String, params: T.any(::Stripe::Issuing::PersonalizationDesignService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::PersonalizationDesign)
       }
      def update(personalization_design, params = {}, opts = {}); end
    end
  end
end