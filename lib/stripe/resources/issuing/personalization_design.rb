# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    # A Personalization Design is a logical grouping of a Physical Bundle, card logo, and carrier text that represents a product line.
    class PersonalizationDesign < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "issuing.personalization_design"
      def self.object_name
        "issuing.personalization_design"
      end

      class CarrierText < Stripe::StripeObject
        # The footer body text of the carrier letter.
        attr_reader :footer_body
        # The footer title text of the carrier letter.
        attr_reader :footer_title
        # The header body text of the carrier letter.
        attr_reader :header_body
        # The header title text of the carrier letter.
        attr_reader :header_title
      end

      class Preferences < Stripe::StripeObject
        # Whether we use this personalization design to create cards when one isn't specified. A connected account uses the Connect platform's default design if no personalization design is set as the default design.
        attr_reader :is_default
        # Whether this personalization design is used to create cards when one is not specified and a default for this connected account does not exist.
        attr_reader :is_platform_default
      end

      class RejectionReasons < Stripe::StripeObject
        # The reason(s) the card logo was rejected.
        attr_reader :card_logo
        # The reason(s) the carrier text was rejected.
        attr_reader :carrier_text
      end

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

      class ActivateParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
        end
      end

      class DeactivateParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
        end
      end

      class RejectParams < Stripe::RequestParams
        class RejectionReasons < Stripe::RequestParams
          # The reason(s) the card logo was rejected.
          attr_accessor :card_logo
          # The reason(s) the carrier text was rejected.
          attr_accessor :carrier_text

          def initialize(card_logo: nil, carrier_text: nil)
            @card_logo = card_logo
            @carrier_text = carrier_text
          end
        end
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # The reason(s) the personalization design was rejected.
        attr_accessor :rejection_reasons

        def initialize(expand: nil, rejection_reasons: nil)
          @expand = expand
          @rejection_reasons = rejection_reasons
        end
      end
      # The file for the card logo to use with physical bundles that support card logos. Must have a `purpose` value of `issuing_logo`.
      attr_reader :card_logo
      # Hash containing carrier text, for use with physical bundles that support carrier text.
      attr_reader :carrier_text
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # Unique identifier for the object.
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # A lookup key used to retrieve personalization designs dynamically from a static string. This may be up to 200 characters.
      attr_reader :lookup_key
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      # Friendly display name.
      attr_reader :name
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The physical bundle object belonging to this personalization design.
      attr_reader :physical_bundle
      # Attribute for field preferences
      attr_reader :preferences
      # Attribute for field rejection_reasons
      attr_reader :rejection_reasons
      # Whether this personalization design can be used to create cards.
      attr_reader :status

      # Creates a personalization design object.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/issuing/personalization_designs",
          params: params,
          opts: opts
        )
      end

      # Returns a list of personalization design objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/issuing/personalization_designs",
          params: params,
          opts: opts
        )
      end

      # Updates a card personalization object.
      def self.update(personalization_design, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/issuing/personalization_designs/%<personalization_design>s", { personalization_design: CGI.escape(personalization_design) }),
          params: params,
          opts: opts
        )
      end

      def test_helpers
        TestHelpers.new(self)
      end

      class TestHelpers < APIResourceTestHelpers
        RESOURCE_CLASS = PersonalizationDesign
        def self.resource_class
          "PersonalizationDesign"
        end

        # Updates the status of the specified testmode personalization design object to active.
        def self.activate(personalization_design, params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/personalization_designs/%<personalization_design>s/activate", { personalization_design: CGI.escape(personalization_design) }),
            params: params,
            opts: opts
          )
        end

        # Updates the status of the specified testmode personalization design object to active.
        def activate(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/personalization_designs/%<personalization_design>s/activate", { personalization_design: CGI.escape(@resource["id"]) }),
            params: params,
            opts: opts
          )
        end

        # Updates the status of the specified testmode personalization design object to inactive.
        def self.deactivate(personalization_design, params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/personalization_designs/%<personalization_design>s/deactivate", { personalization_design: CGI.escape(personalization_design) }),
            params: params,
            opts: opts
          )
        end

        # Updates the status of the specified testmode personalization design object to inactive.
        def deactivate(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/personalization_designs/%<personalization_design>s/deactivate", { personalization_design: CGI.escape(@resource["id"]) }),
            params: params,
            opts: opts
          )
        end

        # Updates the status of the specified testmode personalization design object to rejected.
        def self.reject(personalization_design, params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/personalization_designs/%<personalization_design>s/reject", { personalization_design: CGI.escape(personalization_design) }),
            params: params,
            opts: opts
          )
        end

        # Updates the status of the specified testmode personalization design object to rejected.
        def reject(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/personalization_designs/%<personalization_design>s/reject", { personalization_design: CGI.escape(@resource["id"]) }),
            params: params,
            opts: opts
          )
        end
      end
    end
  end
end
