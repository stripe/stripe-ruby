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
        # Attribute for field original
        attr_reader :original

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class Logo < ::Stripe::StripeObject
        # Attribute for field original
        attr_reader :original

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Attribute for field icon
      attr_reader :icon
      # Attribute for field logo
      attr_reader :logo
      # Attribute for field primary_color
      attr_reader :primary_color
      # Attribute for field secondary_color
      attr_reader :secondary_color

      def self.inner_class_types
        @inner_class_types = { icon: Icon, logo: Logo }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
    # Attribute for field branding
    attr_reader :branding
    # Attribute for field description
    attr_reader :description
    # Attribute for field display_name
    attr_reader :display_name
    # Attribute for field id
    attr_reader :id
    # Attribute for field livemode
    attr_reader :livemode
    # Attribute for field object
    attr_reader :object
    # Attribute for field url
    attr_reader :url
    # Attribute for field username
    attr_reader :username

    def self.inner_class_types
      @inner_class_types = { branding: Branding }
    end

    def self.field_remappings
      @field_remappings = {}
    end
  end
end
