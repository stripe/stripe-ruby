# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Issuing
    # Represents a record from the card network of a money movement or change in state for an Issuing dispute. These records are included in the settlement reports that we receive from networks and expose to users as Settlement objects.
    class DisputeSettlementDetail < APIResource
      # Disputed amount in the card’s currency and in the smallest currency unit. Usually the amount of the transaction, but can differ (usually because of currency fluctuation).
      sig { returns(Integer) }
      attr_reader :amount

      # The card used to make the original transaction.
      sig { returns(String) }
      attr_reader :card

      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created

      # The currency the original transaction was made in. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      attr_reader :currency

      # The ID of the linked dispute.
      sig { returns(String) }
      attr_reader :dispute

      # The type of event corresponding to this dispute settlement detail, representing the stage in the dispute network lifecycle.
      sig { returns(String) }
      attr_reader :event_type

      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id

      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode

      # The card network for this dispute settlement detail. One of ["visa", "mastercard", "maestro"]
      sig { returns(String) }
      attr_reader :network

      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object

      # The ID of the linked card network settlement.
      sig { returns(T.nilable(String)) }
      attr_reader :settlement
    end
  end
end