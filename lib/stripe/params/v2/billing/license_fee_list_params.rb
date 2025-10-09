# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class LicenseFeeListParams < ::Stripe::RequestParams
        # Filter by licensed item.
        attr_accessor :licensed_item
        # Optionally set the maximum number of results per page. Defaults to 20.
        attr_accessor :limit
        # Filter by lookup keys.
        # You can specify up to 10 lookup keys.
        attr_accessor :lookup_keys

        def initialize(licensed_item: nil, limit: nil, lookup_keys: nil)
          @licensed_item = licensed_item
          @limit = limit
          @lookup_keys = lookup_keys
        end
      end
    end
  end
end
