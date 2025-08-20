# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class AccountExternalAccountService < StripeService
    class DeleteParams < Stripe::RequestParams; end
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    class UpdateParams < Stripe::RequestParams
      class Documents < Stripe::RequestParams
        class BankAccountOwnershipVerification < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :files
          sig { params(files: T.nilable(T::Array[String])).void }
          def initialize(files: nil); end
        end
        # One or more documents that support the [Bank account ownership verification](https://support.stripe.com/questions/bank-account-ownership-verification) requirement. Must be a document associated with the bank account that displays the last 4 digits of the account number, either a statement or a check.
        sig {
          returns(T.nilable(::Stripe::AccountExternalAccountService::UpdateParams::Documents::BankAccountOwnershipVerification))
         }
        attr_accessor :bank_account_ownership_verification
        sig {
          params(bank_account_ownership_verification: T.nilable(::Stripe::AccountExternalAccountService::UpdateParams::Documents::BankAccountOwnershipVerification)).void
         }
        def initialize(bank_account_ownership_verification: nil); end
      end
      # The name of the person or business that owns the bank account.
      sig { returns(T.nilable(String)) }
      attr_accessor :account_holder_name
      # The type of entity that holds the account. This can be either `individual` or `company`.
      sig { returns(T.nilable(T.any(String, String))) }
      attr_accessor :account_holder_type
      # The bank account type. This can only be `checking` or `savings` in most countries. In Japan, this can only be `futsu` or `toza`.
      sig { returns(T.nilable(String)) }
      attr_accessor :account_type
      # City/District/Suburb/Town/Village.
      sig { returns(T.nilable(String)) }
      attr_accessor :address_city
      # Billing address country, if provided when creating card.
      sig { returns(T.nilable(String)) }
      attr_accessor :address_country
      # Address line 1 (Street address/PO Box/Company name).
      sig { returns(T.nilable(String)) }
      attr_accessor :address_line1
      # Address line 2 (Apartment/Suite/Unit/Building).
      sig { returns(T.nilable(String)) }
      attr_accessor :address_line2
      # State/County/Province/Region.
      sig { returns(T.nilable(String)) }
      attr_accessor :address_state
      # ZIP or postal code.
      sig { returns(T.nilable(String)) }
      attr_accessor :address_zip
      # When set to true, this becomes the default external account for its currency.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :default_for_currency
      # Documents that may be submitted to satisfy various informational requests.
      sig { returns(T.nilable(::Stripe::AccountExternalAccountService::UpdateParams::Documents)) }
      attr_accessor :documents
      # Two digit number representing the card’s expiration month.
      sig { returns(T.nilable(String)) }
      attr_accessor :exp_month
      # Four digit number representing the card’s expiration year.
      sig { returns(T.nilable(String)) }
      attr_accessor :exp_year
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      attr_accessor :metadata
      # Cardholder name.
      sig { returns(T.nilable(String)) }
      attr_accessor :name
      sig {
        params(account_holder_name: T.nilable(String), account_holder_type: T.nilable(T.any(String, String)), account_type: T.nilable(String), address_city: T.nilable(String), address_country: T.nilable(String), address_line1: T.nilable(String), address_line2: T.nilable(String), address_state: T.nilable(String), address_zip: T.nilable(String), default_for_currency: T.nilable(T::Boolean), documents: T.nilable(::Stripe::AccountExternalAccountService::UpdateParams::Documents), exp_month: T.nilable(String), exp_year: T.nilable(String), expand: T.nilable(T::Array[String]), metadata: T.nilable(T.any(String, T::Hash[String, String])), name: T.nilable(String)).void
       }
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
      ); end
    end
    class ListParams < Stripe::RequestParams
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :limit
      # Filter external accounts according to a particular object type.
      sig { returns(T.nilable(String)) }
      attr_accessor :object
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :starting_after
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
      class BankAccount < Stripe::RequestParams
        # Attribute for param field object
        sig { returns(String) }
        attr_accessor :object
        # The name of the person or business that owns the bank account.This field is required when attaching the bank account to a `Customer` object.
        sig { returns(T.nilable(String)) }
        attr_accessor :account_holder_name
        # The type of entity that holds the account. It can be `company` or `individual`. This field is required when attaching the bank account to a `Customer` object.
        sig { returns(T.nilable(String)) }
        attr_accessor :account_holder_type
        # The account number for the bank account, in string form. Must be a checking account.
        sig { returns(String) }
        attr_accessor :account_number
        # The country in which the bank account is located.
        sig { returns(String) }
        attr_accessor :country
        # The currency the bank account is in. This must be a country/currency pairing that [Stripe supports.](docs/payouts)
        sig { returns(T.nilable(String)) }
        attr_accessor :currency
        # The routing number, sort code, or other country-appropriate institution number for the bank account. For US bank accounts, this is required and should be the ACH routing number, not the wire routing number. If you are providing an IBAN for `account_number`, this field is not required.
        sig { returns(T.nilable(String)) }
        attr_accessor :routing_number
        sig {
          params(object: String, account_holder_name: T.nilable(String), account_holder_type: T.nilable(String), account_number: String, country: String, currency: T.nilable(String), routing_number: T.nilable(String)).void
         }
        def initialize(
          object: nil,
          account_holder_name: nil,
          account_holder_type: nil,
          account_number: nil,
          country: nil,
          currency: nil,
          routing_number: nil
        ); end
      end
      class Card < Stripe::RequestParams
        # Attribute for param field object
        sig { returns(String) }
        attr_accessor :object
        # Attribute for param field address_city
        sig { returns(T.nilable(String)) }
        attr_accessor :address_city
        # Attribute for param field address_country
        sig { returns(T.nilable(String)) }
        attr_accessor :address_country
        # Attribute for param field address_line1
        sig { returns(T.nilable(String)) }
        attr_accessor :address_line1
        # Attribute for param field address_line2
        sig { returns(T.nilable(String)) }
        attr_accessor :address_line2
        # Attribute for param field address_state
        sig { returns(T.nilable(String)) }
        attr_accessor :address_state
        # Attribute for param field address_zip
        sig { returns(T.nilable(String)) }
        attr_accessor :address_zip
        # Attribute for param field currency
        sig { returns(T.nilable(String)) }
        attr_accessor :currency
        # Attribute for param field cvc
        sig { returns(T.nilable(String)) }
        attr_accessor :cvc
        # Attribute for param field exp_month
        sig { returns(Integer) }
        attr_accessor :exp_month
        # Attribute for param field exp_year
        sig { returns(Integer) }
        attr_accessor :exp_year
        # Attribute for param field name
        sig { returns(T.nilable(String)) }
        attr_accessor :name
        # Attribute for param field number
        sig { returns(String) }
        attr_accessor :number
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        sig {
          params(object: String, address_city: T.nilable(String), address_country: T.nilable(String), address_line1: T.nilable(String), address_line2: T.nilable(String), address_state: T.nilable(String), address_zip: T.nilable(String), currency: T.nilable(String), cvc: T.nilable(String), exp_month: Integer, exp_year: Integer, name: T.nilable(String), number: String, metadata: T.nilable(T::Hash[String, String])).void
         }
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
        ); end
      end
      class CardToken < Stripe::RequestParams
        # Attribute for param field object
        sig { returns(String) }
        attr_accessor :object
        # Attribute for param field currency
        sig { returns(T.nilable(String)) }
        attr_accessor :currency
        # Attribute for param field token
        sig { returns(String) }
        attr_accessor :token
        sig { params(object: String, currency: T.nilable(String), token: String).void }
        def initialize(object: nil, currency: nil, token: nil); end
      end
      # When set to true, or if this is the first external account added in this currency, this account becomes the default external account for its currency.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :default_for_currency
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # A token, like the ones returned by [Stripe.js](https://stripe.com/docs/js) or a dictionary containing a user's external account details (with the options shown below). Please refer to full [documentation](https://stripe.com/docs/api/external_accounts) instead.
      sig {
        returns(T.any(String, ::Stripe::AccountExternalAccountService::CreateParams::Card, ::Stripe::AccountExternalAccountService::CreateParams::BankAccount, ::Stripe::AccountExternalAccountService::CreateParams::CardToken))
       }
      attr_accessor :external_account
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_accessor :metadata
      sig {
        params(default_for_currency: T.nilable(T::Boolean), expand: T.nilable(T::Array[String]), external_account: T.any(String, ::Stripe::AccountExternalAccountService::CreateParams::Card, ::Stripe::AccountExternalAccountService::CreateParams::BankAccount, ::Stripe::AccountExternalAccountService::CreateParams::CardToken), metadata: T.nilable(T::Hash[String, String])).void
       }
      def initialize(
        default_for_currency: nil,
        expand: nil,
        external_account: nil,
        metadata: nil
      ); end
    end
    # Create an external account for a given account.
    sig {
      params(account: String, params: T.any(::Stripe::AccountExternalAccountService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(T.any(Stripe::BankAccount, Stripe::Card))
     }
    def create(account, params = {}, opts = {}); end

    # Delete a specified external account for a given account.
    sig {
      params(account: String, id: String, params: T.any(::Stripe::AccountExternalAccountService::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(T.any(Stripe::BankAccount, Stripe::Card))
     }
    def delete(account, id, params = {}, opts = {}); end

    # List external accounts for an account.
    sig {
      params(account: String, params: T.any(::Stripe::AccountExternalAccountService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list(account, params = {}, opts = {}); end

    # Retrieve a specified external account for a given account.
    sig {
      params(account: String, id: String, params: T.any(::Stripe::AccountExternalAccountService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(T.any(Stripe::BankAccount, Stripe::Card))
     }
    def retrieve(account, id, params = {}, opts = {}); end

    # Updates the metadata, account holder name, account holder type of a bank account belonging to
    # a connected account and optionally sets it as the default for its currency. Other bank account
    # details are not editable by design.
    #
    # You can only update bank accounts when [account.controller.requirement_collection is application, which includes <a href="/connect/custom-accounts">Custom accounts](https://docs.stripe.com/api/accounts/object#account_object-controller-requirement_collection).
    #
    # You can re-enable a disabled bank account by performing an update call without providing any
    # arguments or changes.
    sig {
      params(account: String, id: String, params: T.any(::Stripe::AccountExternalAccountService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(T.any(Stripe::BankAccount, Stripe::Card))
     }
    def update(account, id, params = {}, opts = {}); end
  end
end