# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Data
      class ReportRunRetrieveParams < ::Stripe::RequestParams
        # Any optional includes (see https://docs.stripe.com/api-includable-response-values).
        attr_accessor :include
        # The maximum number of inline `ReportRun` result rows to return. Defaults to 10. Maximum is 1000.
        attr_accessor :limit
        # The page token for paginating the inline `ReportRun` result rows.
        attr_accessor :page

        def initialize(include: nil, limit: nil, page: nil)
          @include = include
          @limit = limit
          @page = page
        end
      end
    end
  end
end
