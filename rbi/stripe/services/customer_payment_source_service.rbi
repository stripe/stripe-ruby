# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class CustomerPaymentSourceService < StripeService
    class ListParams < Stripe::RequestParams
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
      # Filter sources according to a particular object type.
      sig { returns(T.nilable(String)) }
      def object; end
      sig { params(_object: T.nilable(String)).returns(T.nilable(String)) }
      def object=(_object); end
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      def starting_after; end
      sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
      def starting_after=(_starting_after); end
      sig {
        params(ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), object: T.nilable(String), starting_after: T.nilable(String)).void
       }
      def initialize(
        ending_before: nil,
        expand: nil,
        limit: nil,
        object: nil,
        starting_after: nil
      ); end
    end
    class CreateParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
       }
      def metadata=(_metadata); end
      # Please refer to full [documentation](https://stripe.com/docs/api) instead.
      sig { returns(String) }
      def source; end
      sig { params(_source: String).returns(String) }
      def source=(_source); end
      # Attribute for param field validate
      sig { returns(T.nilable(T::Boolean)) }
      def validate; end
      sig { params(_validate: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def validate=(_validate); end
      sig {
        params(expand: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), source: String, validate: T.nilable(T::Boolean)).void
       }
      def initialize(expand: nil, metadata: nil, source: nil, validate: nil); end
    end
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    class UpdateParams < Stripe::RequestParams
      class Owner < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          sig { returns(T.nilable(String)) }
          def city; end
          sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
          def city=(_city); end
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(T.nilable(String)) }
          def country; end
          sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
          def country=(_country); end
          # Address line 1 (e.g., street, PO Box, or company name).
          sig { returns(T.nilable(String)) }
          def line1; end
          sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
          def line1=(_line1); end
          # Address line 2 (e.g., apartment, suite, unit, or building).
          sig { returns(T.nilable(String)) }
          def line2; end
          sig { params(_line2: T.nilable(String)).returns(T.nilable(String)) }
          def line2=(_line2); end
          # ZIP or postal code.
          sig { returns(T.nilable(String)) }
          def postal_code; end
          sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
          def postal_code=(_postal_code); end
          # State, county, province, or region.
          sig { returns(T.nilable(String)) }
          def state; end
          sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
          def state=(_state); end
          sig {
            params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
           }
          def initialize(
            city: nil,
            country: nil,
            line1: nil,
            line2: nil,
            postal_code: nil,
            state: nil
          ); end
        end
        # Owner's address.
        sig {
          returns(T.nilable(::Stripe::CustomerPaymentSourceService::UpdateParams::Owner::Address))
         }
        def address; end
        sig {
          params(_address: T.nilable(::Stripe::CustomerPaymentSourceService::UpdateParams::Owner::Address)).returns(T.nilable(::Stripe::CustomerPaymentSourceService::UpdateParams::Owner::Address))
         }
        def address=(_address); end
        # Owner's email address.
        sig { returns(T.nilable(String)) }
        def email; end
        sig { params(_email: T.nilable(String)).returns(T.nilable(String)) }
        def email=(_email); end
        # Owner's full name.
        sig { returns(T.nilable(String)) }
        def name; end
        sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
        def name=(_name); end
        # Owner's phone number.
        sig { returns(T.nilable(String)) }
        def phone; end
        sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
        def phone=(_phone); end
        sig {
          params(address: T.nilable(::Stripe::CustomerPaymentSourceService::UpdateParams::Owner::Address), email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
         }
        def initialize(address: nil, email: nil, name: nil, phone: nil); end
      end
      # The name of the person or business that owns the bank account.
      sig { returns(T.nilable(String)) }
      def account_holder_name; end
      sig { params(_account_holder_name: T.nilable(String)).returns(T.nilable(String)) }
      def account_holder_name=(_account_holder_name); end
      # The type of entity that holds the account. This can be either `individual` or `company`.
      sig { returns(T.nilable(String)) }
      def account_holder_type; end
      sig { params(_account_holder_type: T.nilable(String)).returns(T.nilable(String)) }
      def account_holder_type=(_account_holder_type); end
      # City/District/Suburb/Town/Village.
      sig { returns(T.nilable(String)) }
      def address_city; end
      sig { params(_address_city: T.nilable(String)).returns(T.nilable(String)) }
      def address_city=(_address_city); end
      # Billing address country, if provided when creating card.
      sig { returns(T.nilable(String)) }
      def address_country; end
      sig { params(_address_country: T.nilable(String)).returns(T.nilable(String)) }
      def address_country=(_address_country); end
      # Address line 1 (Street address/PO Box/Company name).
      sig { returns(T.nilable(String)) }
      def address_line1; end
      sig { params(_address_line1: T.nilable(String)).returns(T.nilable(String)) }
      def address_line1=(_address_line1); end
      # Address line 2 (Apartment/Suite/Unit/Building).
      sig { returns(T.nilable(String)) }
      def address_line2; end
      sig { params(_address_line2: T.nilable(String)).returns(T.nilable(String)) }
      def address_line2=(_address_line2); end
      # State/County/Province/Region.
      sig { returns(T.nilable(String)) }
      def address_state; end
      sig { params(_address_state: T.nilable(String)).returns(T.nilable(String)) }
      def address_state=(_address_state); end
      # ZIP or postal code.
      sig { returns(T.nilable(String)) }
      def address_zip; end
      sig { params(_address_zip: T.nilable(String)).returns(T.nilable(String)) }
      def address_zip=(_address_zip); end
      # Two digit number representing the card’s expiration month.
      sig { returns(T.nilable(String)) }
      def exp_month; end
      sig { params(_exp_month: T.nilable(String)).returns(T.nilable(String)) }
      def exp_month=(_exp_month); end
      # Four digit number representing the card’s expiration year.
      sig { returns(T.nilable(String)) }
      def exp_year; end
      sig { params(_exp_year: T.nilable(String)).returns(T.nilable(String)) }
      def exp_year=(_exp_year); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
       }
      def metadata=(_metadata); end
      # Cardholder name.
      sig { returns(T.nilable(String)) }
      def name; end
      sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
      def name=(_name); end
      # Attribute for param field owner
      sig { returns(T.nilable(::Stripe::CustomerPaymentSourceService::UpdateParams::Owner)) }
      def owner; end
      sig {
        params(_owner: T.nilable(::Stripe::CustomerPaymentSourceService::UpdateParams::Owner)).returns(T.nilable(::Stripe::CustomerPaymentSourceService::UpdateParams::Owner))
       }
      def owner=(_owner); end
      sig {
        params(account_holder_name: T.nilable(String), account_holder_type: T.nilable(String), address_city: T.nilable(String), address_country: T.nilable(String), address_line1: T.nilable(String), address_line2: T.nilable(String), address_state: T.nilable(String), address_zip: T.nilable(String), exp_month: T.nilable(String), exp_year: T.nilable(String), expand: T.nilable(T::Array[String]), metadata: T.nilable(T.any(String, T::Hash[String, String])), name: T.nilable(String), owner: T.nilable(::Stripe::CustomerPaymentSourceService::UpdateParams::Owner)).void
       }
      def initialize(
        account_holder_name: nil,
        account_holder_type: nil,
        address_city: nil,
        address_country: nil,
        address_line1: nil,
        address_line2: nil,
        address_state: nil,
        address_zip: nil,
        exp_month: nil,
        exp_year: nil,
        expand: nil,
        metadata: nil,
        name: nil,
        owner: nil
      ); end
    end
    class DeleteParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    class VerifyParams < Stripe::RequestParams
      # Two positive integers, in *cents*, equal to the values of the microdeposits sent to the bank account.
      sig { returns(T.nilable(T::Array[Integer])) }
      def amounts; end
      sig { params(_amounts: T.nilable(T::Array[Integer])).returns(T.nilable(T::Array[Integer])) }
      def amounts=(_amounts); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      sig {
        params(amounts: T.nilable(T::Array[Integer]), expand: T.nilable(T::Array[String])).void
       }
      def initialize(amounts: nil, expand: nil); end
    end
    # When you create a new credit card, you must specify a customer or recipient on which to create it.
    #
    # If the card's owner has no default card, then the new card will become the default.
    # However, if the owner already has a default, then it will not change.
    # To change the default, you should [update the customer](https://docs.stripe.com/docs/api#update_customer) to have a new default_source.
    sig {
      params(customer: String, params: T.any(::Stripe::CustomerPaymentSourceService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(T.any(Stripe::Account, Stripe::BankAccount, Stripe::Card, Stripe::Source))
     }
    def create(customer, params = {}, opts = {}); end

    # Delete a specified source for a given customer.
    sig {
      params(customer: String, id: String, params: T.any(::Stripe::CustomerPaymentSourceService::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(T.any(Stripe::Account, Stripe::BankAccount, Stripe::Card, Stripe::Source))
     }
    def delete(customer, id, params = {}, opts = {}); end

    # List sources for a specified customer.
    sig {
      params(customer: String, params: T.any(::Stripe::CustomerPaymentSourceService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list(customer, params = {}, opts = {}); end

    # Retrieve a specified source for a given customer.
    sig {
      params(customer: String, id: String, params: T.any(::Stripe::CustomerPaymentSourceService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(T.any(Stripe::Account, Stripe::BankAccount, Stripe::Card, Stripe::Source))
     }
    def retrieve(customer, id, params = {}, opts = {}); end

    # Update a specified source for a given customer.
    sig {
      params(customer: String, id: String, params: T.any(::Stripe::CustomerPaymentSourceService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(T.any(Stripe::Account, Stripe::BankAccount, Stripe::Card, Stripe::Source))
     }
    def update(customer, id, params = {}, opts = {}); end

    # Verify a specified bank account for a given customer.
    sig {
      params(customer: String, id: String, params: T.any(::Stripe::CustomerPaymentSourceService::VerifyParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::BankAccount)
     }
    def verify(customer, id, params = {}, opts = {}); end
  end
end