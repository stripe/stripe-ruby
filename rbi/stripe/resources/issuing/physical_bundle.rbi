# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Issuing
    # A Physical Bundle represents the bundle of physical items - card stock, carrier letter, and envelope - that is shipped to a cardholder when you create a physical card.
    class PhysicalBundle < APIResource
      class Features < Stripe::StripeObject
        # The policy for how to use card logo images in a card design with this physical bundle.
        sig { returns(String) }
        attr_reader :card_logo
        # The policy for how to use carrier letter text in a card design with this physical bundle.
        sig { returns(String) }
        attr_reader :carrier_text
        # The policy for how to use a second line on a card with this physical bundle.
        sig { returns(String) }
        attr_reader :second_line
      end
      # Attribute for field features
      sig { returns(Features) }
      attr_reader :features

      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id

      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode

      # Friendly display name.
      sig { returns(String) }
      attr_reader :name

      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object

      # Whether this physical bundle can be used to create cards.
      sig { returns(String) }
      attr_reader :status

      # Whether this physical bundle is a standard Stripe offering or custom-made for you.
      sig { returns(String) }
      attr_reader :type
    end
  end
end