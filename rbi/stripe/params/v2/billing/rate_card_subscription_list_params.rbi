# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class RateCardSubscriptionListParams < Stripe::RequestParams
        class Payer < Stripe::RequestParams
          # The ID of the Customer object. If provided, only the Rate Card Subscriptions that are subscribed on the Billing Cadences with the specified payer will be returned.
          sig { returns(T.nilable(String)) }
          def customer; end
          sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
          def customer=(_customer); end
          # A string identifying the type of the payer. Currently the only supported value is `customer`.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig { params(customer: T.nilable(String), type: String).void }
          def initialize(customer: nil, type: nil); end
        end
        # Optionally filter by a BillingCadence. Mutually exclusive with `payers`, `rate_card`, and `rate_card_version`.
        sig { returns(T.nilable(String)) }
        def billing_cadence; end
        sig { params(_billing_cadence: T.nilable(String)).returns(T.nilable(String)) }
        def billing_cadence=(_billing_cadence); end
        # The page size limit, if not provided the default is 20.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # Optionally filter by the payer associated with Billing Cadences which the Rate Card Subscriptions are subscribed to.
        # Mutually exclusive with `billing_cadence`, `rate_card`, and `rate_card_version`.
        sig { returns(T.nilable(V2::Billing::RateCardSubscriptionListParams::Payer)) }
        def payer; end
        sig {
          params(_payer: T.nilable(V2::Billing::RateCardSubscriptionListParams::Payer)).returns(T.nilable(V2::Billing::RateCardSubscriptionListParams::Payer))
         }
        def payer=(_payer); end
        # Optionally filter by a RateCard. Mutually exclusive with `billing_cadence`, `payers`, and `rate_card_version`.
        sig { returns(T.nilable(String)) }
        def rate_card; end
        sig { params(_rate_card: T.nilable(String)).returns(T.nilable(String)) }
        def rate_card=(_rate_card); end
        # Optionally filter by a RateCard version. Mutually exclusive with `billing_cadence`, `payers`, and `rate_card`.
        sig { returns(T.nilable(String)) }
        def rate_card_version; end
        sig { params(_rate_card_version: T.nilable(String)).returns(T.nilable(String)) }
        def rate_card_version=(_rate_card_version); end
        # Optionally filter by servicing status.
        sig { returns(T.nilable(String)) }
        def servicing_status; end
        sig { params(_servicing_status: T.nilable(String)).returns(T.nilable(String)) }
        def servicing_status=(_servicing_status); end
        sig {
          params(billing_cadence: T.nilable(String), limit: T.nilable(Integer), payer: T.nilable(V2::Billing::RateCardSubscriptionListParams::Payer), rate_card: T.nilable(String), rate_card_version: T.nilable(String), servicing_status: T.nilable(String)).void
         }
        def initialize(
          billing_cadence: nil,
          limit: nil,
          payer: nil,
          rate_card: nil,
          rate_card_version: nil,
          servicing_status: nil
        ); end
      end
    end
  end
end