# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Issuing
    # Represents a record from the card network of a money movement or change in state for an Issuing dispute. These records are included in the settlement reports that we receive from networks and expose to users as Settlement objects.
    class DisputeSettlementDetail < APIResource
      sig { returns(Integer) }
      # Disputed amount in the card’s currency and in the smallest currency unit. Usually the amount of the transaction, but can differ (usually because of currency fluctuation).
      attr_reader :amount
      sig { returns(String) }
      # The card used to make the original transaction.
      attr_reader :card
      sig { returns(Integer) }
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      sig { returns(String) }
      # The currency the original transaction was made in. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      sig { returns(String) }
      # The ID of the linked dispute.
      attr_reader :dispute
      sig { returns(String) }
      # The type of event corresponding to this dispute settlement detail, representing the stage in the dispute network lifecycle.
      attr_reader :event_type
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(String) }
      # The card network for this dispute settlement detail. One of ["visa", "mastercard", "maestro"]
      attr_reader :network
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(T.nilable(String)) }
      # The ID of the linked card network settlement.
      attr_reader :settlement
    end
  end
end