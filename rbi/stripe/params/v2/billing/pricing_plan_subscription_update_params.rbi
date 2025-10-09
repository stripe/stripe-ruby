# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class PricingPlanSubscriptionUpdateParams < ::Stripe::RequestParams
        # When set to true, the `servicing_status_transition.will_cancel_at` field will be cleared.
        sig { returns(T.nilable(T::Boolean)) }
        def clear_cancel_at; end
        sig { params(_clear_cancel_at: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def clear_cancel_at=(_clear_cancel_at); end
        # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, T.nilable(String)])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, T.nilable(String)])).returns(T.nilable(T::Hash[String, T.nilable(String)]))
         }
        def metadata=(_metadata); end
        sig {
          params(clear_cancel_at: T.nilable(T::Boolean), metadata: T.nilable(T::Hash[String, T.nilable(String)])).void
         }
        def initialize(clear_cancel_at: nil, metadata: nil); end
      end
    end
  end
end