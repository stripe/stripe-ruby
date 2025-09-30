# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class PricingPlanUpdateParams < Stripe::RequestParams
        # Whether the PricingPlan is active.
        sig { returns(T.nilable(T::Boolean)) }
        def active; end
        sig { params(_active: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def active=(_active); end
        # Description of pricing plan subscription.
        sig { returns(T.nilable(String)) }
        def description; end
        sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
        def description=(_description); end
        # Display name of the PricingPlan. Maximum 250 characters.
        sig { returns(T.nilable(String)) }
        def display_name; end
        sig { params(_display_name: T.nilable(String)).returns(T.nilable(String)) }
        def display_name=(_display_name); end
        # The ID of the live version of the PricingPlan.
        sig { returns(T.nilable(String)) }
        def live_version; end
        sig { params(_live_version: T.nilable(String)).returns(T.nilable(String)) }
        def live_version=(_live_version); end
        # An internal key you can use to search for a particular PricingPlan. Maximum length of 200 characters.
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
          params(active: T.nilable(T::Boolean), description: T.nilable(String), display_name: T.nilable(String), live_version: T.nilable(String), lookup_key: T.nilable(String), metadata: T.nilable(T::Hash[String, T.nilable(String)])).void
         }
        def initialize(
          active: nil,
          description: nil,
          display_name: nil,
          live_version: nil,
          lookup_key: nil,
          metadata: nil
        ); end
      end
    end
  end
end