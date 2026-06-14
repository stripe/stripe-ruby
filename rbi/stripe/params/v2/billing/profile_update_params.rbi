# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class ProfileUpdateParams < ::Stripe::RequestParams
        # The ID of the payment method object.
        sig { returns(T.nilable(String)) }
        def default_payment_method; end
        sig { params(_default_payment_method: T.nilable(String)).returns(T.nilable(String)) }
        def default_payment_method=(_default_payment_method); end
        # A customer-facing name for the billing profile.
        # Maximum length of 250 characters.
        # To remove the display_name from the object, set it to null in the request.
        sig { returns(T.nilable(String)) }
        def display_name; end
        sig { params(_display_name: T.nilable(String)).returns(T.nilable(String)) }
        def display_name=(_display_name); end
        # An internal key you can use to search for a particular billing profile. It must be unique among billing profiles for a given customer.
        # Maximum length of 200 characters.
        # To remove the lookup_key from the object, set it to null in the request.
        sig { returns(T.nilable(String)) }
        def lookup_key; end
        sig { params(_lookup_key: T.nilable(String)).returns(T.nilable(String)) }
        def lookup_key=(_lookup_key); end
        # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, T.nilable(String)])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, T.nilable(String)])).returns(T.nilable(T::Hash[String, T.nilable(String)]))
         }
        def metadata=(_metadata); end
        sig {
          params(default_payment_method: T.nilable(String), display_name: T.nilable(String), lookup_key: T.nilable(String), metadata: T.nilable(T::Hash[String, T.nilable(String)])).void
         }
        def initialize(
          default_payment_method: nil,
          display_name: nil,
          lookup_key: nil,
          metadata: nil
        ); end
      end
    end
  end
end