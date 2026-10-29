# frozen_string_literal: true
# typed: true

module Stripe
  module Webhook
    DEFAULT_TOLERANCE = 300

    # Constructs a [snapshot event](https://docs.stripe.com/event-destinations#snapshot-payload) from an
    # incoming webhook after verifying its authenticity. To work with a webhook that has already been
    # verified (i.e. one from a cloud provider, an asynchronous queue, or during testing), see
    # `construct_event_without_verification`.
    sig do
      params(
        payload: String,
        sig_header: String,
        secret: String,
        tolerance: T.nilable(Integer)
      )
        .returns(::Stripe::Event)
    end
    def self.construct_event(payload, sig_header, secret, tolerance: DEFAULT_TOLERANCE); end

    # Constructs a [snapshot event](https://docs.stripe.com/event-destinations#snapshot-payload) from an
    # incoming webhook without first verifying its authenticity. Should be used after calling
    # `Webhook::Signature.verify_header` or with input from a trusted source (such as
    # [AWS EventBridge](https://docs.stripe.com/event-destinations/eventbridge), or
    # [Azure Event Grid](https://docs.stripe.com/event-destinations/eventgrid) payload). Or, to verify &
    # construct in a single call, use `Webhook.construct_event` instead.
    sig { params(payload: String).returns(::Stripe::Event) }
    def self.construct_event_without_verification(payload); end

    module Signature
      EXPECTED_SCHEME = "v1"

      # Computes a webhook signature given a time (probably the current time),
      # a payload, and a signing secret.
      sig do
        params(
          timestamp: Time,
          payload: String,
          secret: String
        )
          .returns(String)
      end
      def self.compute_signature(timestamp, payload, secret); end

      # Compute the `Stripe-Signature` header for a given webhook body & secret. Useful for signing
      # payloads in unit tests.
      sig do
        params(
          timestamp: Time,
          signature: String,
          scheme: String
        )
          .returns(String)
      end
      def self.generate_header(timestamp, signature, scheme: EXPECTED_SCHEME); end

      # Verifies the authenticity (and recency) of a webhook, raising a `SignatureVerificationError` if
      # there's a mismatch. Useful for quickly validating incoming webhooks before storing them for later
      # processing (at which time you can use the `*_without_verification` methods for parsing).
      sig do
        params(
          payload: String,
          header: String,
          secret: String,
          tolerance: T.nilable(Integer)
        )
          .returns(T::Boolean)
      end
      def self.verify_header(payload, header, secret, tolerance: nil); end
    end
  end
end
