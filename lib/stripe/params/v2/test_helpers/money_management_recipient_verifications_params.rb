# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module TestHelpers
      class MoneyManagementRecipientVerificationsParams < Stripe::RequestParams
        # Expected match level of the RecipientVerification to be created: `match`, `close_match`, `no_match`, `unavailable`.
        attr_accessor :match_result
        # ID of the payout method.
        attr_accessor :payout_method
        # ID of the recipient account. Required if the recipient distinct from the sender. Leave empty if the recipient and sender are the same entity (i.e. for me-to-me payouts).
        attr_accessor :recipient

        def initialize(match_result: nil, payout_method: nil, recipient: nil)
          @match_result = match_result
          @payout_method = payout_method
          @recipient = recipient
        end
      end
    end
  end
end
