# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class FinancialAddressCreateParams < ::Stripe::RequestParams
        # The ID of the FinancialAccount the new FinancialAddress should be associated with.
        sig { returns(String) }
        def financial_account; end
        sig { params(_financial_account: String).returns(String) }
        def financial_account=(_financial_account); end
        # The type of FinancialAddress details to provision.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        sig { params(financial_account: String, type: String).void }
        def initialize(financial_account: nil, type: nil); end
      end
    end
  end
end