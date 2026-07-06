# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class ContractListParams < ::Stripe::RequestParams
        # Filter by customer id.
        attr_accessor :customer
        # Additional fields to include in the response.
        attr_accessor :include
        # The limit for the number of results per page.
        attr_accessor :limit

        def initialize(customer: nil, include: nil, limit: nil)
          @customer = customer
          @include = include
          @limit = limit
        end
      end
    end
  end
end
