# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Network
      # The Stripe profile represents a business' public identity on the Stripe network.
      class BusinessProfile < APIResource
        OBJECT_NAME = "v2.network.business_profile"
        def self.object_name
          "v2.network.business_profile"
        end

        class Branding < ::Stripe::StripeObject
          class Icon < ::Stripe::StripeObject
            # The URL of the image in its original size.
            attr_reader :original

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Logo < ::Stripe::StripeObject
            # The URL of the image in its original size.
            attr_reader :original

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # URL of the icon for the business. The image will be square and at least 128px x 128px.
          attr_reader :icon
          # URL of the logo for the business. The image will be at least 128px x 128px.
          attr_reader :logo
          # A CSS hex color value representing the primary branding color for this business.
          attr_reader :primary_color
          # A CSS hex color value representing the secondary branding color for this business.
          attr_reader :secondary_color

          def self.inner_class_types
            @inner_class_types = { icon: Icon, logo: Logo }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Branding data for the business.
        attr_reader :branding
        # The description of the business.
        attr_reader :description
        # The display name of the Stripe profile.
        attr_reader :display_name
        # The ID of the Stripe business profile; also known as the Network ID. This is the ID used to identify the business on the Stripe network.
        attr_reader :id
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The URL of the business.
        attr_reader :url
        # The username of the Stripe profile.
        attr_reader :username

        def self.inner_class_types
          @inner_class_types = { branding: Branding }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
