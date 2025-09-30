# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class PayoutMethodsBankAccountSpecRetrieveParams < Stripe::RequestParams
        # The countries to fetch the bank account spec for.
        attr_accessor :countries

        def initialize(countries: nil)
          @countries = countries
        end
      end
    end
  end
end
