# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class PayoutMethodsBankAccountSpecService < StripeService
        class RetrieveParams < Stripe::RequestParams
          # The countries to fetch the bank account spec for.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :countries
          sig { params(countries: T.nilable(T::Array[String])).void }
          def initialize(countries: nil); end
        end
        # Fetch the specifications for a set of countries to know which
        # credential fields are required, the validations for each fields, and how to translate these
        # country-specific fields to the generic fields in the PayoutMethodBankAccount type.
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::PayoutMethodsBankAccountSpecService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::MoneyManagement::PayoutMethodsBankAccountSpec)
         }
        def retrieve(params = {}, opts = {}); end
      end
    end
  end
end