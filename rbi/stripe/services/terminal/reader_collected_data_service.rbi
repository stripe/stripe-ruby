# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Terminal
    class ReaderCollectedDataService < StripeService
      # Retrieve data collected using Reader hardware.
      sig {
        params(id: String, params: T.any(::Stripe::Terminal::ReaderCollectedDataRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Terminal::ReaderCollectedData)
       }
      def retrieve(id, params = {}, opts = {}); end
    end
  end
end