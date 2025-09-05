# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Issuing
    # When a non-stripe BIN is used, any use of an [issued card](https://stripe.com/docs/issuing) must be settled directly with the card network. The net amount owed is represented by an Issuing `Settlement` object.
    class Settlement < APIResource
      # The Bank Identification Number reflecting this settlement record.
      sig { returns(String) }
      def bin; end
      # The date that the transactions are cleared and posted to user's accounts.
      sig { returns(Integer) }
      def clearing_date; end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def created; end
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      def currency; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # The total interchange received as reimbursement for the transactions.
      sig { returns(Integer) }
      def interchange_fees_amount; end
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      def livemode; end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T::Hash[String, String]) }
      def metadata; end
      # The total net amount required to settle with the network.
      sig { returns(Integer) }
      def net_total_amount; end
      # The card network for this settlement report. One of ["visa", "maestro"]
      sig { returns(String) }
      def network; end
      # The total amount of fees owed to the network.
      sig { returns(Integer) }
      def network_fees_amount; end
      # The Settlement Identification Number assigned by the network.
      sig { returns(String) }
      def network_settlement_identifier; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # The total amount of any additional fees assessed by the card network.
      sig { returns(T.nilable(Integer)) }
      def other_fees_amount; end
      # The total number of additional fees assessed by the card network.
      sig { returns(T.nilable(Integer)) }
      def other_fees_count; end
      # One of `international` or `uk_national_net`.
      sig { returns(String) }
      def settlement_service; end
      # The current processing status of this settlement.
      sig { returns(String) }
      def status; end
      # The total transaction amount reflected in this settlement.
      sig { returns(Integer) }
      def transaction_amount; end
      # The total number of transactions reflected in this settlement.
      sig { returns(Integer) }
      def transaction_count; end
    end
  end
end