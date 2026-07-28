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

    sig { params(payload: String).returns(::Stripe::Event) }
    def construct_event_from_cloud_provider(payload); end

    sig { params(payload: String).returns(::Stripe::V2::Core::EventNotification) }
    def parse_event_notification_from_cloud_provider(payload); end
  end
end
