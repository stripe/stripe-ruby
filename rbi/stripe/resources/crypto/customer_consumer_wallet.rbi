# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Crypto
    # A consumer wallet represents a cryptocurrency wallet address associated with a Crypto Customer.
    class CustomerConsumerWallet < APIResource
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      sig { returns(T::Boolean) }
      def livemode; end
      # The blockchain network for this wallet
      sig { returns(String) }
      def network; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # Whether ownership of this wallet has been verified
      sig { returns(T::Boolean) }
      def verified_ownership; end
      # The wallet address
      sig { returns(String) }
      def wallet_address; end
    end
  end
end