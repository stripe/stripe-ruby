# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Data
      class ReportListParams < ::Stripe::RequestParams
        # Any optional includes (see [include-dependent response values](https://docs.stripe.com/api-includable-response-values)).
        attr_accessor :include
        # The maximum number of results per page. Defaults to 10. Maximum is 1,000.
        attr_accessor :limit
        # If supplied, only return reports with this exact, case-sensitive name.
        attr_accessor :name

        def initialize(include: nil, limit: nil, name: nil)
          @include = include
          @limit = limit
          @name = name
        end
      end
    end
  end
end
