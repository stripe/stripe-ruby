# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class FinancialAddressRetrieveParams < Stripe::RequestParams
        # Open Enum. A list of fields to reveal in the FinancialAddresses returned.
        attr_accessor :include

        def initialize(include: nil)
          @include = include
        end
      end
    end
  end
end
