# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module TestHelpers
    module Treasury
      class InboundTransferService < StripeService
        class FailParams < Stripe::RequestParams
          class FailureDetails < Stripe::RequestParams
            # Reason for the failure.
            sig { returns(T.nilable(String)) }
            attr_accessor :code
            sig { params(code: T.nilable(String)).void }
            def initialize(code: nil); end
          end
          # Specifies which fields in the response should be expanded.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :expand
          # Details about a failed InboundTransfer.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::Treasury::InboundTransferService::FailParams::FailureDetails))
           }
          attr_accessor :failure_details
          sig {
            params(expand: T.nilable(T::Array[String]), failure_details: T.nilable(::Stripe::TestHelpers::Treasury::InboundTransferService::FailParams::FailureDetails)).void
           }
          def initialize(expand: nil, failure_details: nil); end
        end
        class ReturnInboundTransferParams < Stripe::RequestParams
          # Specifies which fields in the response should be expanded.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :expand
          sig { params(expand: T.nilable(T::Array[String])).void }
          def initialize(expand: nil); end
        end
        class SucceedParams < Stripe::RequestParams
          # Specifies which fields in the response should be expanded.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :expand
          sig { params(expand: T.nilable(T::Array[String])).void }
          def initialize(expand: nil); end
        end
        # Transitions a test mode created InboundTransfer to the failed status. The InboundTransfer must already be in the processing state.
        sig {
          params(id: String, params: T.any(::Stripe::TestHelpers::Treasury::InboundTransferService::FailParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Treasury::InboundTransfer)
         }
        def fail(id, params = {}, opts = {}); end

        # Marks the test mode InboundTransfer object as returned and links the InboundTransfer to a ReceivedDebit. The InboundTransfer must already be in the succeeded state.
        sig {
          params(id: String, params: T.any(::Stripe::TestHelpers::Treasury::InboundTransferService::ReturnInboundTransferParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Treasury::InboundTransfer)
         }
        def return_inbound_transfer(id, params = {}, opts = {}); end

        # Transitions a test mode created InboundTransfer to the succeeded status. The InboundTransfer must already be in the processing state.
        sig {
          params(id: String, params: T.any(::Stripe::TestHelpers::Treasury::InboundTransferService::SucceedParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Treasury::InboundTransfer)
         }
        def succeed(id, params = {}, opts = {}); end
      end
    end
  end
end