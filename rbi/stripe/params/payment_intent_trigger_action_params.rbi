# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class PaymentIntentTriggerActionParams < ::Stripe::RequestParams
    class ScanQrCode < ::Stripe::RequestParams
      # Whether the QR Code scan's payment should succeed or fail.
      sig { returns(T.nilable(String)) }
      def result; end
      sig { params(_result: T.nilable(String)).returns(T.nilable(String)) }
      def result=(_result); end
      sig { params(result: T.nilable(String)).void }
      def initialize(result: nil); end
    end
    # Specifies which fields in the response should be expanded.
    sig { returns(T.nilable(T::Array[String])) }
    def expand; end
    sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
    def expand=(_expand); end
    # True to simulate success, false to simulate failure.
    sig { returns(T.nilable(::Stripe::PaymentIntentTriggerActionParams::ScanQrCode)) }
    def scan_qr_code; end
    sig {
      params(_scan_qr_code: T.nilable(::Stripe::PaymentIntentTriggerActionParams::ScanQrCode)).returns(T.nilable(::Stripe::PaymentIntentTriggerActionParams::ScanQrCode))
     }
    def scan_qr_code=(_scan_qr_code); end
    # The type of action to be simulated.
    sig { returns(String) }
    def type; end
    sig { params(_type: String).returns(String) }
    def type=(_type); end
    sig {
      params(expand: T.nilable(T::Array[String]), scan_qr_code: T.nilable(::Stripe::PaymentIntentTriggerActionParams::ScanQrCode), type: String).void
     }
    def initialize(expand: nil, scan_qr_code: nil, type: nil); end
  end
end