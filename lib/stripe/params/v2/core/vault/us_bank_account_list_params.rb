# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      module Vault
        class UsBankAccountListParams < ::Stripe::RequestParams
          # Optionally set the maximum number of results per page. Defaults to 10.
          attr_accessor :limit
          # Optionally filter by verification status. Mutually exclusive with `unverified`, `verified`, `awaiting_verification`, and `verification_failed`.
          attr_accessor :verification_status

          def initialize(limit: nil, verification_status: nil)
            @limit = limit
            @verification_status = verification_status
          end
        end
      end
    end
  end
end
