# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class AccountExternalAccountService < StripeService
    class DeleteParams < Stripe::RequestParams; end

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
      class BankAccount < Stripe::RequestParams
        # Attribute for param field object
        attr_accessor :object
        # The name of the person or business that owns the bank account.This field is required when attaching the bank account to a `Customer` object.
        attr_accessor :account_holder_name
        # The type of entity that holds the account. It can be `company` or `individual`. This field is required when attaching the bank account to a `Customer` object.
        attr_accessor :account_holder_type
        # The account number for the bank account, in string form. Must be a checking account.
        attr_accessor :account_number
        # The country in which the bank account is located.
        attr_accessor :country
        # The currency the bank account is in. This must be a country/currency pairing that [Stripe supports.](docs/payouts)
        attr_accessor :currency
        # The routing number, sort code, or other country-appropriate institution number for the bank account. For US bank accounts, this is required and should be the ACH routing number, not the wire routing number. If you are providing an IBAN for `account_number`, this field is not required.
        attr_accessor :routing_number

        def initialize(
          object: nil,
          account_holder_name: nil,
          account_holder_type: nil,
          account_number: nil,
          country: nil,
          currency: nil,
          routing_number: nil
        )
          @object = object
          @account_holder_name = account_holder_name
          @account_holder_type = account_holder_type
          @account_number = account_number
          @country = country
          @currency = currency
          @routing_number = routing_number
        end
      end

      class Card < Stripe::RequestParams
        # Attribute for param field object
        attr_accessor :object
        # Attribute for param field address_city
        attr_accessor :address_city
        # Attribute for param field address_country
        attr_accessor :address_country
        # Attribute for param field address_line1
        attr_accessor :address_line1
        # Attribute for param field address_line2
        attr_accessor :address_line2
        # Attribute for param field address_state
        attr_accessor :address_state
        # Attribute for param field address_zip
        attr_accessor :address_zip
        # Attribute for param field currency
        attr_accessor :currency
        # Attribute for param field cvc
        attr_accessor :cvc
        # Attribute for param field exp_month
        attr_accessor :exp_month
        # Attribute for param field exp_year
        attr_accessor :exp_year
        # Attribute for param field name
        attr_accessor :name
        # Attribute for param field number
        attr_accessor :number
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        attr_accessor :metadata

        def initialize(
          object: nil,
          address_city: nil,
          address_country: nil,
          address_line1: nil,
          address_line2: nil,
          address_state: nil,
          address_zip: nil,
          currency: nil,
          cvc: nil,
          exp_month: nil,
          exp_year: nil,
          name: nil,
          number: nil,
          metadata: nil
        )
          @object = object
          @address_city = address_city
          @address_country = address_country
          @address_line1 = address_line1
          @address_line2 = address_line2
          @address_state = address_state
          @address_zip = address_zip
          @currency = currency
          @cvc = cvc
          @exp_month = exp_month
          @exp_year = exp_year
          @name = name
          @number = number
          @metadata = metadata
        end
      end

      class CardToken < Stripe::RequestParams
        # Attribute for param field object
        attr_accessor :object
        # Attribute for param field currency
        attr_accessor :currency
        # Attribute for param field token
        attr_accessor :token

        def initialize(object: nil, currency: nil, token: nil)
          @object = object
          @currency = currency
          @token = token
        end
      end
      # When set to true, or if this is the first external account added in this currency, this account becomes the default external account for its currency.
      attr_accessor :default_for_currency
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A token, like the ones returned by [Stripe.js](https://stripe.com/docs/js) or a dictionary containing a user's external account details (with the options shown below). Please refer to full [documentation](https://stripe.com/docs/api/external_accounts) instead.
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

    # Create an external account for a given account.
    def create(account, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/accounts/%<account>s/external_accounts", { account: CGI.escape(account) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Delete a specified external account for a given account.
    def delete(account, id, params = {}, opts = {})
      request(
        method: :delete,
        path: format("/v1/accounts/%<account>s/external_accounts/%<id>s", { account: CGI.escape(account), id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # List external accounts for an account.
    def list(account, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/accounts/%<account>s/external_accounts", { account: CGI.escape(account) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieve a specified external account for a given account.
    def retrieve(account, id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/accounts/%<account>s/external_accounts/%<id>s", { account: CGI.escape(account), id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Updates the metadata, account holder name, account holder type of a bank account belonging to
    # a connected account and optionally sets it as the default for its currency. Other bank account
    # details are not editable by design.
    #
    # You can only update bank accounts when [account.controller.requirement_collection is application, which includes <a href="/connect/custom-accounts">Custom accounts](https://docs.stripe.com/api/accounts/object#account_object-controller-requirement_collection).
    #
    # You can re-enable a disabled bank account by performing an update call without providing any
    # arguments or changes.
    def update(account, id, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/accounts/%<account>s/external_accounts/%<id>s", { account: CGI.escape(account), id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
