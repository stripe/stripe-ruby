# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class RateCardService < StripeService
        attr_reader :rates
        attr_reader :versions
        class ListParams < Stripe::RequestParams
          # Optionally filter to active/inactive RateCards.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :active
          # Optionally set the maximum number of results per page. Defaults to 20.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :limit
          # Filter by lookup keys.
          # You can specify up to 10 lookup keys.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :lookup_keys
          sig {
            params(active: T.nilable(T::Boolean), limit: T.nilable(Integer), lookup_keys: T.nilable(T::Array[String])).void
           }
          def initialize(active: nil, limit: nil, lookup_keys: nil); end
        end
        class CreateParams < Stripe::RequestParams
          # The currency of this RateCard.
          sig { returns(String) }
          attr_accessor :currency
          # A customer-facing name for the RateCard.
          # This name is used in Stripe-hosted products like the Customer Portal and Checkout. It does not show up on Invoices.
          # Maximum length of 250 characters.
          sig { returns(String) }
          attr_accessor :display_name
          # An internal key you can use to search for a particular RateCard. Maximum length of 200 characters.
          sig { returns(T.nilable(String)) }
          attr_accessor :lookup_key
          # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          sig { returns(T.nilable(T::Hash[String, String])) }
          attr_accessor :metadata
          # The interval for assessing service. For example, a monthly RateCard with a rate of $1 for the first 10 "workloads"
          # and $2 thereafter means "$1 per workload up to 10 workloads during a month of service." This is similar to but
          # distinct from billing interval; the service interval deals with the rate at which the customer accumulates fees,
          # while the billing interval in Cadence deals with the rate the customer is billed.
          sig { returns(String) }
          attr_accessor :service_interval
          # The length of the interval for assessing service. For example, set this to 3 and `service_interval` to `"month"` in
          # order to specify quarterly service.
          sig { returns(Integer) }
          attr_accessor :service_interval_count
          # The Stripe Tax tax behavior - whether the rates are inclusive or exclusive of tax.
          sig { returns(String) }
          attr_accessor :tax_behavior
          sig {
            params(currency: String, display_name: String, lookup_key: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), service_interval: String, service_interval_count: Integer, tax_behavior: String).void
           }
          def initialize(
            currency: nil,
            display_name: nil,
            lookup_key: nil,
            metadata: nil,
            service_interval: nil,
            service_interval_count: nil,
            tax_behavior: nil
          ); end
        end
        class RetrieveParams < Stripe::RequestParams; end
        class UpdateParams < Stripe::RequestParams
          # Sets whether the RateCard is active. Inactive RateCards cannot be used in new activations or have new rates added.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :active
          # A customer-facing name for the RateCard.
          # This name is used in Stripe-hosted products like the Customer Portal and Checkout. It does not show up on Invoices.
          # Maximum length of 250 characters.
          sig { returns(T.nilable(String)) }
          attr_accessor :display_name
          # Changes the version that new RateCard activations will use. Providing `live_version = "latest"` will set the
          # RateCard's `live_version` to its latest version.
          sig { returns(T.nilable(String)) }
          attr_accessor :live_version
          # An internal key you can use to search for a particular RateCard. Maximum length of 200 characters.
          sig { returns(T.nilable(String)) }
          attr_accessor :lookup_key
          # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          sig { returns(T.nilable(T::Hash[String, T.nilable(String)])) }
          attr_accessor :metadata
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
        # Create a Rate Card object.
        sig {
          params(params: T.any(::Stripe::V2::Billing::RateCardService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::RateCard)
         }
        def create(params = {}, opts = {}); end

        # List all Rate Card objects.
        sig {
          params(params: T.any(::Stripe::V2::Billing::RateCardService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieve the latest version of a Rate Card object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::RateCardService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::RateCard)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Update a Rate Card object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::RateCardService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::RateCard)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end