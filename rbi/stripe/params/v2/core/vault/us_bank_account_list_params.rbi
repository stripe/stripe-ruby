# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      module Vault
        class UsBankAccountListParams < ::Stripe::RequestParams
          # Optionally set the maximum number of results per page. Defaults to 10.
          sig { returns(T.nilable(Integer)) }
          def limit; end
          sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def limit=(_limit); end
          # Optionally filter by verification status. Mutually exclusive with `unverified`, `verified`, `awaiting_verification`, and `verification_failed`.
          sig { returns(T.nilable(String)) }
          def verification_status; end
          sig { params(_verification_status: T.nilable(String)).returns(T.nilable(String)) }
          def verification_status=(_verification_status); end
          sig { params(limit: T.nilable(Integer), verification_status: T.nilable(String)).void }
          def initialize(limit: nil, verification_status: nil); end
        end
      end
    end
  end
end