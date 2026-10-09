# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Radar
    class Rule < APIResource
      # The action taken on the payment.
      sig { returns(String) }
      def action; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(T.nilable(String)) }
      def object; end
      # The predicate to evaluate the payment against.
      sig { returns(T.nilable(String)) }
      def predicate; end
    end
  end
end