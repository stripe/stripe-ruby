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
          attr_reader :currency
          # A positive integer representing the amount.
          sig { returns(Integer) }
          attr_reader :value
        end
        # The monetary amount.
        sig { returns(T.nilable(Monetary)) }
        attr_reader :monetary
        # The type of this amount. We currently only support `monetary` billing credits.
        sig { returns(String) }
        attr_reader :type
      end
      class ApplicabilityConfig < Stripe::StripeObject
        class Scope < Stripe::StripeObject
          # The price type that credit grants can apply to. We currently only support the `metered` price type. This refers to prices that have a [Billing Meter](https://docs.stripe.com/api/billing/meter) attached to them.
          sig { returns(String) }
          attr_reader :price_type
        end
        # Attribute for field scope
        sig { returns(Scope) }
        attr_reader :scope
      end
      # Attribute for field amount
      sig { returns(Amount) }
      attr_reader :amount
      # Attribute for field applicability_config
      sig { returns(ApplicabilityConfig) }
      attr_reader :applicability_config
      # The category of this credit grant. This is for tracking purposes and isn't displayed to the customer.
      sig { returns(String) }
      attr_reader :category
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created
      # ID of the customer receiving the billing credits.
      sig { returns(T.any(String, Stripe::Customer)) }
      attr_reader :customer
      # The time when the billing credits become effective-when they're eligible for use.
      sig { returns(T.nilable(Integer)) }
      attr_reader :effective_at
      # The time when the billing credits expire. If not present, the billing credits don't expire.
      sig { returns(T.nilable(Integer)) }
      attr_reader :expires_at
      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T::Hash[String, String]) }
      attr_reader :metadata
      # A descriptive name shown in dashboard.
      sig { returns(T.nilable(String)) }
      attr_reader :name
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object
      # ID of the test clock this credit grant belongs to.
      sig { returns(T.nilable(T.any(String, Stripe::TestHelpers::TestClock))) }
      attr_reader :test_clock
      # Time at which the object was last updated. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :updated
      # The time when this credit grant was voided. If not present, the credit grant hasn't been voided.
      sig { returns(T.nilable(Integer)) }
      attr_reader :voided_at
      class ListParams < Stripe::RequestParams
        # Only return credit grants for this customer.
        sig { returns(String) }
        attr_accessor :customer
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(String) }
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(Integer) }
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(String) }
        attr_accessor :starting_after
        sig {
          params(customer: String, ending_before: String, expand: T::Array[String], limit: Integer, starting_after: String).void
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
            attr_accessor :currency
            # A positive integer representing the amount of the credit grant.
            sig { returns(Integer) }
            attr_accessor :value
            sig { params(currency: String, value: Integer).void }
            def initialize(currency: nil, value: nil); end
          end
          # The monetary amount.
          sig { returns(::Stripe::Billing::CreditGrant::CreateParams::Amount::Monetary) }
          attr_accessor :monetary
          # Specify the type of this amount. We currently only support `monetary` billing credits.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(monetary: ::Stripe::Billing::CreditGrant::CreateParams::Amount::Monetary, type: String).void
           }
          def initialize(monetary: nil, type: nil); end
        end
        class ApplicabilityConfig < Stripe::RequestParams
          class Scope < Stripe::RequestParams
            # The price type that credit grants can apply to. We currently only support the `metered` price type.
            sig { returns(String) }
            attr_accessor :price_type
            sig { params(price_type: String).void }
            def initialize(price_type: nil); end
          end
          # Specify the scope of this applicability config.
          sig { returns(::Stripe::Billing::CreditGrant::CreateParams::ApplicabilityConfig::Scope) }
          attr_accessor :scope
          sig {
            params(scope: ::Stripe::Billing::CreditGrant::CreateParams::ApplicabilityConfig::Scope).void
           }
          def initialize(scope: nil); end
        end
        # Amount of this credit grant.
        sig { returns(::Stripe::Billing::CreditGrant::CreateParams::Amount) }
        attr_accessor :amount
        # Configuration specifying what this credit grant applies to.
        sig { returns(::Stripe::Billing::CreditGrant::CreateParams::ApplicabilityConfig) }
        attr_accessor :applicability_config
        # The category of this credit grant.
        sig { returns(String) }
        attr_accessor :category
        # ID of the customer to receive the billing credits.
        sig { returns(String) }
        attr_accessor :customer
        # The time when the billing credits become effective-when they're eligible for use. It defaults to the current timestamp if not specified.
        sig { returns(Integer) }
        attr_accessor :effective_at
        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand
        # The time when the billing credits expire. If not specified, the billing credits don't expire.
        sig { returns(Integer) }
        attr_accessor :expires_at
        # Set of key-value pairs that you can attach to an object. You can use this to store additional information about the object (for example, cost basis) in a structured format.
        sig { returns(T::Hash[String, String]) }
        attr_accessor :metadata
        # A descriptive name shown in the Dashboard.
        sig { returns(String) }
        attr_accessor :name
        sig {
          params(amount: ::Stripe::Billing::CreditGrant::CreateParams::Amount, applicability_config: ::Stripe::Billing::CreditGrant::CreateParams::ApplicabilityConfig, category: String, customer: String, effective_at: Integer, expand: T::Array[String], expires_at: Integer, metadata: T::Hash[String, String], name: String).void
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
          name: nil
        ); end
      end
      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand
        sig { params(expand: T::Array[String]).void }
        def initialize(expand: nil); end
      end
      class UpdateParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand
        # The time when the billing credits created by this credit grant expire. If set to empty, the billing credits never expire.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :expires_at
        # Set of key-value pairs you can attach to an object. You can use this to store additional information about the object (for example, cost basis) in a structured format.
        sig { returns(T::Hash[String, String]) }
        attr_accessor :metadata
        sig {
          params(expand: T::Array[String], expires_at: T.nilable(Integer), metadata: T::Hash[String, String]).void
         }
        def initialize(expand: nil, expires_at: nil, metadata: nil); end
      end
      class ExpireParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand
        sig { params(expand: T::Array[String]).void }
        def initialize(expand: nil); end
      end
      class VoidGrantParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand
        sig { params(expand: T::Array[String]).void }
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