# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class RateCardSubscriptionCreateParams < Stripe::RequestParams
        # The ID of the Billing Cadence.
        sig { returns(String) }
        def billing_cadence; end
        sig { params(_billing_cadence: String).returns(String) }
        def billing_cadence=(_billing_cadence); end
        # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        # The ID of the Rate Card.
        sig { returns(String) }
        def rate_card; end
        sig { params(_rate_card: String).returns(String) }
        def rate_card=(_rate_card); end
        # The ID of the Rate Card Version. If not specified, defaults to the "live_version" of the Rate Card at the time of creation.
        sig { returns(T.nilable(String)) }
        def rate_card_version; end
        sig { params(_rate_card_version: T.nilable(String)).returns(T.nilable(String)) }
        def rate_card_version=(_rate_card_version); end
        sig {
          params(billing_cadence: String, metadata: T.nilable(T::Hash[String, String]), rate_card: String, rate_card_version: T.nilable(String)).void
         }
        def initialize(
          billing_cadence: nil,
          metadata: nil,
          rate_card: nil,
          rate_card_version: nil
        ); end
      end
    end
  end
end