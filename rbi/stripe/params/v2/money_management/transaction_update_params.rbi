# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class TransactionUpdateParams < ::Stripe::RequestParams
        # Description of this Transaction, up to 100 characters.
        sig { returns(T.nilable(String)) }
        def description; end
        sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
        def description=(_description); end
        # Set of key-value pairs that you can attach to the Transaction. Individual keys can be unset by posting
        # null to them.
        sig { returns(T.nilable(T::Hash[String, T.nilable(String)])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, T.nilable(String)])).returns(T.nilable(T::Hash[String, T.nilable(String)]))
         }
        def metadata=(_metadata); end
        sig {
          params(description: T.nilable(String), metadata: T.nilable(T::Hash[String, T.nilable(String)])).void
         }
        def initialize(description: nil, metadata: nil); end
      end
    end
  end
end