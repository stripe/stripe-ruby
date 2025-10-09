# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class FinancialAddressCreateParams < ::Stripe::RequestParams
        # The ID of the FinancialAccount the new FinancialAddress should be associated with.
        attr_accessor :financial_account
        # The type of FinancialAddress details to provision.
        attr_accessor :type

        def initialize(financial_account: nil, type: nil)
          @financial_account = financial_account
          @type = type
        end
      end
    end
  end
end
