# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    class PersonalizationDesignService < StripeService
      class ListParams < Stripe::RequestParams
        class Preferences < Stripe::RequestParams
          # Only return the personalization design that's set as the default. A connected account uses the Connect platform's default design if no personalization design is set as the default.
          attr_accessor :is_default
          # Only return the personalization design that is set as the Connect platform's default. This parameter is only applicable to connected accounts.
          attr_accessor :is_platform_default

          def initialize(is_default: nil, is_platform_default: nil)
            @is_default = is_default
            @is_platform_default = is_platform_default
          end
        end
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        attr_accessor :limit
        # Only return personalization designs with the given lookup keys.
        attr_accessor :lookup_keys
        # Only return personalization designs with the given preferences.
        attr_accessor :preferences
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        attr_accessor :starting_after
        # Only return personalization designs with the given status.
        attr_accessor :status

        def initialize(
          ending_before: nil,
          expand: nil,
          limit: nil,
          lookup_keys: nil,
          preferences: nil,
          starting_after: nil,
          status: nil
        )
          @ending_before = ending_before
          @expand = expand
          @limit = limit
          @lookup_keys = lookup_keys
          @preferences = preferences
          @starting_after = starting_after
          @status = status
        end
      end

      class CreateParams < Stripe::RequestParams
        class CarrierText < Stripe::RequestParams
          # The footer body text of the carrier letter.
          attr_accessor :footer_body
          # The footer title text of the carrier letter.
          attr_accessor :footer_title
          # The header body text of the carrier letter.
          attr_accessor :header_body
          # The header title text of the carrier letter.
          attr_accessor :header_title

          def initialize(footer_body: nil, footer_title: nil, header_body: nil, header_title: nil)
            @footer_body = footer_body
            @footer_title = footer_title
            @header_body = header_body
            @header_title = header_title
          end
        end

        class Preferences < Stripe::RequestParams
          # Whether we use this personalization design to create cards when one isn't specified. A connected account uses the Connect platform's default design if no personalization design is set as the default design.
          attr_accessor :is_default

          def initialize(is_default: nil)
            @is_default = is_default
          end
        end
        # The file for the card logo, for use with physical bundles that support card logos. Must have a `purpose` value of `issuing_logo`.
        attr_accessor :card_logo
        # Hash containing carrier text, for use with physical bundles that support carrier text.
        attr_accessor :carrier_text
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # A lookup key used to retrieve personalization designs dynamically from a static string. This may be up to 200 characters.
        attr_accessor :lookup_key
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata
        # Friendly display name.
        attr_accessor :name
        # The physical bundle object belonging to this personalization design.
        attr_accessor :physical_bundle
        # Information on whether this personalization design is used to create cards when one is not specified.
        attr_accessor :preferences
        # If set to true, will atomically remove the lookup key from the existing personalization design, and assign it to this personalization design.
        attr_accessor :transfer_lookup_key

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
        )
          @card_logo = card_logo
          @carrier_text = carrier_text
          @expand = expand
          @lookup_key = lookup_key
          @metadata = metadata
          @name = name
          @physical_bundle = physical_bundle
          @preferences = preferences
          @transfer_lookup_key = transfer_lookup_key
        end
      end

      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
        end
      end

      class UpdateParams < Stripe::RequestParams
        class CarrierText < Stripe::RequestParams
          # The footer body text of the carrier letter.
          attr_accessor :footer_body
          # The footer title text of the carrier letter.
          attr_accessor :footer_title
          # The header body text of the carrier letter.
          attr_accessor :header_body
          # The header title text of the carrier letter.
          attr_accessor :header_title

          def initialize(footer_body: nil, footer_title: nil, header_body: nil, header_title: nil)
            @footer_body = footer_body
            @footer_title = footer_title
            @header_body = header_body
            @header_title = header_title
          end
        end

        class Preferences < Stripe::RequestParams
          # Whether we use this personalization design to create cards when one isn't specified. A connected account uses the Connect platform's default design if no personalization design is set as the default design.
          attr_accessor :is_default

          def initialize(is_default: nil)
            @is_default = is_default
          end
        end
        # The file for the card logo, for use with physical bundles that support card logos. Must have a `purpose` value of `issuing_logo`.
        attr_accessor :card_logo
        # Hash containing carrier text, for use with physical bundles that support carrier text.
        attr_accessor :carrier_text
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # A lookup key used to retrieve personalization designs dynamically from a static string. This may be up to 200 characters.
        attr_accessor :lookup_key
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata
        # Friendly display name. Providing an empty string will set the field to null.
        attr_accessor :name
        # The physical bundle object belonging to this personalization design.
        attr_accessor :physical_bundle
        # Information on whether this personalization design is used to create cards when one is not specified.
        attr_accessor :preferences
        # If set to true, will atomically remove the lookup key from the existing personalization design, and assign it to this personalization design.
        attr_accessor :transfer_lookup_key

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
        )
          @card_logo = card_logo
          @carrier_text = carrier_text
          @expand = expand
          @lookup_key = lookup_key
          @metadata = metadata
          @name = name
          @physical_bundle = physical_bundle
          @preferences = preferences
          @transfer_lookup_key = transfer_lookup_key
        end
      end

      # Creates a personalization design object.
      def create(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/issuing/personalization_designs",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Returns a list of personalization design objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/issuing/personalization_designs",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves a personalization design object.
      def retrieve(personalization_design, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/issuing/personalization_designs/%<personalization_design>s", { personalization_design: CGI.escape(personalization_design) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Updates a card personalization object.
      def update(personalization_design, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/issuing/personalization_designs/%<personalization_design>s", { personalization_design: CGI.escape(personalization_design) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
