# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Reserve
    # ReserveReleases represent the release of funds from a ReserveHold.
    class Release < APIResource
      OBJECT_NAME = "reserve.release"
      def self.object_name
        "reserve.release"
      end

      class SourceTransaction < ::Stripe::StripeObject
        # The ID of the dispute.
        attr_reader :dispute
        # The ID of the refund.
        attr_reader :refund
        # The type of source transaction.
        attr_reader :type

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Amount released. A positive integer representing how much is released in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
      attr_reader :amount
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # Indicates which party created this ReserveRelease.
      attr_reader :created_by
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      # Unique identifier for the object.
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The reason for the ReserveRelease, indicating why the funds were released.
      attr_reader :reason
      # The release timestamp of the funds.
      attr_reader :released_at
      # The ReserveHold this ReserveRelease is associated with.
      attr_reader :reserve_hold
      # The ReservePlan ID this ReserveRelease is associated with. This field is only populated if a ReserveRelease is created by a ReservePlan disable operation, or from a scheduled ReservedHold expiry.
      attr_reader :reserve_plan
      # Attribute for field source_transaction
      attr_reader :source_transaction

      def self.inner_class_types
        @inner_class_types = { source_transaction: SourceTransaction }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
