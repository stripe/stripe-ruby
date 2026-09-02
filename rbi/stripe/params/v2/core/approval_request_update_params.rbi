# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      class ApprovalRequestUpdateParams < ::Stripe::RequestParams
        # The updated reason for the approval request.
        sig { returns(T.nilable(String)) }
        def reason; end
        sig { params(_reason: T.nilable(String)).returns(T.nilable(String)) }
        def reason=(_reason); end
        sig { params(reason: T.nilable(String)).void }
        def initialize(reason: nil); end
      end
    end
  end
end