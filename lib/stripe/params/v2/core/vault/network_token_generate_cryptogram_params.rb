# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      module Vault
        class NetworkTokenGenerateCryptogramParams < ::Stripe::RequestParams
          # The cryptogram type. When omitted, token_cryptogram is used.
          attr_accessor :type

          def initialize(type: nil)
            @type = type
          end
        end
      end
    end
  end
end
