# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class InboundTransferMandateListParams < ::Stripe::RequestParams
        # Filter by v2 credential.
        sig { returns(T.nilable(String)) }
        def credential; end
        sig { params(_credential: T.nilable(String)).returns(T.nilable(String)) }
        def credential=(_credential); end
        # Maximum number of results to return on a single page.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # Filter by mandate status.
        sig { returns(T.nilable(String)) }
        def status; end
        sig { params(_status: T.nilable(String)).returns(T.nilable(String)) }
        def status=(_status); end
        # Filter by mandate scheme type.
        sig { returns(T.nilable(String)) }
        def type; end
        sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
        def type=(_type); end
        sig {
          params(credential: T.nilable(String), limit: T.nilable(Integer), status: T.nilable(String), type: T.nilable(String)).void
         }
        def initialize(credential: nil, limit: nil, status: nil, type: nil); end
      end
    end
  end
end