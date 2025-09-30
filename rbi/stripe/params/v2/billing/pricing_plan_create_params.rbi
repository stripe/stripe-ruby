# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class PricingPlanCreateParams < Stripe::RequestParams
        # The currency of the PricingPlan.
        sig { returns(String) }
        def currency; end
        sig { params(_currency: String).returns(String) }
        def currency=(_currency); end
        # Description of pricing plan subscription.
        sig { returns(T.nilable(String)) }
        def description; end
        sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
        def description=(_description); end
        # Display name of the PricingPlan. Maximum 250 characters.
        sig { returns(String) }
        def display_name; end
        sig { params(_display_name: String).returns(String) }
        def display_name=(_display_name); end
        # An internal key you can use to search for a particular PricingPlan. Maximum length of 200 characters.
        sig { returns(T.nilable(String)) }
        def lookup_key; end
        sig { params(_lookup_key: T.nilable(String)).returns(T.nilable(String)) }
        def lookup_key=(_lookup_key); end
        # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        # The Stripe Tax tax behavior - whether the PricingPlan is inclusive or exclusive of tax.
        sig { returns(String) }
        def tax_behavior; end
        sig { params(_tax_behavior: String).returns(String) }
        def tax_behavior=(_tax_behavior); end
        sig {
          params(currency: String, description: T.nilable(String), display_name: String, lookup_key: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), tax_behavior: String).void
         }
        def initialize(
          currency: nil,
          description: nil,
          display_name: nil,
          lookup_key: nil,
          metadata: nil,
          tax_behavior: nil
        ); end
      end
    end
  end
end