# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Issuing
    # Represents a record from the card network of a money movement or change in state for an Issuing dispute. These records are included in the settlement reports that we receive from networks and expose to users as Settlement objects.
    class DisputeSettlementDetail < APIResource
      class NetworkData < ::Stripe::StripeObject
        # The date the transaction was processed by the card network. This can be different from the date the seller recorded the transaction depending on when the acquirer submits the transaction to the network.
        sig { returns(T.nilable(String)) }
        def processing_date; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Disputed amount in the card’s currency and in the smallest currency unit. Usually the amount of the transaction, but can differ (usually because of currency fluctuation).
      sig { returns(Integer) }
      def amount; end
      # The card used to make the original transaction.
      sig { returns(String) }
      def card; end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def created; end
      # The currency the original transaction was made in. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      def currency; end
      # The ID of the linked dispute.
      sig { returns(String) }
      def dispute; end
      # The type of event corresponding to this dispute settlement detail, representing the stage in the dispute network lifecycle.
      sig { returns(String) }
      def event_type; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      def livemode; end
      # The card network for this dispute settlement detail. One of ["visa", "mastercard", "maestro"]
      sig { returns(String) }
      def network; end
      # Details about the transaction, such as processing dates, set by the card network.
      sig { returns(T.nilable(NetworkData)) }
      def network_data; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # The ID of the linked card network settlement.
      sig { returns(T.nilable(String)) }
      def settlement; end
      # Returns a list of Issuing DisputeSettlementDetail objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
      sig {
        params(params: T.any(::Stripe::Issuing::DisputeSettlementDetailListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end
    end
  end
end