# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # A Stripe profile
  class Profile < APIResource
    class Branding < ::Stripe::StripeObject
      class Icon < ::Stripe::StripeObject
        # Attribute for field original
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
        # Attribute for field original
        sig { returns(String) }
        def original; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Attribute for field icon
      sig { returns(T.nilable(Icon)) }
      def icon; end
      # Attribute for field logo
      sig { returns(T.nilable(Logo)) }
      def logo; end
      # Attribute for field primary_color
      sig { returns(T.nilable(String)) }
      def primary_color; end
      # Attribute for field secondary_color
      sig { returns(T.nilable(String)) }
      def secondary_color; end
      def self.inner_class_types
        @inner_class_types = {icon: Icon, logo: Logo}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    # Attribute for field branding
    sig { returns(T.nilable(Branding)) }
    def branding; end
    # Attribute for field description
    sig { returns(T.nilable(String)) }
    def description; end
    # Attribute for field display_name
    sig { returns(String) }
    def display_name; end
    # Attribute for field id
    sig { returns(String) }
    def id; end
    # Attribute for field livemode
    sig { returns(T::Boolean) }
    def livemode; end
    # Attribute for field object
    sig { returns(String) }
    def object; end
    # Attribute for field url
    sig { returns(T.nilable(String)) }
    def url; end
    # Attribute for field username
    sig { returns(String) }
    def username; end
  end
end