# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      module Vault
        class UsBankAccountConfirmMicrodepositsParams < ::Stripe::RequestParams
          # Two amounts received through Send Microdeposits must match the input to Confirm Microdeposits to verify US Bank Account.
          attr_accessor :amounts
          # Descriptor code received through Send Microdeposits must match the input to Confirm Microdeposits to verify US Bank Account.
          attr_accessor :descriptor_code

          def initialize(amounts: nil, descriptor_code: nil)
            @amounts = amounts
            @descriptor_code = descriptor_code
          end
        end
      end
    end
  end
end
