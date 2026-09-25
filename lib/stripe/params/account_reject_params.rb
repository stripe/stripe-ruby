# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class AccountRejectParams < ::Stripe::RequestParams
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand
    # Whether to pause payouts on the account as part of the rejection. Defaults to `pause`. Use `none` to leave payouts enabled.
    attr_accessor :payouts_action
    # The reason for rejecting the account. Can be `fraud_payment_method_casher`, `fraud_payment_method_tester`, `fraud_no_intent_to_fulfill`, `fraud_other`, `credit`, `terms_of_service`, or `other`.
    attr_accessor :reason

    def initialize(expand: nil, payouts_action: nil, reason: nil)
      @expand = expand
      @payouts_action = payouts_action
      @reason = reason
    end
  end
end
