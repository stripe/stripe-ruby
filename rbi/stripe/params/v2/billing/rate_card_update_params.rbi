# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class RateCardUpdateParams < ::Stripe::RequestParams
        # Sets whether the RateCard is active. Inactive RateCards cannot be used in new activations or have new rates added.
        sig { returns(T.nilable(T::Boolean)) }
        def active; end
        sig { params(_active: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def active=(_active); end
        # A customer-facing name for the RateCard.
        # This name is used in Stripe-hosted products like the Customer Portal and Checkout. It does not show up on Invoices.
        # Maximum length of 250 characters.
        sig { returns(T.nilable(String)) }
        def display_name; end
        sig { params(_display_name: T.nilable(String)).returns(T.nilable(String)) }
        def display_name=(_display_name); end
        # Changes the version that new RateCard activations will use. Providing `live_version = "latest"` will set the
        # RateCard's `live_version` to its latest version.
        sig { returns(T.nilable(String)) }
        def live_version; end
        sig { params(_live_version: T.nilable(String)).returns(T.nilable(String)) }
        def live_version=(_live_version); end
        # An internal key you can use to search for a particular RateCard. Maximum length of 200 characters.
        sig { returns(T.nilable(String)) }
        def lookup_key; end
        sig { params(_lookup_key: T.nilable(String)).returns(T.nilable(String)) }
        def lookup_key=(_lookup_key); end
        # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, T.nilable(String)])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, T.nilable(String)])).returns(T.nilable(T::Hash[String, T.nilable(String)]))
         }
        def metadata=(_metadata); end
        sig {
          params(active: T.nilable(T::Boolean), display_name: T.nilable(String), live_version: T.nilable(String), lookup_key: T.nilable(String), metadata: T.nilable(T::Hash[String, T.nilable(String)])).void
         }
        def initialize(
          active: nil,
          display_name: nil,
          live_version: nil,
          lookup_key: nil,
          metadata: nil
        ); end
      end
    end
  end
end