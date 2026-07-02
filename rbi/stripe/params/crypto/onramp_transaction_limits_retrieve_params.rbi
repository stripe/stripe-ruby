# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Crypto
    class OnrampTransactionLimitsRetrieveParams < ::Stripe::RequestParams
      # The IP address of the customer requesting transaction limits. We support IPv4 and IPv6 addresses.
      sig { returns(T.nilable(String)) }
      def customer_ip_address; end
      sig { params(_customer_ip_address: T.nilable(String)).returns(T.nilable(String)) }
      def customer_ip_address=(_customer_ip_address); end
      # The destination blockchain network to use for limit calculations.
      sig { returns(T.nilable(String)) }
      def destination_network; end
      sig { params(_destination_network: T.nilable(String)).returns(T.nilable(String)) }
      def destination_network=(_destination_network); end
      # The destination tag for the wallet address, if applicable for the network.
      sig { returns(T.nilable(String)) }
      def destination_tag; end
      sig { params(_destination_tag: T.nilable(String)).returns(T.nilable(String)) }
      def destination_tag=(_destination_tag); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # The wallet address to use for destination-specific limit calculations.
      sig { returns(T.nilable(String)) }
      def wallet_address; end
      sig { params(_wallet_address: T.nilable(String)).returns(T.nilable(String)) }
      def wallet_address=(_wallet_address); end
      sig {
        params(customer_ip_address: T.nilable(String), destination_network: T.nilable(String), destination_tag: T.nilable(String), expand: T.nilable(T::Array[String]), wallet_address: T.nilable(String)).void
       }
      def initialize(
        customer_ip_address: nil,
        destination_network: nil,
        destination_tag: nil,
        expand: nil,
        wallet_address: nil
      ); end
    end
  end
end