# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    # A Physical Bundle represents the bundle of physical items - card stock, carrier letter, and envelope - that is shipped to a cardholder when you create a physical card.
    class PhysicalBundle < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "issuing.physical_bundle"
      def self.object_name
        "issuing.physical_bundle"
      end

      # Returns a list of physical bundle objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/issuing/physical_bundles",
          params: params,
          opts: opts
        )
      end
    end
  end
end
