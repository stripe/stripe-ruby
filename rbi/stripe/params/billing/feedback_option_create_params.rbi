# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Billing
    class FeedbackOptionCreateParams < ::Stripe::RequestParams
      # Attribute for param field description
      sig { returns(String) }
      def description; end
      sig { params(_description: String).returns(String) }
      def description=(_description); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      sig { params(description: String, expand: T.nilable(T::Array[String])).void }
      def initialize(description: nil, expand: nil); end
    end
  end
end