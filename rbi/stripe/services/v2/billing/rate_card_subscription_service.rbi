# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class RateCardSubscriptionService < StripeService
        class ListParams < Stripe::RequestParams
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
          sig {
            returns(T.nilable(::Stripe::V2::Billing::RateCardSubscriptionService::ListParams::Payer))
           }
          def payer; end
          sig {
            params(_payer: T.nilable(::Stripe::V2::Billing::RateCardSubscriptionService::ListParams::Payer)).returns(T.nilable(::Stripe::V2::Billing::RateCardSubscriptionService::ListParams::Payer))
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
            params(billing_cadence: T.nilable(String), limit: T.nilable(Integer), payer: T.nilable(::Stripe::V2::Billing::RateCardSubscriptionService::ListParams::Payer), rate_card: T.nilable(String), rate_card_version: T.nilable(String), servicing_status: T.nilable(String)).void
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
        class CreateParams < Stripe::RequestParams
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
        class RetrieveParams < Stripe::RequestParams; end
        class UpdateParams < Stripe::RequestParams
          # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          sig { returns(T.nilable(T::Hash[String, T.nilable(String)])) }
          def metadata; end
          sig {
            params(_metadata: T.nilable(T::Hash[String, T.nilable(String)])).returns(T.nilable(T::Hash[String, T.nilable(String)]))
           }
          def metadata=(_metadata); end
          sig { params(metadata: T.nilable(T::Hash[String, T.nilable(String)])).void }
          def initialize(metadata: nil); end
        end
        class CancelParams < Stripe::RequestParams; end
        # Cancel an existing, active Rate Card Subscription.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::RateCardSubscriptionService::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::RateCardSubscription)
         }
        def cancel(id, params = {}, opts = {}); end

        # Create a Rate Card Subscription to bill a Rate Card on a specified Billing Cadence.
        sig {
          params(params: T.any(::Stripe::V2::Billing::RateCardSubscriptionService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::RateCardSubscription)
         }
        def create(params = {}, opts = {}); end

        # List all Rate Card Subscription objects.
        sig {
          params(params: T.any(::Stripe::V2::Billing::RateCardSubscriptionService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieve a Rate Card Subscription by ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::RateCardSubscriptionService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::RateCardSubscription)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Update fields on an existing, active Rate Card Subscription.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::RateCardSubscriptionService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::RateCardSubscription)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end