# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    class SignalsService < StripeService
      attr_reader :account_activity, :account_evaluations, :account_signals, :payment_retry_evaluations, :payment_retry_signals

      def initialize(requestor)
        super
        @account_activity = Stripe::V2::Signals::AccountActivityService.new(@requestor)
        @account_evaluations = Stripe::V2::Signals::AccountEvaluationService.new(@requestor)
        @account_signals = Stripe::V2::Signals::AccountSignalService.new(@requestor)
        @payment_retry_evaluations = Stripe::V2::Signals::PaymentRetryEvaluationService
                                     .new(@requestor)
        @payment_retry_signals = Stripe::V2::Signals::PaymentRetrySignalService.new(@requestor)
      end
    end
  end
end
