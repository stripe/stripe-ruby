# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Crypto
    class DepositAddressCreateParams < ::Stripe::RequestParams
      # Attribute for param field customer
      attr_accessor :customer
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Attribute for param field metadata
      attr_accessor :metadata
      # Attribute for param field network
      attr_accessor :network

      def initialize(customer: nil, expand: nil, metadata: nil, network: nil)
        @customer = customer
        @expand = expand
        @metadata = metadata
        @network = network
      end
    end
  end
end
