# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Billing
    # A credit grant is an API resource that documents the allocation of some billing credits to a customer.
    #
    # Related guide: [Billing credits](https://docs.stripe.com/billing/subscriptions/usage-based/billing-credits)
    class CreditGrant < APIResource
      class Amount < Stripe::StripeObject
        class Monetary < Stripe::StripeObject
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(String) }
          def currency; end
          # A positive integer representing the amount.
          sig { returns(Integer) }
          def value; end
        end
        # The monetary amount.
        sig { returns(T.nilable(Monetary)) }
        def monetary; end
        # The type of this amount. We currently only support `monetary` billing credits.
        sig { returns(String) }
        def type; end
      end
      class ApplicabilityConfig < Stripe::StripeObject
        class Scope < Stripe::StripeObject
          class Price < Stripe::StripeObject
            # Unique identifier for the object.
            sig { returns(T.nilable(String)) }
            def id; end
          end
          # The price type that credit grants can apply to. We currently only support the `metered` price type. This refers to prices that have a [Billing Meter](https://docs.stripe.com/api/billing/meter) attached to them. Cannot be used in combination with `prices`.
          sig { returns(String) }
          def price_type; end
          # The prices that credit grants can apply to. We currently only support `metered` prices. This refers to prices that have a [Billing Meter](https://docs.stripe.com/api/billing/meter) attached to them. Cannot be used in combination with `price_type`.
          sig { returns(T::Array[Price]) }
          def prices; end
        end
        # Attribute for field scope
        sig { returns(Scope) }
        def scope; end
      end
      # Attribute for field amount
      sig { returns(Amount) }
      def amount; end
      # Attribute for field applicability_config
      sig { returns(ApplicabilityConfig) }
      def applicability_config; end
      # The category of this credit grant. This is for tracking purposes and isn't displayed to the customer.
      sig { returns(String) }
      def category; end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def created; end
      # ID of the customer receiving the billing credits.
      sig { returns(T.any(String, Stripe::Customer)) }
      def customer; end
      # The time when the billing credits become effective-when they're eligible for use.
      sig { returns(T.nilable(Integer)) }
      def effective_at; end
      # The time when the billing credits expire. If not present, the billing credits don't expire.
      sig { returns(T.nilable(Integer)) }
      def expires_at; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      def livemode; end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T::Hash[String, String]) }
      def metadata; end
      # A descriptive name shown in dashboard.
      sig { returns(T.nilable(String)) }
      def name; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # The priority for applying this credit grant. The highest priority is 0 and the lowest is 100.
      sig { returns(T.nilable(Integer)) }
      def priority; end
      # ID of the test clock this credit grant belongs to.
      sig { returns(T.nilable(T.any(String, Stripe::TestHelpers::TestClock))) }
      def test_clock; end
      # Time at which the object was last updated. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def updated; end
      # The time when this credit grant was voided. If not present, the credit grant hasn't been voided.
      sig { returns(T.nilable(Integer)) }
      def voided_at; end
      class ListParams < Stripe::RequestParams
        # Only return credit grants for this customer.
        sig { returns(T.nilable(String)) }
        def customer; end
        sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
        def customer=(_customer); end
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(T.nilable(String)) }
        def ending_before; end
        sig { params(_ending_before: T.nilable(String)).returns(T.nilable(String)) }
        def ending_before=(_ending_before); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        def starting_after; end
        sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
        def starting_after=(_starting_after); end
        sig {
          params(customer: T.nilable(String), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
         }
        def initialize(
          customer: nil,
          ending_before: nil,
          expand: nil,
          limit: nil,
          starting_after: nil
        ); end
      end
      class CreateParams < Stripe::RequestParams
        class Amount < Stripe::RequestParams
          class Monetary < Stripe::RequestParams
            # Three-letter [ISO code for the currency](https://stripe.com/docs/currencies) of the `value` parameter.
            sig { returns(String) }
            def currency; end
            sig { params(_currency: String).returns(String) }
            def currency=(_currency); end
            # A positive integer representing the amount of the credit grant.
            sig { returns(Integer) }
            def value; end
            sig { params(_value: Integer).returns(Integer) }
            def value=(_value); end
            sig { params(currency: String, value: Integer).void }
            def initialize(currency: nil, value: nil); end
          end
          # The monetary amount.
          sig { returns(T.nilable(::Stripe::Billing::CreditGrant::CreateParams::Amount::Monetary)) }
          def monetary; end
          sig {
            params(_monetary: T.nilable(::Stripe::Billing::CreditGrant::CreateParams::Amount::Monetary)).returns(T.nilable(::Stripe::Billing::CreditGrant::CreateParams::Amount::Monetary))
           }
          def monetary=(_monetary); end
          # The type of this amount. We currently only support `monetary` billing credits.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig {
            params(monetary: T.nilable(::Stripe::Billing::CreditGrant::CreateParams::Amount::Monetary), type: String).void
           }
          def initialize(monetary: nil, type: nil); end
        end
        class ApplicabilityConfig < Stripe::RequestParams
          class Scope < Stripe::RequestParams
            class Price < Stripe::RequestParams
              # The price ID this credit grant should apply to.
              sig { returns(String) }
              def id; end
              sig { params(_id: String).returns(String) }
              def id=(_id); end
              sig { params(id: String).void }
              def initialize(id: nil); end
            end
            # The price type that credit grants can apply to. We currently only support the `metered` price type. Cannot be used in combination with `prices`.
            sig { returns(T.nilable(String)) }
            def price_type; end
            sig { params(_price_type: T.nilable(String)).returns(T.nilable(String)) }
            def price_type=(_price_type); end
            # A list of prices that the credit grant can apply to. We currently only support the `metered` prices. Cannot be used in combination with `price_type`.
            sig {
              returns(T.nilable(T::Array[::Stripe::Billing::CreditGrant::CreateParams::ApplicabilityConfig::Scope::Price]))
             }
            def prices; end
            sig {
              params(_prices: T.nilable(T::Array[::Stripe::Billing::CreditGrant::CreateParams::ApplicabilityConfig::Scope::Price])).returns(T.nilable(T::Array[::Stripe::Billing::CreditGrant::CreateParams::ApplicabilityConfig::Scope::Price]))
             }
            def prices=(_prices); end
            sig {
              params(price_type: T.nilable(String), prices: T.nilable(T::Array[::Stripe::Billing::CreditGrant::CreateParams::ApplicabilityConfig::Scope::Price])).void
             }
            def initialize(price_type: nil, prices: nil); end
          end
          # Specify the scope of this applicability config.
          sig { returns(::Stripe::Billing::CreditGrant::CreateParams::ApplicabilityConfig::Scope) }
          def scope; end
          sig {
            params(_scope: ::Stripe::Billing::CreditGrant::CreateParams::ApplicabilityConfig::Scope).returns(::Stripe::Billing::CreditGrant::CreateParams::ApplicabilityConfig::Scope)
           }
          def scope=(_scope); end
          sig {
            params(scope: ::Stripe::Billing::CreditGrant::CreateParams::ApplicabilityConfig::Scope).void
           }
          def initialize(scope: nil); end
        end
        # Amount of this credit grant.
        sig { returns(::Stripe::Billing::CreditGrant::CreateParams::Amount) }
        def amount; end
        sig {
          params(_amount: ::Stripe::Billing::CreditGrant::CreateParams::Amount).returns(::Stripe::Billing::CreditGrant::CreateParams::Amount)
         }
        def amount=(_amount); end
        # Configuration specifying what this credit grant applies to. We currently only support `metered` prices that have a [Billing Meter](https://docs.stripe.com/api/billing/meter) attached to them.
        sig { returns(::Stripe::Billing::CreditGrant::CreateParams::ApplicabilityConfig) }
        def applicability_config; end
        sig {
          params(_applicability_config: ::Stripe::Billing::CreditGrant::CreateParams::ApplicabilityConfig).returns(::Stripe::Billing::CreditGrant::CreateParams::ApplicabilityConfig)
         }
        def applicability_config=(_applicability_config); end
        # The category of this credit grant.
        sig { returns(String) }
        def category; end
        sig { params(_category: String).returns(String) }
        def category=(_category); end
        # ID of the customer to receive the billing credits.
        sig { returns(String) }
        def customer; end
        sig { params(_customer: String).returns(String) }
        def customer=(_customer); end
        # The time when the billing credits become effective-when they're eligible for use. It defaults to the current timestamp if not specified.
        sig { returns(T.nilable(Integer)) }
        def effective_at; end
        sig { params(_effective_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def effective_at=(_effective_at); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # The time when the billing credits expire. If not specified, the billing credits don't expire.
        sig { returns(T.nilable(Integer)) }
        def expires_at; end
        sig { params(_expires_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def expires_at=(_expires_at); end
        # Set of key-value pairs that you can attach to an object. You can use this to store additional information about the object (for example, cost basis) in a structured format.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        # A descriptive name shown in the Dashboard.
        sig { returns(T.nilable(String)) }
        def name; end
        sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
        def name=(_name); end
        # The desired priority for applying this credit grant. If not specified, it will be set to the default value of 50. The highest priority is 0 and the lowest is 100.
        sig { returns(T.nilable(Integer)) }
        def priority; end
        sig { params(_priority: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def priority=(_priority); end
        sig {
          params(amount: ::Stripe::Billing::CreditGrant::CreateParams::Amount, applicability_config: ::Stripe::Billing::CreditGrant::CreateParams::ApplicabilityConfig, category: String, customer: String, effective_at: T.nilable(Integer), expand: T.nilable(T::Array[String]), expires_at: T.nilable(Integer), metadata: T.nilable(T::Hash[String, String]), name: T.nilable(String), priority: T.nilable(Integer)).void
         }
        def initialize(
          amount: nil,
          applicability_config: nil,
          category: nil,
          customer: nil,
          effective_at: nil,
          expand: nil,
          expires_at: nil,
          metadata: nil,
          name: nil,
          priority: nil
        ); end
      end
      class UpdateParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # The time when the billing credits created by this credit grant expire. If set to empty, the billing credits never expire.
        sig { returns(T.nilable(T.any(String, Integer))) }
        def expires_at; end
        sig {
          params(_expires_at: T.nilable(T.any(String, Integer))).returns(T.nilable(T.any(String, Integer)))
         }
        def expires_at=(_expires_at); end
        # Set of key-value pairs you can attach to an object. You can use this to store additional information about the object (for example, cost basis) in a structured format.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        sig {
          params(expand: T.nilable(T::Array[String]), expires_at: T.nilable(T.any(String, Integer)), metadata: T.nilable(T::Hash[String, String])).void
         }
        def initialize(expand: nil, expires_at: nil, metadata: nil); end
      end
      class ExpireParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class VoidGrantParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      # Creates a credit grant.
      sig {
        params(params: T.any(::Stripe::Billing::CreditGrant::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Billing::CreditGrant)
       }
      def self.create(params = {}, opts = {}); end

      # Expires a credit grant.
      sig {
        params(params: T.any(::Stripe::Billing::CreditGrant::ExpireParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Billing::CreditGrant)
       }
      def expire(params = {}, opts = {}); end

      # Expires a credit grant.
      sig {
        params(id: String, params: T.any(::Stripe::Billing::CreditGrant::ExpireParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Billing::CreditGrant)
       }
      def self.expire(id, params = {}, opts = {}); end

      # Retrieve a list of credit grants.
      sig {
        params(params: T.any(::Stripe::Billing::CreditGrant::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end

      # Updates a credit grant.
      sig {
        params(id: String, params: T.any(::Stripe::Billing::CreditGrant::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Billing::CreditGrant)
       }
      def self.update(id, params = {}, opts = {}); end

      # Voids a credit grant.
      sig {
        params(params: T.any(::Stripe::Billing::CreditGrant::VoidGrantParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Billing::CreditGrant)
       }
      def void_grant(params = {}, opts = {}); end

      # Voids a credit grant.
      sig {
        params(id: String, params: T.any(::Stripe::Billing::CreditGrant::VoidGrantParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Billing::CreditGrant)
       }
      def self.void_grant(id, params = {}, opts = {}); end
    end
  end
end