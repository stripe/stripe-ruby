# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    # When a non-stripe BIN is used, any use of an [issued card](https://docs.stripe.com/issuing) must be settled directly with the card network. The net amount owed is represented by an Issuing `Settlement` object.
    class Settlement < APIResource
      OBJECT_NAME = "issuing.settlement"
      def self.object_name
        "issuing.settlement"
      end

      # The Bank Identification Number reflecting this settlement record.
      attr_reader :bin
      # The date that the transactions are cleared and posted to user's accounts.
      attr_reader :clearing_date
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      # Unique identifier for the object.
      attr_reader :id
      # The total interchange received as reimbursement for the transactions.
      attr_reader :interchange_fees_amount
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      # The total net amount required to settle with the network.
      attr_reader :net_total_amount
      # The card network for this settlement report. One of ["visa", "maestro"]
      attr_reader :network
      # The total amount of fees owed to the network.
      attr_reader :network_fees_amount
      # The Settlement Identification Number assigned by the network.
      attr_reader :network_settlement_identifier
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The total amount of any additional fees assessed by the card network.
      attr_reader :other_fees_amount
      # The total number of additional fees assessed by the card network.
      attr_reader :other_fees_count
      # One of `international` or `uk_national_net`.
      attr_reader :settlement_service
      # The current processing status of this settlement.
      attr_reader :status
      # The total transaction amount reflected in this settlement.
      attr_reader :transaction_amount
      # The total number of transactions reflected in this settlement.
      attr_reader :transaction_count

      def self.inner_class_types
        @inner_class_types = {}
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
