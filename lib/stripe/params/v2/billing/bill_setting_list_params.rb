# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class BillSettingListParams < Stripe::RequestParams
        # Optionally set the maximum number of results per page. Defaults to 20.
        attr_accessor :limit
        # Only return the settings with these lookup_keys, if any exist.
        # You can specify up to 10 lookup_keys.
        attr_accessor :lookup_keys

        def initialize(limit: nil, lookup_keys: nil)
          @limit = limit
          @lookup_keys = lookup_keys
        end
      end
    end
  end
end
