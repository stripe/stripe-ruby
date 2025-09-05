# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Terminal
    class ReaderCollectedDataService < StripeService
      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      # Retrieve data collected using Reader hardware.
      sig {
        params(reader_collected_data: String, params: T.any(::Stripe::Terminal::ReaderCollectedDataService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::ReaderCollectedData)
       }
      def retrieve(reader_collected_data, params = {}, opts = {}); end
    end
  end
end