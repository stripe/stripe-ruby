# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      module Vault
        class UsBankAccountConfirmMicrodepositsParams < ::Stripe::RequestParams
          # Two amounts received through Send Microdeposits must match the input to Confirm Microdeposits to verify US Bank Account.
          sig { returns(T.nilable(T::Array[Integer])) }
          def amounts; end
          sig {
            params(_amounts: T.nilable(T::Array[Integer])).returns(T.nilable(T::Array[Integer]))
           }
          def amounts=(_amounts); end
          # Descriptor code received through Send Microdeposits must match the input to Confirm Microdeposits to verify US Bank Account.
          sig { returns(T.nilable(String)) }
          def descriptor_code; end
          sig { params(_descriptor_code: T.nilable(String)).returns(T.nilable(String)) }
          def descriptor_code=(_descriptor_code); end
          sig {
            params(amounts: T.nilable(T::Array[Integer]), descriptor_code: T.nilable(String)).void
           }
          def initialize(amounts: nil, descriptor_code: nil); end
        end
      end
    end
  end
end