# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class CustomerPaymentSourceService < StripeService
    class ListParams < Stripe::RequestParams
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(String) }
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(Integer) }
      attr_accessor :limit
      # Filter sources according to a particular object type.
      sig { returns(String) }
      attr_accessor :object
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(String) }
      attr_accessor :starting_after
      sig {
        params(ending_before: String, expand: T::Array[String], limit: Integer, object: String, starting_after: String).void
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
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T::Hash[String, String]) }
      attr_accessor :metadata
      # Please refer to full [documentation](https://stripe.com/docs/api) instead.
      sig { returns(String) }
      attr_accessor :source
      # Attribute for param field validate
      sig { returns(T::Boolean) }
      attr_accessor :validate
      sig {
        params(expand: T::Array[String], metadata: T::Hash[String, String], source: String, validate: T::Boolean).void
       }
      def initialize(expand: nil, metadata: nil, source: nil, validate: nil); end
    end
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      sig { params(expand: T::Array[String]).void }
      def initialize(expand: nil); end
    end
    class UpdateParams < Stripe::RequestParams
      class Owner < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          sig { returns(String) }
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(String) }
          attr_accessor :country
          # Address line 1 (e.g., street, PO Box, or company name).
          sig { returns(String) }
          attr_accessor :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          sig { returns(String) }
          attr_accessor :line2
          # ZIP or postal code.
          sig { returns(String) }
          attr_accessor :postal_code
          # State, county, province, or region.
          sig { returns(String) }
          attr_accessor :state
          sig {
            params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String).void
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
        sig { returns(::Stripe::CustomerPaymentSourceService::UpdateParams::Owner::Address) }
        attr_accessor :address
        # Owner's email address.
        sig { returns(String) }
        attr_accessor :email
        # Owner's full name.
        sig { returns(String) }
        attr_accessor :name
        # Owner's phone number.
        sig { returns(String) }
        attr_accessor :phone
        sig {
          params(address: ::Stripe::CustomerPaymentSourceService::UpdateParams::Owner::Address, email: String, name: String, phone: String).void
         }
        def initialize(address: nil, email: nil, name: nil, phone: nil); end
      end
      # The name of the person or business that owns the bank account.
      sig { returns(String) }
      attr_accessor :account_holder_name
      # The type of entity that holds the account. This can be either `individual` or `company`.
      sig { returns(String) }
      attr_accessor :account_holder_type
      # City/District/Suburb/Town/Village.
      sig { returns(String) }
      attr_accessor :address_city
      # Billing address country, if provided when creating card.
      sig { returns(String) }
      attr_accessor :address_country
      # Address line 1 (Street address/PO Box/Company name).
      sig { returns(String) }
      attr_accessor :address_line1
      # Address line 2 (Apartment/Suite/Unit/Building).
      sig { returns(String) }
      attr_accessor :address_line2
      # State/County/Province/Region.
      sig { returns(String) }
      attr_accessor :address_state
      # ZIP or postal code.
      sig { returns(String) }
      attr_accessor :address_zip
      # Two digit number representing the card’s expiration month.
      sig { returns(String) }
      attr_accessor :exp_month
      # Four digit number representing the card’s expiration year.
      sig { returns(String) }
      attr_accessor :exp_year
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_accessor :metadata
      # Cardholder name.
      sig { returns(String) }
      attr_accessor :name
      # Attribute for param field owner
      sig { returns(::Stripe::CustomerPaymentSourceService::UpdateParams::Owner) }
      attr_accessor :owner
      sig {
        params(account_holder_name: String, account_holder_type: String, address_city: String, address_country: String, address_line1: String, address_line2: String, address_state: String, address_zip: String, exp_month: String, exp_year: String, expand: T::Array[String], metadata: T.nilable(T::Hash[String, String]), name: String, owner: ::Stripe::CustomerPaymentSourceService::UpdateParams::Owner).void
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
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      sig { params(expand: T::Array[String]).void }
      def initialize(expand: nil); end
    end
    class VerifyParams < Stripe::RequestParams
      # Two positive integers, in *cents*, equal to the values of the microdeposits sent to the bank account.
      sig { returns(T::Array[Integer]) }
      attr_accessor :amounts
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      sig { params(amounts: T::Array[Integer], expand: T::Array[String]).void }
      def initialize(amounts: nil, expand: nil); end
    end
    # When you create a new credit card, you must specify a customer or recipient on which to create it.
    #
    # If the card's owner has no default card, then the new card will become the default.
    # However, if the owner already has a default, then it will not change.
    # To change the default, you should [update the customer](https://stripe.com/docs/api#update_customer) to have a new default_source.
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