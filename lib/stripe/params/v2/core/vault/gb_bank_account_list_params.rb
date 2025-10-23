# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      module Vault
        class GbBankAccountListParams < ::Stripe::RequestParams
          # Optionally set the maximum number of results per page. Defaults to 10.
          attr_accessor :limit

          def initialize(limit: nil)
            @limit = limit
          end
        end
      end
    end
  end
end
