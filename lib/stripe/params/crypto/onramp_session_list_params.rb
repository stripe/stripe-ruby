# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Crypto
    class OnrampSessionListParams < ::Stripe::RequestParams
      class Created < ::Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        attr_accessor :gt
        # Minimum value to filter by (inclusive)
        attr_accessor :gte
        # Maximum value to filter by (exclusive)
        attr_accessor :lt
        # Maximum value to filter by (inclusive)
        attr_accessor :lte

        def initialize(gt: nil, gte: nil, lt: nil, lte: nil)
          @gt = gt
          @gte = gte
          @lt = lt
          @lte = lte
        end
      end
      # Only return onramp sessions that were created during the given date interval.
      attr_accessor :created
      # The destination cryptocurrency to filter by.
      attr_accessor :destination_currency
      # The destination blockchain network to filter by.
      attr_accessor :destination_network
      # An object ID cursor for use in pagination.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit ranging from 1 to 100 (defaults to 10).
      attr_accessor :limit
      # An object ID cursor for use in pagination.
      attr_accessor :starting_after
      # The status of the Onramp Session. One of = `{initialized, rejected, requires_payment, fulfillment_processing, fulfillment_complete}`
      attr_accessor :status

      def initialize(
        created: nil,
        destination_currency: nil,
        destination_network: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        starting_after: nil,
        status: nil
      )
        @created = created
        @destination_currency = destination_currency
        @destination_network = destination_network
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @starting_after = starting_after
        @status = status
      end
    end
  end
end
