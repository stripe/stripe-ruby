# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class PayoutMethodsBankAccountSpecRetrieveParams < Stripe::RequestParams
        # The countries to fetch the bank account spec for.
        sig { returns(T.nilable(T::Array[String])) }
        def countries; end
        sig { params(_countries: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def countries=(_countries); end
        sig { params(countries: T.nilable(T::Array[String])).void }
        def initialize(countries: nil); end
      end
    end
  end
end