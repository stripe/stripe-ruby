# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Risk
      class InquiryListParams < ::Stripe::RequestParams
        # The account to list inquiries for.
        sig { returns(String) }
        def account; end
        sig { params(_account: String).returns(String) }
        def account=(_account); end
        # Maximum number of results to return. Default: 10. Valid range: 1-100.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        sig { params(account: String, limit: T.nilable(Integer)).void }
        def initialize(account: nil, limit: nil); end
      end
    end
  end
end