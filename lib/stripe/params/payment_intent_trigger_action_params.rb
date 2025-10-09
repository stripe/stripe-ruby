# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class PaymentIntentTriggerActionParams < ::Stripe::RequestParams
    class ScanQrCode < ::Stripe::RequestParams
      # Whether the QR Code scan's payment should succeed or fail.
      attr_accessor :result

      def initialize(result: nil)
        @result = result
      end
    end
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand
    # True to simulate success, false to simulate failure.
    attr_accessor :scan_qr_code
    # The type of action to be simulated.
    attr_accessor :type

    def initialize(expand: nil, scan_qr_code: nil, type: nil)
      @expand = expand
      @scan_qr_code = scan_qr_code
      @type = type
    end
  end
end
