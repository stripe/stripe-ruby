# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    # A Physical Bundle represents the bundle of physical items - card stock, carrier letter, and envelope - that is shipped to a cardholder when you create a physical card.
    class PhysicalBundle < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "issuing.physical_bundle"
      def self.object_name
        "issuing.physical_bundle"
      end

      class Features < Stripe::StripeObject
        attr_reader :card_logo, :carrier_text, :second_line
      end
      # Attribute for field features
      attr_reader :features
      # Unique identifier for the object.
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # Friendly display name.
      attr_reader :name
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # Whether this physical bundle can be used to create cards.
      attr_reader :status
      # Whether this physical bundle is a standard Stripe offering or custom-made for you.
      attr_reader :type

      # Returns a list of physical bundle objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/issuing/physical_bundles",
          params: params,
          opts: opts
        )
      end
    end
  end
end
