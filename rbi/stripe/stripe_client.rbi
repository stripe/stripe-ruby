# frozen_string_literal: true
# typed: true

module Stripe
  class StripeClient
    sig do
      params(
        payload: String,
        sig_header: String,
        secret: String,
        tolerance: T.nilable(Integer)
      )
        .returns(::Stripe::V2::Core::EventNotification)
    end
    def parse_event_notification(payload, sig_header, secret, tolerance:); end

    sig do
      params(
        webhook_secret: String,
        blk: T.proc.params(
          event_notification: ::Stripe::V2::Core::EventNotification,
          client: ::Stripe::StripeClient,
          details: ::Stripe::UnhandledNotificationDetails
        ).void
      )
      .returns(::Stripe::StripeEventNotificationHandler)
    end
    def notification_handler(webhook_secret, &blk); end
  end
end
