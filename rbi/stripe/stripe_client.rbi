# frozen_string_literal: true
# typed: true

module Stripe
  class StripeClient
    sig do
      params(
        api_key: String,
        stripe_account: T.nilable(String),
        stripe_context: T.nilable(String),
        stripe_version: T.nilable(String),
        api_base: T.nilable(String),
        uploads_base: T.nilable(String),
        connect_base: T.nilable(String),
        meter_events_base: T.nilable(String),
        client_id: T.nilable(String),
        requestor: T.nilable(T.proc.params(config: Stripe::StripeConfiguration).returns(Stripe::APIRequestor))
      ).void
    end
    def initialize( # rubocop:disable Metrics/ParameterLists
      api_key,
      stripe_account: nil,
      stripe_context: nil,
      stripe_version: nil,
      api_base: nil,
      uploads_base: nil,
      connect_base: nil,
      meter_events_base: nil,
      client_id: nil,
      requestor: nil
    ); end
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
  end
end
