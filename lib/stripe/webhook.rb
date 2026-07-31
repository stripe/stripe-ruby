# frozen_string_literal: true

module Stripe
  module Webhook
    DEFAULT_TOLERANCE = 300

    # Constructs a [snapshot event](https://docs.stripe.com/event-destinations#snapshot-payload) from an
    # incoming webhook after verifying its authenticity. To work with a webhook that has already been
    # verified (i.e. one from a cloud provider, an asynchronous queue, or during testing), see
    # `construct_event_without_verification`.
    def self.construct_event(payload, sig_header, secret,
                             tolerance: DEFAULT_TOLERANCE)
      Signature.verify_header(payload, sig_header, secret, tolerance: tolerance)

      # It's a good idea to parse the payload only after verifying it. We use
      # `symbolize_names` so it would otherwise be technically possible to
      # flood a target's memory if they were on an older version of Ruby that
      # doesn't GC symbols. It also decreases the likelihood that we receive a
      # bad payload that fails to parse and throws an exception.
      _build_v1_event(payload)
    end

    # Constructs a [snapshot event](https://docs.stripe.com/event-destinations#snapshot-payload) from an
    # incoming webhook without first verifying its authenticity. Should be used after calling
    # `Webhook::Signature.verify_header` or with input from a trusted source (such as
    # [AWS EventBridge](https://docs.stripe.com/event-destinations/eventbridge), or
    # [Azure Event Grid](https://docs.stripe.com/event-destinations/eventgrid) payload). Or, to verify &
    # construct in a single call, use `Webhook.construct_event` instead.
    def self.construct_event_without_verification(payload)
      _build_v1_event(_maybe_extract_from_cloud_provider_envelope(payload))
    end

    def self._build_v1_event(payload)
      data = payload.is_a?(String) ? JSON.parse(payload, symbolize_names: true) : payload

      if data[:object] == "v2.core.event"
        raise ArgumentError,
              "You passed a thin event notification to a method that expects a webhook body. " \
              "Use the corresponding #parse_event_notification* method instead"
      end

      Event.construct_from(data, {}, nil, :v1, APIRequestor.active_requestor)
    end
    private_class_method :_build_v1_event

    def self._maybe_extract_from_cloud_provider_envelope(payload)
      payload = payload.encode("utf-8") if payload.respond_to?(:encode)
      data = JSON.parse(payload, symbolize_names: true)

      # Could add as many checks as we want here, but we'll start simple
      if data.key?(:detail)
        # AWS
        # https://docs.stripe.com/event-destinations/eventbridge#event-structure
        data[:detail]
      elsif data.key?(:specversion)
        # Azure
        # https://docs.stripe.com/event-destinations/eventgrid#event-structure
        data[:data]
      elsif %w[event v2.core.event].include?(data[:object])
        # Raw Stripe event: pass through as-is
        data
      else
        raise ArgumentError,
              "Unrecognized cloud event format. The payload must be an " \
              "AWS EventBridge or Azure Event Grid event envelope."
      end
    end
    private_class_method :_maybe_extract_from_cloud_provider_envelope

    module Signature
      EXPECTED_SCHEME = "v1"

      # Computes a webhook signature given a time (probably the current time),
      # a payload, and a signing secret.
      def self.compute_signature(timestamp, payload, secret)
        raise ArgumentError, "timestamp should be an instance of Time" \
          unless timestamp.is_a?(Time)
        raise ArgumentError, "payload should be a string" \
          unless payload.is_a?(String)
        raise ArgumentError, "secret should be a string" \
          unless secret.is_a?(String)

        timestamped_payload = "#{timestamp.to_i}.#{payload}"
        OpenSSL::HMAC.hexdigest(OpenSSL::Digest.new("sha256"), secret,
                                timestamped_payload)
      end

      # Compute the `Stripe-Signature` header for a given webhook body & secret. Useful for signing
      # payloads in unit tests.
      def self.generate_header(timestamp, signature, scheme: EXPECTED_SCHEME)
        raise ArgumentError, "timestamp should be an instance of Time" \
          unless timestamp.is_a?(Time)
        raise ArgumentError, "signature should be a string" \
          unless signature.is_a?(String)
        raise ArgumentError, "scheme should be a string" \
          unless scheme.is_a?(String)

        "t=#{timestamp.to_i},#{scheme}=#{signature}"
      end

      # Extracts the timestamp and the signature(s) with the desired scheme
      # from the header
      def self.get_timestamp_and_signatures(header, scheme)
        list_items = header.split(/,\s*/).map { |i| i.split("=", 2) }
        timestamp = Integer(list_items.select { |i| i[0] == "t" }[0][1])
        signatures = list_items.select { |i| i[0] == scheme }.map { |i| i[1] }
        [Time.at(timestamp), signatures]
      end
      private_class_method :get_timestamp_and_signatures

      # Verifies the authenticity (and recency) of a webhook, raising a `SignatureVerificationError` if
      # there's a mismatch. Useful for quickly validating incoming webhooks before storing them for later
      # processing (at which time you can use the `*_without_verification` methods for parsing).
      def self.verify_header(payload, header, secret, tolerance: nil)
        begin
          timestamp, signatures =
            get_timestamp_and_signatures(header, EXPECTED_SCHEME)

        # TODO: Try to knock over this blanket rescue as it can unintentionally
        # swallow many valid errors. Instead, try to validate an incoming
        # header one piece at a time, and error with a known exception class if
        # any part is found to be invalid. Rescue that class here.
        rescue StandardError
          raise SignatureVerificationError.new(
            "Unable to extract timestamp and signatures from header",
            header, http_body: payload
          )
        end

        if signatures.empty?
          raise SignatureVerificationError.new(
            "No signatures found with expected scheme #{EXPECTED_SCHEME}",
            header, http_body: payload
          )
        end

        expected_sig = compute_signature(timestamp, payload, secret)
        unless signatures.any? { |s| Util.secure_compare(expected_sig, s) }
          raise SignatureVerificationError.new(
            "No signatures found matching the expected signature for payload",
            header, http_body: payload
          )
        end

        if tolerance && timestamp < Time.now - tolerance
          formatted_timestamp = Time.at(timestamp).strftime("%F %T")
          raise SignatureVerificationError.new(
            "Timestamp outside the tolerance zone (#{formatted_timestamp})",
            header, http_body: payload
          )
        end

        true
      end
    end
  end
end
