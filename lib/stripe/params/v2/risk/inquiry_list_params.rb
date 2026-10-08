# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Risk
      class InquiryListParams < ::Stripe::RequestParams
        # Maximum number of results to return. Default: 10. Valid range: 1-100.
        attr_accessor :limit

        def initialize(limit: nil)
          @limit = limit
        end
      end
    end
  end
end
