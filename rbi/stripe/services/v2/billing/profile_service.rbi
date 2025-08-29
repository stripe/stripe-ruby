# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class ProfileService < StripeService
        class ListParams < Stripe::RequestParams
          # Filter billing profiles by a customer. Mutually exclusive
          # with `lookup_keys` and `default_payment_method`.
          sig { returns(T.nilable(String)) }
          def customer; end
          sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
          def customer=(_customer); end
          # Filter billing profiles by a default payment method. Mutually exclusive
          # with `customer` and `lookup_keys`.
          sig { returns(T.nilable(String)) }
          def default_payment_method; end
          sig { params(_default_payment_method: T.nilable(String)).returns(T.nilable(String)) }
          def default_payment_method=(_default_payment_method); end
          # Optionally set the maximum number of results per page. Defaults to 10.
          sig { returns(T.nilable(Integer)) }
          def limit; end
          sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def limit=(_limit); end
          # Filter billing profiles by lookup keys. Mutually exclusive
          # with `customer` and `default_payment_method`.
          # You can specify up to 10 lookup_keys.
          sig { returns(T::Array[String]) }
          def lookup_keys; end
          sig { params(_lookup_keys: T::Array[String]).returns(T::Array[String]) }
          def lookup_keys=(_lookup_keys); end
          # Filter billing profiles by status. Can be combined
          # with all other filters. If not provided, all billing profiles will be returned.
          sig { returns(T.nilable(String)) }
          def status; end
          sig { params(_status: T.nilable(String)).returns(T.nilable(String)) }
          def status=(_status); end
          sig {
            params(customer: T.nilable(String), default_payment_method: T.nilable(String), limit: T.nilable(Integer), lookup_keys: T::Array[String], status: T.nilable(String)).void
           }
          def initialize(
            customer: nil,
            default_payment_method: nil,
            limit: nil,
            lookup_keys: nil,
            status: nil
          ); end
        end
        class CreateParams < Stripe::RequestParams
          # The ID of the customer object.
          sig { returns(String) }
          def customer; end
          sig { params(_customer: String).returns(String) }
          def customer=(_customer); end
          # The ID of the payment method object.
          sig { returns(T.nilable(String)) }
          def default_payment_method; end
          sig { params(_default_payment_method: T.nilable(String)).returns(T.nilable(String)) }
          def default_payment_method=(_default_payment_method); end
          # A customer-facing name for the billing profile.
          # Maximum length of 250 characters.
          sig { returns(T.nilable(String)) }
          def display_name; end
          sig { params(_display_name: T.nilable(String)).returns(T.nilable(String)) }
          def display_name=(_display_name); end
          # An internal key you can use to search for a particular billing profile. It must be unique among billing profiles for a given customer.
          # Maximum length of 200 characters.
          sig { returns(T.nilable(String)) }
          def lookup_key; end
          sig { params(_lookup_key: T.nilable(String)).returns(T.nilable(String)) }
          def lookup_key=(_lookup_key); end
          # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          sig { returns(T.nilable(T::Hash[String, String])) }
          def metadata; end
          sig {
            params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
           }
          def metadata=(_metadata); end
          sig {
            params(customer: String, default_payment_method: T.nilable(String), display_name: T.nilable(String), lookup_key: T.nilable(String), metadata: T.nilable(T::Hash[String, String])).void
           }
          def initialize(
            customer: nil,
            default_payment_method: nil,
            display_name: nil,
            lookup_key: nil,
            metadata: nil
          ); end
        end
        class RetrieveParams < Stripe::RequestParams; end
        class UpdateParams < Stripe::RequestParams
          # The ID of the payment method object.
          sig { returns(T.nilable(String)) }
          def default_payment_method; end
          sig { params(_default_payment_method: T.nilable(String)).returns(T.nilable(String)) }
          def default_payment_method=(_default_payment_method); end
          # A customer-facing name for the billing profile.
          # Maximum length of 250 characters.
          # To remove the display_name from the object, set it to null in the request.
          sig { returns(T.nilable(T.nilable(String))) }
          def display_name; end
          sig {
            params(_display_name: T.nilable(T.nilable(String))).returns(T.nilable(T.nilable(String)))
           }
          def display_name=(_display_name); end
          # An internal key you can use to search for a particular billing profile. It must be unique among billing profiles for a given customer.
          # Maximum length of 200 characters.
          # To remove the lookup_key from the object, set it to null in the request.
          sig { returns(T.nilable(T.nilable(String))) }
          def lookup_key; end
          sig {
            params(_lookup_key: T.nilable(T.nilable(String))).returns(T.nilable(T.nilable(String)))
           }
          def lookup_key=(_lookup_key); end
          # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          sig { returns(T.nilable(T::Hash[String, T.nilable(String)])) }
          def metadata; end
          sig {
            params(_metadata: T.nilable(T::Hash[String, T.nilable(String)])).returns(T.nilable(T::Hash[String, T.nilable(String)]))
           }
          def metadata=(_metadata); end
          sig {
            params(default_payment_method: T.nilable(String), display_name: T.nilable(T.nilable(String)), lookup_key: T.nilable(T.nilable(String)), metadata: T.nilable(T::Hash[String, T.nilable(String)])).void
           }
          def initialize(
            default_payment_method: nil,
            display_name: nil,
            lookup_key: nil,
            metadata: nil
          ); end
        end
        # Create a BillingProfile object.
        sig {
          params(params: T.any(::Stripe::V2::Billing::ProfileService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::Profile)
         }
        def create(params = {}, opts = {}); end

        # List Billing Profiles.
        sig {
          params(params: T.any(::Stripe::V2::Billing::ProfileService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieve a BillingProfile object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::ProfileService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::Profile)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Update a BillingProfile object.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Billing::ProfileService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Billing::Profile)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end