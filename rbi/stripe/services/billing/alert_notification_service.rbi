# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Billing
    class AlertNotificationService < StripeService
      # Lists sent billing alert triggered and recovered notifications for a billing alert.
      sig {
        params(id: String, params: T.any(::Stripe::Billing::AlertNotificationListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
       }
      def list(id, params = {}, opts = {}); end
    end
  end
end