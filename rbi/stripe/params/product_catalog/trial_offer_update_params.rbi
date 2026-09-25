# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module ProductCatalog
    class TrialOfferUpdateParams < ::Stripe::RequestParams
      # Whether the trial offer can be used for new purchases.
      sig { returns(T.nilable(T::Boolean)) }
      def active; end
      sig { params(_active: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def active=(_active); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      sig { params(active: T.nilable(T::Boolean), expand: T.nilable(T::Array[String])).void }
      def initialize(active: nil, expand: nil); end
    end
  end
end