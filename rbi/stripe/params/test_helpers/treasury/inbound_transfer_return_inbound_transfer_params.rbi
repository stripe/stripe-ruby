# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module TestHelpers
    module Treasury
      class InboundTransferReturnInboundTransferParams < ::Stripe::RequestParams
        class FailureDetails < ::Stripe::RequestParams
          class NetworkDetails < ::Stripe::RequestParams
            class Ach < ::Stripe::RequestParams
              # NACHA ACH return code.
              sig { returns(String) }
              def return_code; end
              sig { params(_return_code: String).returns(String) }
              def return_code=(_return_code); end
              sig { params(return_code: String).void }
              def initialize(return_code: nil); end
            end
            # ACH network failure details.
            sig {
              returns(T.nilable(::Stripe::TestHelpers::Treasury::InboundTransferReturnInboundTransferParams::FailureDetails::NetworkDetails::Ach))
             }
            def ach; end
            sig {
              params(_ach: T.nilable(::Stripe::TestHelpers::Treasury::InboundTransferReturnInboundTransferParams::FailureDetails::NetworkDetails::Ach)).returns(T.nilable(::Stripe::TestHelpers::Treasury::InboundTransferReturnInboundTransferParams::FailureDetails::NetworkDetails::Ach))
             }
            def ach=(_ach); end
            # The network used to transfer funds.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig {
              params(ach: T.nilable(::Stripe::TestHelpers::Treasury::InboundTransferReturnInboundTransferParams::FailureDetails::NetworkDetails::Ach), type: String).void
             }
            def initialize(ach: nil, type: nil); end
          end
          # Reason for the failure.
          sig { returns(T.nilable(String)) }
          def code; end
          sig { params(_code: T.nilable(String)).returns(T.nilable(String)) }
          def code=(_code); end
          # Network specific details for the failure.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::Treasury::InboundTransferReturnInboundTransferParams::FailureDetails::NetworkDetails))
           }
          def network_details; end
          sig {
            params(_network_details: T.nilable(::Stripe::TestHelpers::Treasury::InboundTransferReturnInboundTransferParams::FailureDetails::NetworkDetails)).returns(T.nilable(::Stripe::TestHelpers::Treasury::InboundTransferReturnInboundTransferParams::FailureDetails::NetworkDetails))
           }
          def network_details=(_network_details); end
          sig {
            params(code: T.nilable(String), network_details: T.nilable(::Stripe::TestHelpers::Treasury::InboundTransferReturnInboundTransferParams::FailureDetails::NetworkDetails)).void
           }
          def initialize(code: nil, network_details: nil); end
        end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # Details about a returned InboundTransfer.
        sig {
          returns(T.nilable(::Stripe::TestHelpers::Treasury::InboundTransferReturnInboundTransferParams::FailureDetails))
         }
        def failure_details; end
        sig {
          params(_failure_details: T.nilable(::Stripe::TestHelpers::Treasury::InboundTransferReturnInboundTransferParams::FailureDetails)).returns(T.nilable(::Stripe::TestHelpers::Treasury::InboundTransferReturnInboundTransferParams::FailureDetails))
         }
        def failure_details=(_failure_details); end
        sig {
          params(expand: T.nilable(T::Array[String]), failure_details: T.nilable(::Stripe::TestHelpers::Treasury::InboundTransferReturnInboundTransferParams::FailureDetails)).void
         }
        def initialize(expand: nil, failure_details: nil); end
      end
    end
  end
end