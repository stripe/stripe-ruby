# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class PayoutMethodsBankAccountSpecService < StripeService
        # Fetch the specifications for a set of countries to know which
        # credential fields are required, the validations for each fields, and how to translate these
        # country-specific fields to the generic fields in the PayoutMethodBankAccount type.
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::PayoutMethodsBankAccountSpecRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::MoneyManagement::PayoutMethodsBankAccountSpec)
         }
        def retrieve(params = {}, opts = {}); end
      end
    end
  end
end