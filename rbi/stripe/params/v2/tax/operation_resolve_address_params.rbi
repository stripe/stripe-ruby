# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Tax
      class OperationResolveAddressParams < ::Stripe::RequestParams
        class Address < ::Stripe::RequestParams
          # The city.
          sig { returns(T.nilable(String)) }
          def city; end
          sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
          def city=(_city); end
          # The two-letter country code.
          sig { returns(String) }
          def country; end
          sig { params(_country: String).returns(String) }
          def country=(_country); end
          # The first line of the street address.
          sig { returns(T.nilable(String)) }
          def line1; end
          sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
          def line1=(_line1); end
          # The postal code.
          sig { returns(T.nilable(String)) }
          def postal_code; end
          sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
          def postal_code=(_postal_code); end
          # The state or province.
          sig { returns(T.nilable(String)) }
          def state; end
          sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
          def state=(_state); end
          sig {
            params(city: T.nilable(String), country: String, line1: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
           }
          def initialize(city: nil, country: nil, line1: nil, postal_code: nil, state: nil); end
        end
        # The address to resolve.
        sig { returns(::Stripe::V2::Tax::OperationResolveAddressParams::Address) }
        def address; end
        sig {
          params(_address: ::Stripe::V2::Tax::OperationResolveAddressParams::Address).returns(::Stripe::V2::Tax::OperationResolveAddressParams::Address)
         }
        def address=(_address); end
        sig { params(address: ::Stripe::V2::Tax::OperationResolveAddressParams::Address).void }
        def initialize(address: nil); end
      end
    end
  end
end