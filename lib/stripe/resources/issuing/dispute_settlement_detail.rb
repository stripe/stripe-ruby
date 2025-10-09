# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    # Represents a record from the card network of a money movement or change in state for an Issuing dispute. These records are included in the settlement reports that we receive from networks and expose to users as Settlement objects.
    class DisputeSettlementDetail < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "issuing.dispute_settlement_detail"
      def self.object_name
        "issuing.dispute_settlement_detail"
      end

      class NetworkData < ::Stripe::StripeObject
        # The date the transaction was processed by the card network. This can be different from the date the seller recorded the transaction depending on when the acquirer submits the transaction to the network.
        attr_reader :processing_date

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Disputed amount in the card’s currency and in the smallest currency unit. Usually the amount of the transaction, but can differ (usually because of currency fluctuation).
      attr_reader :amount
      # The card used to make the original transaction.
      attr_reader :card
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # The currency the original transaction was made in. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      # The ID of the linked dispute.
      attr_reader :dispute
      # The type of event corresponding to this dispute settlement detail, representing the stage in the dispute network lifecycle.
      attr_reader :event_type
      # Unique identifier for the object.
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # The card network for this dispute settlement detail. One of ["visa", "mastercard", "maestro"]
      attr_reader :network
      # Details about the transaction, such as processing dates, set by the card network.
      attr_reader :network_data
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The ID of the linked card network settlement.
      attr_reader :settlement

      # Returns a list of Issuing DisputeSettlementDetail objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/issuing/dispute_settlement_details",
          params: params,
          opts: opts
        )
      end

      def self.inner_class_types
        @inner_class_types = { network_data: NetworkData }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
