# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Network
      # The Stripe profile represents a business' public identity on the Stripe network.
      class BusinessProfile < APIResource
        class Branding < ::Stripe::StripeObject
          class Icon < ::Stripe::StripeObject
            # The URL of the image in its original size.
            sig { returns(String) }
            def original; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Logo < ::Stripe::StripeObject
            # The URL of the image in its original size.
            sig { returns(String) }
            def original; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # URL of the icon for the business. The image will be square and at least 128px x 128px.
          sig { returns(T.nilable(Icon)) }
          def icon; end
          # URL of the logo for the business. The image will be at least 128px x 128px.
          sig { returns(T.nilable(Logo)) }
          def logo; end
          # A CSS hex color value representing the primary branding color for this business.
          sig { returns(T.nilable(String)) }
          def primary_color; end
          # A CSS hex color value representing the secondary branding color for this business.
          sig { returns(T.nilable(String)) }
          def secondary_color; end
          def self.inner_class_types
            @inner_class_types = {icon: Icon, logo: Logo}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Branding data for the business.
        sig { returns(T.nilable(Branding)) }
        def branding; end
        # The description of the business.
        sig { returns(T.nilable(String)) }
        def description; end
        # The display name of the Stripe profile.
        sig { returns(String) }
        def display_name; end
        # The ID of the Stripe business profile; also known as the Network ID. This is the ID used to identify the business on the Stripe network.
        sig { returns(String) }
        def id; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The URL of the business.
        sig { returns(T.nilable(String)) }
        def url; end
        # The username of the Stripe profile.
        sig { returns(String) }
        def username; end
      end
    end
  end
end