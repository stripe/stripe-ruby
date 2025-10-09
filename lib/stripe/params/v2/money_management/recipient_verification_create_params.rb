# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class RecipientVerificationCreateParams < ::Stripe::RequestParams
        # ID of the payout method.
        attr_accessor :payout_method
        # ID of the recipient account. Required if the recipient distinct from the sender. Leave empty if the recipient and sender are the same entity (i.e. for me-to-me payouts).
        attr_accessor :recipient

        def initialize(payout_method: nil, recipient: nil)
          @payout_method = payout_method
          @recipient = recipient
        end
      end
    end
  end
end
