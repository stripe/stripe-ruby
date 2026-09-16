# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      module Vault
        class NetworkTokenGenerateCryptogramParams < ::Stripe::RequestParams
          # The cryptogram type. When omitted, token_cryptogram is used.
          sig { returns(T.nilable(String)) }
          def type; end
          sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
          def type=(_type); end
          sig { params(type: T.nilable(String)).void }
          def initialize(type: nil); end
        end
      end
    end
  end
end