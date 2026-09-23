# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module FinancialConnections
    class ConsentCreateParams < ::Stripe::RequestParams
      class AccountHolder < ::Stripe::RequestParams
        # The ID of the Account for whom the Consent is issued. Required when `type` is `account`.
        sig { returns(T.nilable(String)) }
        def account; end
        sig { params(_account: T.nilable(String)).returns(T.nilable(String)) }
        def account=(_account); end
        # The ID of the Customer for whom the Consent is issued. Required when `type` is `customer` unless `customer_account` is provided.
        sig { returns(T.nilable(String)) }
        def customer; end
        sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
        def customer=(_customer); end
        # The ID of an Account representing the Customer for whom the Consent is issued. Required when `type` is `customer` unless `customer` is provided.
        sig { returns(T.nilable(String)) }
        def customer_account; end
        sig { params(_customer_account: T.nilable(String)).returns(T.nilable(String)) }
        def customer_account=(_customer_account); end
        # The type of account holder for whom the Consent is issued.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        sig {
          params(account: T.nilable(String), customer: T.nilable(String), customer_account: T.nilable(String), type: String).void
         }
        def initialize(account: nil, customer: nil, customer_account: nil, type: nil); end
      end
      # The account holder for whom the Consent is issued.
      sig { returns(::Stripe::FinancialConnections::ConsentCreateParams::AccountHolder) }
      def account_holder; end
      sig {
        params(_account_holder: ::Stripe::FinancialConnections::ConsentCreateParams::AccountHolder).returns(::Stripe::FinancialConnections::ConsentCreateParams::AccountHolder)
       }
      def account_holder=(_account_holder); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # The customer's preferred locale for the consent text, expressed as a BCP 47 language tag. If omitted, Stripe uses the default locale.
      sig { returns(T.nilable(String)) }
      def locale; end
      sig { params(_locale: T.nilable(String)).returns(T.nilable(String)) }
      def locale=(_locale); end
      sig {
        params(account_holder: ::Stripe::FinancialConnections::ConsentCreateParams::AccountHolder, expand: T.nilable(T::Array[String]), locale: T.nilable(String)).void
       }
      def initialize(account_holder: nil, expand: nil, locale: nil); end
    end
  end
end