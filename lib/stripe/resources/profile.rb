# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A Stripe profile
  class Profile < APIResource
    OBJECT_NAME = "profile"
    def self.object_name
      "profile"
    end

    class Branding < ::Stripe::StripeObject
      class Icon < ::Stripe::StripeObject
        # The original image.
        attr_reader :original

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class Logo < ::Stripe::StripeObject
        # The original image.
        attr_reader :original

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Profile icon image.
      attr_reader :icon
      # Profile logo image.
      attr_reader :logo
      # The primary brand color for the profile.
      attr_reader :primary_color
      # The secondary brand color for the profile.
      attr_reader :secondary_color

      def self.inner_class_types
        @inner_class_types = { icon: Icon, logo: Logo }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
    # Branding information for the Stripe profile.
    attr_reader :branding
    # A description of the business or entity represented by the Stripe profile.
    attr_reader :description
    # The display name shown for the Stripe profile.
    attr_reader :display_name
    # Unique identifier for the Stripe profile.
    attr_reader :id
    # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
    attr_reader :livemode
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # The external website URL associated with the Stripe profile.
    attr_reader :url
    # The unique username for the Stripe profile.
    attr_reader :username

    def self.inner_class_types
      @inner_class_types = { branding: Branding }
    end

    def self.field_remappings
      @field_remappings = {}
    end
  end
end
