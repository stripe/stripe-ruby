# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class CustomPricingUnitService < StripeService
        class ListParams < Stripe::RequestParams
          # Filter for active/inactive custom pricing units. Mutually exclusive with `lookup_keys`.
          sig { returns(T.nilable(T::Boolean)) }
          def active; end
          sig { params(_active: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def active=(_active); end
          # Optionally set the maximum number of results per page. Defaults to 20.
          sig { returns(T.nilable(Integer)) }
          def limit; end
          sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def limit=(_limit); end
          # Filter by lookup keys. Mutually exclusive with `active`.
          # You can specify up to 10 lookup keys.
          sig { returns(T.nilable(T::Array[String])) }
          def lookup_keys; end
          sig {
            params(_lookup_keys: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def lookup_keys=(_lookup_keys); end
          sig {
            params(active: T.nilable(T::Boolean), limit: T.nilable(Integer), lookup_keys: T.nilable(T::Array[String])).void
           }
          def initialize(active: nil, limit: nil, lookup_keys: nil); end
        end
        class CreateParams < Stripe::RequestParams
          # Description that customers will see in the invoice line item.
          # Maximum length of 10 characters.
          sig { returns(String) }
          def display_name; end
          sig { params(_display_name: String).returns(String) }
          def display_name=(_display_name); end
          # An internal key you can use to search for a particular custom pricing unit item.
          # Must be unique among items.
          # Maximum length of 200 characters.
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
          sig {
            params(display_name: String, lookup_key: T.nilable(String), metadata: T.nilable(T::Hash[String, String])).void
           }
          def initialize(display_name: nil, lookup_key: nil, metadata: nil); end
        end
        class RetrieveParams < Stripe::RequestParams; end
        class UpdateParams < Stripe::RequestParams
          # Whether the Custom Pricing Unit is active.
          sig { returns(T.nilable(T::Boolean)) }
          def active; end
          sig { params(_active: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def active=(_active); end
          # Description that customers will see in the invoice line item.
          sig { returns(T.nilable(String)) }
          def display_name; end
          sig { params(_display_name: T.nilable(String)).returns(T.nilable(String)) }
          def display_name=(_display_name); end
          # An internal key you can use to search for a particular CustomPricingUnit item.
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
            params(active: T.nilable(T::Boolean), display_name: T.nilable(String), lookup_key: T.nilable(String), metadata: T.nilable(T::Hash[String, T.nilable(String)])).void
           }
          def initialize(active: nil, display_name: nil, lookup_key: nil, metadata: nil); end
        end
        # Create a Custom Pricing Unit object.
        sig {
          params(params: T.any(::Stripe::V2::Billing::CustomPricingUnitService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::CustomPricingUnit)
         }
        def create(params = {}, opts = {}); end

        # List all Custom Pricing Unit objects.
        sig {
          params(params: T.any(::Stripe::V2::Billing::CustomPricingUnitService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieve a Custom Pricing Unit object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::CustomPricingUnitService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::CustomPricingUnit)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Update a Custom Pricing Unit object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::CustomPricingUnitService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::CustomPricingUnit)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end