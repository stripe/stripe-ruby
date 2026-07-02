# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Crypto
    # A consumer wallet represents a cryptocurrency wallet address associated with a Crypto Customer.
    class CustomerConsumerWallet < APIResource
      OBJECT_NAME = "crypto.consumer_wallet"
      def self.object_name
        "crypto.consumer_wallet"
      end

      # Unique identifier for the object.
      attr_reader :id
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      attr_reader :livemode
      # The blockchain network for this wallet
      attr_reader :network
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # Whether ownership of this wallet has been verified
      attr_reader :verified_ownership
      # The wallet address
      attr_reader :wallet_address

      def self.inner_class_types
        @inner_class_types = {}
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
