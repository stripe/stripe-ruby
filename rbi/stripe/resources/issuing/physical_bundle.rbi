# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Issuing
    # A Physical Bundle represents the bundle of physical items - card stock, carrier letter, and envelope - that is shipped to a cardholder when you create a physical card.
    class PhysicalBundle < APIResource
      class Features < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :card_logo
        sig { returns(String) }
        attr_reader :carrier_text
        sig { returns(String) }
        attr_reader :second_line
      end
      sig { returns(Features) }
      # Attribute for field features
      attr_reader :features
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(String) }
      # Friendly display name.
      attr_reader :name
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(String) }
      # Whether this physical bundle can be used to create cards.
      attr_reader :status
      sig { returns(String) }
      # Whether this physical bundle is a standard Stripe offering or custom-made for you.
      attr_reader :type
    end
  end
end