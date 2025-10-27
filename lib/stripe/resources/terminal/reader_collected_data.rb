# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Terminal
    # Returns data collected by Terminal readers. This data is only stored for 24 hours.
    class ReaderCollectedData < APIResource
      OBJECT_NAME = "terminal.reader_collected_data"
      def self.object_name
        "terminal.reader_collected_data"
      end

      class Magstripe < ::Stripe::StripeObject
        # The raw magstripe data collected by the reader.
        attr_reader :data

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # Unique identifier for the object.
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # The magstripe data collected by the reader.
      attr_reader :magstripe
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The type of data collected by the reader.
      attr_reader :type

      def self.inner_class_types
        @inner_class_types = { magstripe: Magstripe }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
