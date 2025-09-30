# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      module Vault
        class GbBankAccountInitiateConfirmationOfPayeeParams < Stripe::RequestParams
          # The business type to be checked against. Legal entity information will be used if unspecified.
          sig { returns(T.nilable(String)) }
          def business_type; end
          sig { params(_business_type: T.nilable(String)).returns(T.nilable(String)) }
          def business_type=(_business_type); end
          # The name of the user to be checked against. Legal entity information will be used if unspecified.
          sig { returns(T.nilable(String)) }
          def name; end
          sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
          def name=(_name); end
          sig { params(business_type: T.nilable(String), name: T.nilable(String)).void }
          def initialize(business_type: nil, name: nil); end
        end
      end
    end
  end
end