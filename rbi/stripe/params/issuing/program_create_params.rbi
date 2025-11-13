# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Issuing
    class ProgramCreateParams < ::Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # If true, makes the specified program the default for the given account.
      sig { returns(T.nilable(T::Boolean)) }
      def is_default; end
      sig { params(_is_default: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def is_default=(_is_default); end
      # The program to use as the parent for the new program to create.
      sig { returns(String) }
      def platform_program; end
      sig { params(_platform_program: String).returns(String) }
      def platform_program=(_platform_program); end
      sig {
        params(expand: T.nilable(T::Array[String]), is_default: T.nilable(T::Boolean), platform_program: String).void
       }
      def initialize(expand: nil, is_default: nil, platform_program: nil); end
    end
  end
end