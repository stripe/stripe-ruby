# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Radar
    class CustomerEvaluationUpdateParams < ::Stripe::RequestParams
      # The ID of a Customer to attach to an entity-less registration evaluation.
      sig { returns(T.nilable(String)) }
      def customer; end
      sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
      def customer=(_customer); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # The outcome status of the evaluation: allowed, restricted, or blocked.
      sig { returns(T.nilable(String)) }
      def status; end
      sig { params(_status: T.nilable(String)).returns(T.nilable(String)) }
      def status=(_status); end
      sig {
        params(customer: T.nilable(String), expand: T.nilable(T::Array[String]), status: T.nilable(String)).void
       }
      def initialize(customer: nil, expand: nil, status: nil); end
    end
  end
end