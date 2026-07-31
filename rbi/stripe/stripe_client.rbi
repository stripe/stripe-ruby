# frozen_string_literal: true
# typed: true

module Stripe
  class StripeClient
    # Constructs a [thin event notification](https://docs.stripe.com/event-destinations#thin-payload) from
    # an incoming webhook after verifying its authenticity. To work with a webhook that has already been
    # verified (i.e. one from a cloud provider, an asynchronous queue, or during testing), see
    # `parse_event_notification_without_verification`.
    sig do
      params(
        payload: String,
        sig_header: String,
        secret: String,
        tolerance: T.nilable(Integer)
      )
        .returns(::Stripe::V2::Core::EventNotification)
    end
    def parse_event_notification(payload, sig_header, secret, tolerance: Webhook::DEFAULT_TOLERANCE); end

    # Constructs a [thin event notification](https://docs.stripe.com/event-destinations#thin-payload) from
    # an incoming webhook without first verifying its authenticity. Should be used after calling
    # `Webhook::Signature.verify_header` or with input from a trusted source (such as
    # [AWS EventBridge](https://docs.stripe.com/event-destinations/eventbridge), or
    # [Azure Event Grid](https://docs.stripe.com/event-destinations/eventgrid) payload). Or, to verify &
    # parse in a single call, use `parse_event_notification` instead.
    sig { params(payload: String).returns(::Stripe::V2::Core::EventNotification) }
    def parse_event_notification_without_verification(payload); end
  end
end
