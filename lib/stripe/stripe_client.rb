# frozen_string_literal: true

require "json"
require "stripe/events/unknown_event_notification"

module Stripe
  class StripeClient
    # attr_readers: The beginning of the section generated from our OpenAPI spec
    attr_reader :v1
    attr_reader :v2
    # attr_readers: The end of the section generated from our OpenAPI spec

    # For internal use only. Does not provide a stable API and may be broken
    # with future non-major changes.
    attr_reader :requestor

    # For internal use only. Does not provide a stable API and may be broken
    # with future non-major changes.
    CLIENT_OPTIONS = Set.new(%i[api_key stripe_account stripe_context api_version api_base uploads_base connect_base meter_events_base client_id])

    # Initializes a new StripeClient
    def initialize(api_key,
                   stripe_account: nil,
                   stripe_context: nil,
                   stripe_version: nil,
                   api_base: nil,
                   uploads_base: nil,
                   connect_base: nil,
                   meter_events_base: nil,
                   client_id: nil)
      unless api_key
        raise AuthenticationError, "No API key provided. " \
                                   'Set your API key using "client = Stripe::StripeClient.new(<API-KEY>)". ' \
                                   "You can generate API keys from the Stripe web interface. " \
                                   "See https://stripe.com/api for details, or email " \
                                   "support@stripe.com if you have any questions."
      end

      config_opts = {
        api_key: api_key,
        stripe_account: stripe_account,
        stripe_context: stripe_context,
        api_version: stripe_version,
        api_base: api_base,
        uploads_base: uploads_base,
        connect_base: connect_base,
        meter_events_base: meter_events_base,
        client_id: client_id,
      }.compact

      config = StripeConfiguration.client_init(config_opts)
      @requestor = APIRequestor.new(config)

      # top-level services: The beginning of the section generated from our OpenAPI spec
      @v1 = Stripe::V1Services.new(@requestor)
      @v2 = Stripe::V2Services.new(@requestor)
      # top-level services: The end of the section generated from our OpenAPI spec
    end

    def request(&block)
      @requestor.request(&block)
    end
    extend Gem::Deprecate
    deprecate :request, :raw_request, 2024, 9

    # Constructs a [thin event notification](https://docs.stripe.com/event-destinations#thin-payload) from
    # an incoming webhook after verifying its authenticity. To work with a webhook that has already been
    # verified (i.e. one from a cloud provider, an asynchronous queue, or during testing), see
    # `parse_event_notification_without_verification`.
    def parse_event_notification(payload, sig_header, secret, tolerance: Webhook::DEFAULT_TOLERANCE)
      payload = payload.force_encoding("UTF-8") if payload.respond_to?(:force_encoding)

      # v2 events use the same signing mechanism as v1 events
      Webhook::Signature.verify_header(payload, sig_header, secret, tolerance: tolerance)
      build_event_notification(payload)
    end

    # Constructs a [thin event notification](https://docs.stripe.com/event-destinations#thin-payload) from
    # an incoming webhook without first verifying its authenticity. Should be used after calling
    # `Webhook::Signature.verify_header` or with input from a trusted source (such as
    # [AWS EventBridge](https://docs.stripe.com/event-destinations/eventbridge), or
    # [Azure Event Grid](https://docs.stripe.com/event-destinations/eventgrid) payload). Or, to verify &
    # parse in a single call, use `parse_event_notification` instead.
    def parse_event_notification_without_verification(payload)
      build_event_notification(Webhook.send(:_maybe_extract_from_cloud_provider_envelope, payload))
    end

    private def build_event_notification(payload)
      parsed = if payload.is_a?(String)
                 JSON.parse(payload, symbolize_names: true)
               else
                 payload
               end

      if parsed[:object] == "event"
        raise ArgumentError,
              "You passed a webhook payload to a method that expects a thin event notification. Use the corresponding construct_event* method instead."
      end

      if parsed[:object] != "v2.core.event"
        raise ArgumentError,
              "Unexpected object type '#{parsed[:object]}'. Expected 'v2.core.event' for an event notification."
      end

      cls = Util.event_notification_classes.fetch(parsed[:type], Stripe::Events::UnknownEventNotification)

      cls.new(parsed, self)
    end

    def raw_request(method, url, base_address: :api, params: {}, opts: {}, usage: nil)
      opts = Util.normalize_opts(opts)
      req_opts = RequestOptions.extract_opts_from_hash(opts)

      params = params.to_h if params.is_a?(Stripe::RequestParams)
      resp, = @requestor.send(:execute_request_internal, method, url, base_address, params, req_opts, usage: usage || ["raw_request"])

      @requestor.interpret_response(resp)
    end

    def deserialize(data, api_mode: :v1)
      data = JSON.parse(data) if data.is_a?(String)
      Util.convert_to_stripe_object(data, {}, api_mode: api_mode, requestor: @requestor)
    end

    # Returns a new StripeClient with the same configuration as this one, but
    # scoped to the given Stripe-Context. Useful when handling event
    # notifications, where each event may carry its own context.
    def with_stripe_context(context)
      config = @requestor.config
      StripeClient.new(
        config.api_key,
        stripe_account: config.stripe_account,
        stripe_context: context,
        stripe_version: config.api_version,
        api_base: config.api_base,
        uploads_base: config.uploads_base,
        connect_base: config.connect_base,
        meter_events_base: config.meter_events_base,
        client_id: config.client_id
      )
    end

    def notification_handler(webhook_secret, &fallback_callback)
      ::Stripe::StripeEventNotificationHandler.new(self, webhook_secret, &fallback_callback)
    end

    def notification_handler_without_verification(&fallback_callback)
      ::Stripe::StripeEventNotificationHandler.without_verification(self, &fallback_callback)
    end
  end
end
