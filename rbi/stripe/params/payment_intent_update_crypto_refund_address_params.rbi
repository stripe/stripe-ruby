# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class PaymentIntentUpdateCryptoRefundAddressParams < ::Stripe::RequestParams
    # Specifies which fields in the response should be expanded.
    sig { returns(T.nilable(T::Array[String])) }
    def expand; end
    sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
    def expand=(_expand); end
    # The blockchain network for the refund address.
    sig { returns(String) }
    def network; end
    sig { params(_network: String).returns(String) }
    def network=(_network); end
    # The wallet address that should receive refunds for deposits on the specified network.
    sig { returns(String) }
    def refund_address; end
    sig { params(_refund_address: String).returns(String) }
    def refund_address=(_refund_address); end
    sig {
      params(expand: T.nilable(T::Array[String]), network: String, refund_address: String).void
     }
    def initialize(expand: nil, network: nil, refund_address: nil); end
  end
end