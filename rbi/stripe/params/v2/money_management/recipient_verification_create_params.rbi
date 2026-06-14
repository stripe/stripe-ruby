# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class RecipientVerificationCreateParams < ::Stripe::RequestParams
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
        sig { params(payout_method: String, recipient: T.nilable(String)).void }
        def initialize(payout_method: nil, recipient: nil); end
      end
    end
  end
end