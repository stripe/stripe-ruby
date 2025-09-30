# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      module Vault
        class UsBankAccountUpdateParams < Stripe::RequestParams
          # The bank account's fedwire routing number can be provided for update it was were empty previously.
          sig { returns(T.nilable(String)) }
          def fedwire_routing_number; end
          sig { params(_fedwire_routing_number: T.nilable(String)).returns(T.nilable(String)) }
          def fedwire_routing_number=(_fedwire_routing_number); end
          # The bank account's ACH routing number can be provided for update if it was empty previously.
          sig { returns(T.nilable(String)) }
          def routing_number; end
          sig { params(_routing_number: T.nilable(String)).returns(T.nilable(String)) }
          def routing_number=(_routing_number); end
          sig {
            params(fedwire_routing_number: T.nilable(String), routing_number: T.nilable(String)).void
           }
          def initialize(fedwire_routing_number: nil, routing_number: nil); end
        end
      end
    end
  end
end