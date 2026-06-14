# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module TestHelpers
    class TestClockCreateParams < ::Stripe::RequestParams
      # Existing customer this test clock will be attached to. Once attached, customers can't be removed from a test clock.
      sig { returns(T.nilable(String)) }
      def customer; end
      sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
      def customer=(_customer); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # The initial frozen time for this test clock.
      sig { returns(Integer) }
      def frozen_time; end
      sig { params(_frozen_time: Integer).returns(Integer) }
      def frozen_time=(_frozen_time); end
      # The name for this test clock.
      sig { returns(T.nilable(String)) }
      def name; end
      sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
      def name=(_name); end
      sig {
        params(customer: T.nilable(String), expand: T.nilable(T::Array[String]), frozen_time: Integer, name: T.nilable(String)).void
       }
      def initialize(customer: nil, expand: nil, frozen_time: nil, name: nil); end
    end
  end
end