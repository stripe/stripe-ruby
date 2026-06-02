# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    class SignalService < StripeService
      attr_reader :account_signals

      def initialize(requestor)
        super
        @account_signals = Stripe::V2::Signals::AccountSignalService.new(@requestor)
      end
    end
  end
end
