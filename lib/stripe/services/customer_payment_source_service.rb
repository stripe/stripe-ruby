# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class CustomerPaymentSourceService < StripeService
    class ListParams < Stripe::RequestParams
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # Filter sources according to a particular object type.
      attr_accessor :object
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after

      def initialize(ending_before: nil, expand: nil, limit: nil, object: nil, starting_after: nil)
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @object = object
        @starting_after = starting_after
      end
    end

    class CreateParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # Please refer to full [documentation](https://stripe.com/docs/api) instead.
      attr_accessor :source
      # Attribute for param field validate
      attr_accessor :validate

      def initialize(expand: nil, metadata: nil, source: nil, validate: nil)
        @expand = expand
        @metadata = metadata
        @source = source
        @validate = validate
      end
    end

    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

    class UpdateParams < Stripe::RequestParams
      class Owner < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_accessor :country
          # Address line 1 (e.g., street, PO Box, or company name).
          attr_accessor :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          attr_accessor :line2
          # ZIP or postal code.
          attr_accessor :postal_code
          # State, county, province, or region.
          attr_accessor :state

          def initialize(
            city: nil,
            country: nil,
            line1: nil,
            line2: nil,
            postal_code: nil,
            state: nil
          )
            @city = city
            @country = country
            @line1 = line1
            @line2 = line2
            @postal_code = postal_code
            @state = state
          end
        end
        # Owner's address.
        attr_accessor :address
        # Owner's email address.
        attr_accessor :email
        # Owner's full name.
        attr_accessor :name
        # Owner's phone number.
        attr_accessor :phone

        def initialize(address: nil, email: nil, name: nil, phone: nil)
          @address = address
          @email = email
          @name = name
          @phone = phone
        end
      end
      # The name of the person or business that owns the bank account.
      attr_accessor :account_holder_name
      # The type of entity that holds the account. This can be either `individual` or `company`.
      attr_accessor :account_holder_type
      # City/District/Suburb/Town/Village.
      attr_accessor :address_city
      # Billing address country, if provided when creating card.
      attr_accessor :address_country
      # Address line 1 (Street address/PO Box/Company name).
      attr_accessor :address_line1
      # Address line 2 (Apartment/Suite/Unit/Building).
      attr_accessor :address_line2
      # State/County/Province/Region.
      attr_accessor :address_state
      # ZIP or postal code.
      attr_accessor :address_zip
      # Two digit number representing the card’s expiration month.
      attr_accessor :exp_month
      # Four digit number representing the card’s expiration year.
      attr_accessor :exp_year
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # Cardholder name.
      attr_accessor :name
      # Attribute for param field owner
      attr_accessor :owner

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
      )
        @account_holder_name = account_holder_name
        @account_holder_type = account_holder_type
        @address_city = address_city
        @address_country = address_country
        @address_line1 = address_line1
        @address_line2 = address_line2
        @address_state = address_state
        @address_zip = address_zip
        @exp_month = exp_month
        @exp_year = exp_year
        @expand = expand
        @metadata = metadata
        @name = name
        @owner = owner
      end
    end

    class DeleteParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

    class VerifyParams < Stripe::RequestParams
      # Two positive integers, in *cents*, equal to the values of the microdeposits sent to the bank account.
      attr_accessor :amounts
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(amounts: nil, expand: nil)
        @amounts = amounts
        @expand = expand
      end
    end

    # When you create a new credit card, you must specify a customer or recipient on which to create it.
    #
    # If the card's owner has no default card, then the new card will become the default.
    # However, if the owner already has a default, then it will not change.
    # To change the default, you should [update the customer](https://stripe.com/docs/api#update_customer) to have a new default_source.
    def create(customer, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/customers/%<customer>s/sources", { customer: CGI.escape(customer) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Delete a specified source for a given customer.
    def delete(customer, id, params = {}, opts = {})
      request(
        method: :delete,
        path: format("/v1/customers/%<customer>s/sources/%<id>s", { customer: CGI.escape(customer), id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # List sources for a specified customer.
    def list(customer, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/customers/%<customer>s/sources", { customer: CGI.escape(customer) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieve a specified source for a given customer.
    def retrieve(customer, id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/customers/%<customer>s/sources/%<id>s", { customer: CGI.escape(customer), id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Update a specified source for a given customer.
    def update(customer, id, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/customers/%<customer>s/sources/%<id>s", { customer: CGI.escape(customer), id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Verify a specified bank account for a given customer.
    def verify(customer, id, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/customers/%<customer>s/sources/%<id>s/verify", { customer: CGI.escape(customer), id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
