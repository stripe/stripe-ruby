# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class RateCardListParams < ::Stripe::RequestParams
        # Optionally filter to active/inactive RateCards.
        sig { returns(T.nilable(T::Boolean)) }
        def active; end
        sig { params(_active: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def active=(_active); end
        # Optionally set the maximum number of results per page. Defaults to 20.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # Filter by lookup keys.
        # You can specify up to 10 lookup keys.
        sig { returns(T.nilable(T::Array[String])) }
        def lookup_keys; end
        sig {
          params(_lookup_keys: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
         }
        def lookup_keys=(_lookup_keys); end
        sig {
          params(active: T.nilable(T::Boolean), limit: T.nilable(Integer), lookup_keys: T.nilable(T::Array[String])).void
         }
        def initialize(active: nil, limit: nil, lookup_keys: nil); end
      end
    end
  end
end