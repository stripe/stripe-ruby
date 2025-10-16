# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module DelegatedCheckout
    class RequestedSessionConfirmParams < ::Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # The PaymentMethod to use with the requested session.
      attr_accessor :payment_method

      def initialize(expand: nil, payment_method: nil)
        @expand = expand
        @payment_method = payment_method
      end
    end
  end
end
