# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class CustomPricingUnitUpdateParams < ::Stripe::RequestParams
        # Whether the Custom Pricing Unit is active.
        sig { returns(T.nilable(T::Boolean)) }
        def active; end
        sig { params(_active: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def active=(_active); end
        # Description that customers will see in the invoice line item.
        sig { returns(T.nilable(String)) }
        def display_name; end
        sig { params(_display_name: T.nilable(String)).returns(T.nilable(String)) }
        def display_name=(_display_name); end
        # An internal key you can use to search for a particular CustomPricingUnit item.
        sig { returns(T.nilable(String)) }
        def lookup_key; end
        sig { params(_lookup_key: T.nilable(String)).returns(T.nilable(String)) }
        def lookup_key=(_lookup_key); end
        # Set of key-value pairs that you can attach to an object.
        sig { returns(T.nilable(T::Hash[String, T.nilable(String)])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, T.nilable(String)])).returns(T.nilable(T::Hash[String, T.nilable(String)]))
         }
        def metadata=(_metadata); end
        sig {
          params(active: T.nilable(T::Boolean), display_name: T.nilable(String), lookup_key: T.nilable(String), metadata: T.nilable(T::Hash[String, T.nilable(String)])).void
         }
        def initialize(active: nil, display_name: nil, lookup_key: nil, metadata: nil); end
      end
    end
  end
end