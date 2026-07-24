# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Risk
      class InquiryListParams < ::Stripe::RequestParams
        # The account to list inquiries for.
        attr_accessor :account
        # Maximum number of results to return. Default: 10. Valid range: 1-100.
        attr_accessor :limit

        def initialize(account: nil, limit: nil)
          @account = account
          @limit = limit
        end
      end
    end
  end
end
