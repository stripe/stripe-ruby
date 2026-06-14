# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class ContractListParams < ::Stripe::RequestParams
        # Filter by customer ID.
        attr_accessor :customer
        # The limit for the number of results per page.
        attr_accessor :limit

        def initialize(customer: nil, limit: nil)
          @customer = customer
          @limit = limit
        end
      end
    end
  end
end
