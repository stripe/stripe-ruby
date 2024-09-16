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

      # Returns a list of Issuing DisputeSettlementDetail objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
      def self.list(filters = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/issuing/dispute_settlement_details",
          params: filters,
          opts: opts
        )
      end
    end
  end
end
