# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    # Represents a record from the card network of a money movement or change in state for an Issuing dispute. These records are included in the settlement reports that we receive from networks and expose to users as Settlement objects.
    class DisputeSettlementDetail < APIResource
      OBJECT_NAME = "issuing.dispute_settlement_detail"
      def self.object_name
        "issuing.dispute_settlement_detail"
      end
    end
  end
end
