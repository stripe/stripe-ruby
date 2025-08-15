# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class RateCardSubscriptionService < StripeService
        class ListParams < Stripe::RequestParams
          class Payer < Stripe::RequestParams
            # The ID of the Customer object. If provided, only RateCardSubscriptions that are subscribed on the Cadences with the specified Payer will be returned.
            sig { returns(T.nilable(String)) }
            attr_accessor :customer
            # A string identifying the type of the payer. Currently the only supported value is `customer`.
            sig { returns(String) }
            attr_accessor :type
            sig { params(customer: T.nilable(String), type: String).void }
            def initialize(customer: nil, type: nil); end
          end
          # Optionally filter by a BillingCadence. Mutually exclusive with `payers`, `rate_card`, and `rate_card_version`.
          sig { returns(T.nilable(String)) }
          attr_accessor :billing_cadence
          # The page size limit, if not provided the default is 20.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :limit
          # Optionally filter by the payer associated with Cadences which the RateCardSubscriptions are subscribed to.
          # Mutually exclusive with `billing_cadence`, `rate_card`, and `rate_card_version`.
          sig {
            returns(T.nilable(::Stripe::V2::Billing::RateCardSubscriptionService::ListParams::Payer))
           }
          attr_accessor :payer
          # Optionally filter by a RateCard. Mutually exclusive with `billing_cadence`, `payers`, and `rate_card_version`.
          sig { returns(T.nilable(String)) }
          attr_accessor :rate_card
          # Optionally filter by a RateCard version. Mutually exclusive with `billing_cadence`, `payers`, and `rate_card`.
          sig { returns(T.nilable(String)) }
          attr_accessor :rate_card_version
          # Optionally filter by servicing status.
          sig { returns(T.nilable(String)) }
          attr_accessor :servicing_status
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
          # The ID of the billing Cadence.
          sig { returns(String) }
          attr_accessor :billing_cadence
          # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          sig { returns(T.nilable(T::Hash[String, String])) }
          attr_accessor :metadata
          # The ID of the RateCard.
          sig { returns(String) }
          attr_accessor :rate_card
          # The ID of the RateCardVersion. If not specified, defaults to the "live_version" of the RateCard at the time of creation.
          sig { returns(T.nilable(String)) }
          attr_accessor :rate_card_version
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
          # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          sig { returns(T.nilable(T::Hash[String, T.nilable(String)])) }
          attr_accessor :metadata
          sig { params(metadata: T.nilable(T::Hash[String, T.nilable(String)])).void }
          def initialize(metadata: nil); end
        end
        class CancelParams < Stripe::RequestParams; end
        # Cancel an existing, active RateCardSubscription.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::RateCardSubscriptionService::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::RateCardSubscription)
         }
        def cancel(id, params = {}, opts = {}); end

        # Create a RateCardSubscription to bill a RateCard on a specified billing Cadence.
        sig {
          params(params: T.any(::Stripe::V2::Billing::RateCardSubscriptionService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::RateCardSubscription)
         }
        def create(params = {}, opts = {}); end

        # List all RateCardSubscription objects.
        sig {
          params(params: T.any(::Stripe::V2::Billing::RateCardSubscriptionService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieve a RateCardSubscription by ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::RateCardSubscriptionService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::RateCardSubscription)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Update fields on an existing, active RateCardSubscription.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::RateCardSubscriptionService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::RateCardSubscription)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end