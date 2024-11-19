# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Stripe needs to collect certain pieces of information about each account
  # created. These requirements can differ depending on the account's country. The
  # Country Specs API makes these rules available to your integration.
  #
  # You can also view the information from this API call as [an online
  # guide](https://stripe.com/docs/connect/required-verification-information).
  class CountrySpec < APIResource
    class VerificationFields < Stripe::StripeObject
      class Company < Stripe::StripeObject
        sig { returns(T::Array[String]) }
        attr_reader :additional
        sig { returns(T::Array[String]) }
        attr_reader :minimum
      end
      class Individual < Stripe::StripeObject
        sig { returns(T::Array[String]) }
        attr_reader :additional
        sig { returns(T::Array[String]) }
        attr_reader :minimum
      end
      sig { returns(Company) }
      attr_reader :company
      sig { returns(Individual) }
      attr_reader :individual
    end
    sig { returns(String) }
    # The default currency for this country. This applies to both payment methods and bank accounts.
    attr_reader :default_currency
    sig { returns(String) }
    # Unique identifier for the object. Represented as the ISO country code for this country.
    attr_reader :id
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(T::Hash[String, T::Array[String]]) }
    # Currencies that can be accepted in the specific country (for transfers).
    attr_reader :supported_bank_account_currencies
    sig { returns(T::Array[String]) }
    # Currencies that can be accepted in the specified country (for payments).
    attr_reader :supported_payment_currencies
    sig { returns(T::Array[String]) }
    # Payment methods available in the specified country. You may need to enable some payment methods (e.g., [ACH](https://stripe.com/docs/ach)) on your account before they appear in this list. The `stripe` payment method refers to [charging through your platform](https://stripe.com/docs/connect/destination-charges).
    attr_reader :supported_payment_methods
    sig { returns(T::Array[String]) }
    # Countries that can accept transfers from the specified country.
    attr_reader :supported_transfer_countries
    sig { returns(VerificationFields) }
    # Attribute for field verification_fields
    attr_reader :verification_fields
  end
end