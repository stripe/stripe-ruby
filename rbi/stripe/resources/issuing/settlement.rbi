# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Issuing
    # When a non-stripe BIN is used, any use of an [issued card](https://stripe.com/docs/issuing) must be settled directly with the card network. The net amount owed is represented by an Issuing `Settlement` object.
    class Settlement < APIResource
      sig { returns(String) }
      # The Bank Identification Number reflecting this settlement record.
      attr_reader :bin
      sig { returns(Integer) }
      # The date that the transactions are cleared and posted to user's accounts.
      attr_reader :clearing_date
      sig { returns(Integer) }
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      sig { returns(String) }
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(Integer) }
      # The total interchange received as reimbursement for the transactions.
      attr_reader :interchange_fees
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(T::Hash[String, String]) }
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      sig { returns(Integer) }
      # The total net amount required to settle with the network.
      attr_reader :net_total
      sig { returns(String) }
      # The card network for this settlement report. One of ["visa", "maestro"]
      attr_reader :network
      sig { returns(Integer) }
      # The total amount of fees owed to the network.
      attr_reader :network_fees
      sig { returns(String) }
      # The Settlement Identification Number assigned by the network.
      attr_reader :network_settlement_identifier
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(String) }
      # One of `international` or `uk_national_net`.
      attr_reader :settlement_service
      sig { returns(String) }
      # The current processing status of this settlement.
      attr_reader :status
      sig { returns(Integer) }
      # The total number of transactions reflected in this settlement.
      attr_reader :transaction_count
      sig { returns(Integer) }
      # The total transaction amount reflected in this settlement.
      attr_reader :transaction_volume
    end
  end
end