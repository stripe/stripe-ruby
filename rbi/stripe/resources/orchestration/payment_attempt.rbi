# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Orchestration
    # Represents orchestration information for a payment attempt record (e.g. return url).
    class PaymentAttempt < APIResource
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      sig { returns(T::Boolean) }
      def livemode; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # If present, the return URL for this payment attempt.
      sig { returns(T.nilable(String)) }
      def return_url; end
    end
  end
end