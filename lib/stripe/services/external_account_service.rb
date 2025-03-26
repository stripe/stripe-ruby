# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class ExternalAccountService < StripeService
    class DeleteParams < Stripe::RequestParams
    end

    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

    class UpdateParams < Stripe::RequestParams
      class Documents < Stripe::RequestParams
        class BankAccountOwnershipVerification < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          attr_accessor :files

          def initialize(files: nil)
            @files = files
          end
        end
        # One or more documents that support the [Bank account ownership verification](https://support.stripe.com/questions/bank-account-ownership-verification) requirement. Must be a document associated with the bank account that displays the last 4 digits of the account number, either a statement or a check.
        attr_accessor :bank_account_ownership_verification

        def initialize(bank_account_ownership_verification: nil)
          @bank_account_ownership_verification = bank_account_ownership_verification
        end
      end
      # The name of the person or business that owns the bank account.
      attr_accessor :account_holder_name
      # The type of entity that holds the account. This can be either `individual` or `company`.
      attr_accessor :account_holder_type
      # The bank account type. This can only be `checking` or `savings` in most countries. In Japan, this can only be `futsu` or `toza`.
      attr_accessor :account_type
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
      # When set to true, this becomes the default external account for its currency.
      attr_accessor :default_for_currency
      # Documents that may be submitted to satisfy various informational requests.
      attr_accessor :documents
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

      def initialize(
        account_holder_name: nil,
        account_holder_type: nil,
        account_type: nil,
        address_city: nil,
        address_country: nil,
        address_line1: nil,
        address_line2: nil,
        address_state: nil,
        address_zip: nil,
        default_for_currency: nil,
        documents: nil,
        exp_month: nil,
        exp_year: nil,
        expand: nil,
        metadata: nil,
        name: nil
      )
        @account_holder_name = account_holder_name
        @account_holder_type = account_holder_type
        @account_type = account_type
        @address_city = address_city
        @address_country = address_country
        @address_line1 = address_line1
        @address_line2 = address_line2
        @address_state = address_state
        @address_zip = address_zip
        @default_for_currency = default_for_currency
        @documents = documents
        @exp_month = exp_month
        @exp_year = exp_year
        @expand = expand
        @metadata = metadata
        @name = name
      end
    end

    class ListParams < Stripe::RequestParams
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # Filter external accounts according to a particular object type.
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
      # When set to true, or if this is the first external account added in this currency, this account becomes the default external account for its currency.
      attr_accessor :default_for_currency
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Either a token, like the ones returned by [Stripe.js](https://stripe.com/docs/js), or a dictionary containing a user’s external account details (with the options shown below).
      attr_accessor :external_account
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata

      def initialize(default_for_currency: nil, expand: nil, external_account: nil, metadata: nil)
        @default_for_currency = default_for_currency
        @expand = expand
        @external_account = external_account
        @metadata = metadata
      end
    end

    # Create an external account for a given connected account.
    def create(params = {}, opts = {})
      request(
        method: :post,
        path: "/v1/external_accounts",
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Delete a specified external account for a given account.
    def delete(id, params = {}, opts = {})
      request(
        method: :delete,
        path: format("/v1/external_accounts/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # List external accounts for an account.
    def list(params = {}, opts = {})
      request(
        method: :get,
        path: "/v1/external_accounts",
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieve a specified external account for a given account.
    def retrieve(id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/external_accounts/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Updates the metadata, account holder name, account holder type of a bank account belonging to
    # a connected account and optionally sets it as the default for its currency. Other bank account
    # details are not editable by design.
    #
    # You can only update bank accounts when [account.controller.requirement_collection is application, which includes <a href="/connect/custom-accounts">Custom accounts](https://stripe.com/api/accounts/object#account_object-controller-requirement_collection).
    #
    # You can re-enable a disabled bank account by performing an update call without providing any
    # arguments or changes.
    def update(id, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/external_accounts/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
