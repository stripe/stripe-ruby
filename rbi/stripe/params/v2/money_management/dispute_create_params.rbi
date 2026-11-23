# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class DisputeCreateParams < ::Stripe::RequestParams
        class Target < ::Stripe::RequestParams
          # If applicable, the ID of the ReceivedDebit being disputed.
          sig { returns(T.nilable(String)) }
          def received_debit; end
          sig { params(_received_debit: T.nilable(String)).returns(T.nilable(String)) }
          def received_debit=(_received_debit); end
          # The type of money movement being disputed.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig { params(received_debit: T.nilable(String), type: String).void }
          def initialize(received_debit: nil, type: nil); end
        end
        # Additional information explaining the dispute. Must contain non-whitespace text and be no longer than 5000 characters.
        sig { returns(T.nilable(String)) }
        def explanation; end
        sig { params(_explanation: T.nilable(String)).returns(T.nilable(String)) }
        def explanation=(_explanation); end
        # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        # The FinancialAccount holder's reason for disputing the money movement.
        sig { returns(String) }
        def reason; end
        sig { params(_reason: String).returns(String) }
        def reason=(_reason); end
        # The money movement being disputed.
        sig { returns(::Stripe::V2::MoneyManagement::DisputeCreateParams::Target) }
        def target; end
        sig {
          params(_target: ::Stripe::V2::MoneyManagement::DisputeCreateParams::Target).returns(::Stripe::V2::MoneyManagement::DisputeCreateParams::Target)
         }
        def target=(_target); end
        sig {
          params(explanation: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), reason: String, target: ::Stripe::V2::MoneyManagement::DisputeCreateParams::Target).void
         }
        def initialize(explanation: nil, metadata: nil, reason: nil, target: nil); end
      end
    end
  end
end