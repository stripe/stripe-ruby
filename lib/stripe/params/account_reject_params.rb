# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class AccountRejectParams < ::Stripe::RequestParams
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand
    # Whether to pause payouts on the account as part of the rejection. Defaults to `pause`. Use `none` to leave payouts enabled.
    attr_accessor :payouts_action
    # The reason for rejecting the account. Can be `fraud`, `terms_of_service`, or `other`.
    attr_accessor :reason

    def initialize(expand: nil, payouts_action: nil, reason: nil)
      @expand = expand
      @payouts_action = payouts_action
      @reason = reason
    end
  end
end
