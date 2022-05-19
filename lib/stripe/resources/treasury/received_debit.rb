# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Treasury
    class ReceivedDebit < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "treasury.received_debit"

      def test_helpers
        TestHelpers.new(self)
      end

      class TestHelpers < APIResourceTestHelpers
        RESOURCE_CLASS = ReceivedDebit

        def self.create(params = {}, opts = {})
          resp, opts = execute_resource_request(
            :post,
            "/v1/test_helpers/treasury/received_debits",
            params,
            opts
          )
          Util.convert_to_stripe_object(resp.data, opts)
        end
      end
    end
  end
end
