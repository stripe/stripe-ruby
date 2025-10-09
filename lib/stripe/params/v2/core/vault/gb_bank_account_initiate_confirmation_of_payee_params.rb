# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      module Vault
        class GbBankAccountInitiateConfirmationOfPayeeParams < ::Stripe::RequestParams
          # The business type to be checked against. Legal entity information will be used if unspecified.
          attr_accessor :business_type
          # The name of the user to be checked against. Legal entity information will be used if unspecified.
          attr_accessor :name

          def initialize(business_type: nil, name: nil)
            @business_type = business_type
            @name = name
          end
        end
      end
    end
  end
end
