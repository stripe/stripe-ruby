# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class FinancialAddressCreateParams < ::Stripe::RequestParams
        class SepaBankAccount < ::Stripe::RequestParams
          # The originating country of the SEPA Bank account.
          sig { returns(String) }
          def country; end
          sig { params(_country: String).returns(String) }
          def country=(_country); end
          sig { params(country: String).void }
          def initialize(country: nil); end
        end
        # The ID of the FinancialAccount the new FinancialAddress should be associated with.
        sig { returns(String) }
        def financial_account; end
        sig { params(_financial_account: String).returns(String) }
        def financial_account=(_financial_account); end
        # Optional SEPA Bank account options, used to configure the type of SEPA Bank account to create, such as the originating country.
        sig {
          returns(T.nilable(V2::MoneyManagement::FinancialAddressCreateParams::SepaBankAccount))
         }
        def sepa_bank_account; end
        sig {
          params(_sepa_bank_account: T.nilable(V2::MoneyManagement::FinancialAddressCreateParams::SepaBankAccount)).returns(T.nilable(V2::MoneyManagement::FinancialAddressCreateParams::SepaBankAccount))
         }
        def sepa_bank_account=(_sepa_bank_account); end
        # The type of FinancialAddress details to provision.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        sig {
          params(financial_account: String, sepa_bank_account: T.nilable(V2::MoneyManagement::FinancialAddressCreateParams::SepaBankAccount), type: String).void
         }
        def initialize(financial_account: nil, sepa_bank_account: nil, type: nil); end
      end
    end
  end
end