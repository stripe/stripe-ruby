# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Privacy
    class RedactionJobUpdateParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Determines the validation behavior of the job. Default is `error`.
      sig { returns(T.nilable(String)) }
      def validation_behavior; end
      sig { params(_validation_behavior: T.nilable(String)).returns(T.nilable(String)) }
      def validation_behavior=(_validation_behavior); end
      sig {
        params(expand: T.nilable(T::Array[String]), validation_behavior: T.nilable(String)).void
       }
      def initialize(expand: nil, validation_behavior: nil); end
    end
  end
end