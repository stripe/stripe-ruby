# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module TestHelpers
      class MoneyManagementRecipientVerificationsParams < ::Stripe::RequestParams
        # Expected match level of the RecipientVerification to be created: `match`, `close_match`, `no_match`, `unavailable`.
        sig { returns(String) }
        def match_result; end
        sig { params(_match_result: String).returns(String) }
        def match_result=(_match_result); end
        # ID of the payout method.
        sig { returns(String) }
        def payout_method; end
        sig { params(_payout_method: String).returns(String) }
        def payout_method=(_payout_method); end
        # ID of the recipient account. Required if the recipient distinct from the sender. Leave empty if the recipient and sender are the same entity (i.e. for me-to-me payouts).
        sig { returns(T.nilable(String)) }
        def recipient; end
        sig { params(_recipient: T.nilable(String)).returns(T.nilable(String)) }
        def recipient=(_recipient); end
        sig {
          params(match_result: String, payout_method: String, recipient: T.nilable(String)).void
         }
        def initialize(match_result: nil, payout_method: nil, recipient: nil); end
      end
    end
  end
end