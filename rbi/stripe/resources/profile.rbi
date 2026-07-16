# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # A Stripe profile
  class Profile < APIResource
    class Branding < ::Stripe::StripeObject
      class Icon < ::Stripe::StripeObject
        # The original image.
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
        # The original image.
        sig { returns(String) }
        def original; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Profile icon image.
      sig { returns(T.nilable(Icon)) }
      def icon; end
      # Profile logo image.
      sig { returns(T.nilable(Logo)) }
      def logo; end
      # The primary brand color for the profile.
      sig { returns(T.nilable(String)) }
      def primary_color; end
      # The secondary brand color for the profile.
      sig { returns(T.nilable(String)) }
      def secondary_color; end
      def self.inner_class_types
        @inner_class_types = {icon: Icon, logo: Logo}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    # Branding information for the Stripe profile.
    sig { returns(T.nilable(Branding)) }
    def branding; end
    # A description of the business or entity represented by the Stripe profile.
    sig { returns(T.nilable(String)) }
    def description; end
    # The display name shown for the Stripe profile.
    sig { returns(String) }
    def display_name; end
    # Unique identifier for the Stripe profile.
    sig { returns(String) }
    def id; end
    # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
    sig { returns(T::Boolean) }
    def livemode; end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
    # The external website URL associated with the Stripe profile.
    sig { returns(T.nilable(String)) }
    def url; end
    # The unique username for the Stripe profile.
    sig { returns(String) }
    def username; end
  end
end