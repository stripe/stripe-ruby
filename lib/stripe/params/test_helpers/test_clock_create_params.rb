# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module TestHelpers
    class TestClockCreateParams < ::Stripe::RequestParams
      # Existing customer this test clock will be attached to. Once attached, customers can't be removed from a test clock.
      attr_accessor :customer
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # The initial frozen time for this test clock.
      attr_accessor :frozen_time
      # The name for this test clock.
      attr_accessor :name

      def initialize(customer: nil, expand: nil, frozen_time: nil, name: nil)
        @customer = customer
        @expand = expand
        @frozen_time = frozen_time
        @name = name
      end
    end
  end
end
