module Stripe
  module Webhook
    DEFAULT_TOLERANCE = 300

    # Initializes an Event object from a JSON payload.
    #
    # This may raise JSON::ParserError if the payload is not valid JSON, or
    # SignatureVerificationError if the signature verification fails.
    def self.construct_event(payload, sig_header, secret, tolerance: DEFAULT_TOLERANCE)
      data = JSON.parse(payload, symbolize_names: true)
      event = Event.construct_from(data)

      Signature.verify_header(payload, sig_header, secret, tolerance: tolerance)

      event
    end

    module Signature
      EXPECTED_SCHEME = 'v1'

      def self.compute_signature(payload, secret)
        OpenSSL::HMAC.hexdigest(OpenSSL::Digest.new('sha256'), secret, payload)
      end
      private_class_method :compute_signature

      # Extracts the timestamp and the signature(s) with the desired scheme
      # from the header
      def self.get_timestamp_and_signatures(header, scheme)
        list_items = header.split(/,\s*/).map { |i| i.split('=', 2) }
        timestamp = Integer(list_items.select { |i| i[0] == 't' }[0][1])
        signatures = list_items.select { |i| i[0] == scheme }.map { |i| i[1] }
        [timestamp, signatures]
      end
      private_class_method :get_timestamp_and_signatures

      # Verifies the signature header for a given payload.
      #
      # Raises a SignatureVerificationError in the following cases:
      # - the header does not match the expected format
      # - no signatures found with the expected scheme
      # - no signatures matching the expected signature
      # - a tolerance is provided and the timestamp is not within the
      #   tolerance
      #
      # Returns true otherwise
      def self.verify_header(payload, header, secret, tolerance: nil)
        begin
          timestamp, signatures = get_timestamp_and_signatures(header, EXPECTED_SCHEME)
        rescue
          raise SignatureVerificationError.new(
            "Unable to extract timestamp and signatures from header",
            header, http_body: payload)
        end

        if signatures.empty?
          raise SignatureVerificationError.new(
            "No signatures found with expected scheme #{EXPECTED_SCHEME}",
            header, http_body: payload)
        end

        signed_payload = "#{timestamp}.#{payload}"
        expected_sig = compute_signature(signed_payload, secret)
        unless signatures.any? {|s| Util.secure_compare(expected_sig, s)}
          raise SignatureVerificationError.new(
            "No signatures found matching the expected signature for payload",
            header, http_body: payload)
        end

        if tolerance && timestamp < Time.now.to_f - tolerance
          raise SignatureVerificationError.new(
            "Timestamp outside the tolerance zone (#{Time.at(timestamp)})",
            header, http_body: payload)
        end

        true
      end
    end
  end
end
