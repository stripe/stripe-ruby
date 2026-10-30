# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      module Contracts
        class TermListContractTermsParams < ::Stripe::RequestParams
          # Maximum results per page.
          sig { returns(T.nilable(Integer)) }
          def limit; end
          sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def limit=(_limit); end
          # Filter terms by type.
          sig { returns(T.nilable(String)) }
          def type; end
          sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
          def type=(_type); end
          sig { params(limit: T.nilable(Integer), type: T.nilable(String)).void }
          def initialize(limit: nil, type: nil); end
        end
      end
    end
  end
end