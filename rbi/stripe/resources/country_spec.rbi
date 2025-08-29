# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Stripe needs to collect certain pieces of information about each account
  # created. These requirements can differ depending on the account's country. The
  # Country Specs API makes these rules available to your integration.
  #
  # You can also view the information from this API call as [an online
  # guide](https://docs.stripe.com/docs/connect/required-verification-information).
  class CountrySpec < APIResource
    class VerificationFields < Stripe::StripeObject
      class Company < Stripe::StripeObject
        # Additional fields which are only required for some users.
        sig { returns(T::Array[String]) }
        def additional; end
        # Fields which every account must eventually provide.
        sig { returns(T::Array[String]) }
        def minimum; end
      end
      class Individual < Stripe::StripeObject
        # Additional fields which are only required for some users.
        sig { returns(T::Array[String]) }
        def additional; end
        # Fields which every account must eventually provide.
        sig { returns(T::Array[String]) }
        def minimum; end
      end
      # Attribute for field company
      sig { returns(Company) }
      def company; end
      # Attribute for field individual
      sig { returns(Individual) }
      def individual; end
    end
    # The default currency for this country. This applies to both payment methods and bank accounts.
    sig { returns(String) }
    def default_currency; end
    # Unique identifier for the object. Represented as the ISO country code for this country.
    sig { returns(String) }
    def id; end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
    # Currencies that can be accepted in the specific country (for transfers).
    sig { returns(T::Hash[String, T::Array[String]]) }
    def supported_bank_account_currencies; end
    # Currencies that can be accepted in the specified country (for payments).
    sig { returns(T::Array[String]) }
    def supported_payment_currencies; end
    # Payment methods available in the specified country. You may need to enable some payment methods (e.g., [ACH](https://stripe.com/docs/ach)) on your account before they appear in this list. The `stripe` payment method refers to [charging through your platform](https://stripe.com/docs/connect/destination-charges).
    sig { returns(T::Array[String]) }
    def supported_payment_methods; end
    # Countries that can accept transfers from the specified country.
    sig { returns(T::Array[String]) }
    def supported_transfer_countries; end
    # Attribute for field verification_fields
    sig { returns(VerificationFields) }
    def verification_fields; end
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
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      def starting_after; end
      sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
      def starting_after=(_starting_after); end
      sig {
        params(ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
       }
      def initialize(ending_before: nil, expand: nil, limit: nil, starting_after: nil); end
    end
    # Lists all Country Spec objects available in the API.
    sig {
      params(params: T.any(::Stripe::CountrySpec::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def self.list(params = {}, opts = {}); end
  end
end