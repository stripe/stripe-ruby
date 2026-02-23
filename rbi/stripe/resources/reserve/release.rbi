# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Reserve
    # ReserveReleases represent the release of funds from a ReserveHold.
    class Release < APIResource
      class SourceTransaction < ::Stripe::StripeObject
        # The ID of the dispute.
        sig { returns(T.nilable(T.any(String, ::Stripe::Dispute))) }
        def dispute; end
        # The ID of the refund.
        sig { returns(T.nilable(T.any(String, ::Stripe::Refund))) }
        def refund; end
        # The type of source transaction.
        sig { returns(String) }
        def type; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Amount released. A positive integer representing how much is released in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
      sig { returns(Integer) }
      def amount; end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def created; end
      # Indicates which party created this ReserveRelease.
      sig { returns(String) }
      def created_by; end
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      def currency; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      def livemode; end
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def metadata; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # The reason for the ReserveRelease, indicating why the funds were released.
      sig { returns(String) }
      def reason; end
      # The release timestamp of the funds.
      sig { returns(Integer) }
      def released_at; end
      # The ReserveHold this ReserveRelease is associated with.
      sig { returns(T.nilable(T.any(String, ::Stripe::Reserve::Hold))) }
      def reserve_hold; end
      # The ReservePlan ID this ReserveRelease is associated with. This field is only populated if a ReserveRelease is created by a ReservePlan disable operation, or from a scheduled ReservedHold expiry.
      sig { returns(T.nilable(T.any(String, ::Stripe::Reserve::Plan))) }
      def reserve_plan; end
      # Attribute for field source_transaction
      sig { returns(T.nilable(SourceTransaction)) }
      def source_transaction; end
    end
  end
end