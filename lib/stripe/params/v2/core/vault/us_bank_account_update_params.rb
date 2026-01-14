# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      module Vault
        class UsBankAccountUpdateParams < ::Stripe::RequestParams
          # The bank account's Fedwire routing number can be provided for update if it was empty previously.
          attr_accessor :fedwire_routing_number
          # The bank account's ACH routing number can be provided for update if it was empty previously.
          attr_accessor :routing_number

          def initialize(fedwire_routing_number: nil, routing_number: nil)
            @fedwire_routing_number = fedwire_routing_number
            @routing_number = routing_number
          end
        end
      end
    end
  end
end
