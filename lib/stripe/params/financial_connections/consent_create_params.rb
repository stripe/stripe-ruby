# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module FinancialConnections
    class ConsentCreateParams < ::Stripe::RequestParams
      class AccountHolder < ::Stripe::RequestParams
        # The ID of the Account for whom the Consent is issued. Required when `type` is `account`.
        attr_accessor :account
        # The ID of the Customer for whom the Consent is issued. Required when `type` is `customer` unless `customer_account` is provided.
        attr_accessor :customer
        # The ID of an Account representing the Customer for whom the Consent is issued. Required when `type` is `customer` unless `customer` is provided.
        attr_accessor :customer_account
        # The type of account holder for whom the Consent is issued.
        attr_accessor :type

        def initialize(account: nil, customer: nil, customer_account: nil, type: nil)
          @account = account
          @customer = customer
          @customer_account = customer_account
          @type = type
        end
      end
      # The account holder for whom the Consent is issued.
      attr_accessor :account_holder
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # The customer's preferred locale for the consent text, expressed as a BCP 47 language tag. If omitted, Stripe uses the default locale.
      attr_accessor :locale

      def initialize(account_holder: nil, expand: nil, locale: nil)
        @account_holder = account_holder
        @expand = expand
        @locale = locale
      end
    end
  end
end
