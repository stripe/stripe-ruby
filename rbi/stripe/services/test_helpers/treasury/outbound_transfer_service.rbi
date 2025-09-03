# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module TestHelpers
    module Treasury
      class OutboundTransferService < StripeService
        class UpdateParams < Stripe::RequestParams
          class TrackingDetails < Stripe::RequestParams
            class Ach < Stripe::RequestParams
              # ACH trace ID for funds sent over the `ach` network.
              sig { returns(String) }
              def trace_id; end
              sig { params(_trace_id: String).returns(String) }
              def trace_id=(_trace_id); end
              sig { params(trace_id: String).void }
              def initialize(trace_id: nil); end
            end
            class UsDomesticWire < Stripe::RequestParams
              # CHIPS System Sequence Number (SSN) for funds sent over the `us_domestic_wire` network.
              sig { returns(T.nilable(String)) }
              def chips; end
              sig { params(_chips: T.nilable(String)).returns(T.nilable(String)) }
              def chips=(_chips); end
              # IMAD for funds sent over the `us_domestic_wire` network.
              sig { returns(T.nilable(String)) }
              def imad; end
              sig { params(_imad: T.nilable(String)).returns(T.nilable(String)) }
              def imad=(_imad); end
              # OMAD for funds sent over the `us_domestic_wire` network.
              sig { returns(T.nilable(String)) }
              def omad; end
              sig { params(_omad: T.nilable(String)).returns(T.nilable(String)) }
              def omad=(_omad); end
              sig {
                params(chips: T.nilable(String), imad: T.nilable(String), omad: T.nilable(String)).void
               }
              def initialize(chips: nil, imad: nil, omad: nil); end
            end
            # ACH network tracking details.
            sig {
              returns(T.nilable(::Stripe::TestHelpers::Treasury::OutboundTransferService::UpdateParams::TrackingDetails::Ach))
             }
            def ach; end
            sig {
              params(_ach: T.nilable(::Stripe::TestHelpers::Treasury::OutboundTransferService::UpdateParams::TrackingDetails::Ach)).returns(T.nilable(::Stripe::TestHelpers::Treasury::OutboundTransferService::UpdateParams::TrackingDetails::Ach))
             }
            def ach=(_ach); end
            # The US bank account network used to send funds.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            # US domestic wire network tracking details.
            sig {
              returns(T.nilable(::Stripe::TestHelpers::Treasury::OutboundTransferService::UpdateParams::TrackingDetails::UsDomesticWire))
             }
            def us_domestic_wire; end
            sig {
              params(_us_domestic_wire: T.nilable(::Stripe::TestHelpers::Treasury::OutboundTransferService::UpdateParams::TrackingDetails::UsDomesticWire)).returns(T.nilable(::Stripe::TestHelpers::Treasury::OutboundTransferService::UpdateParams::TrackingDetails::UsDomesticWire))
             }
            def us_domestic_wire=(_us_domestic_wire); end
            sig {
              params(ach: T.nilable(::Stripe::TestHelpers::Treasury::OutboundTransferService::UpdateParams::TrackingDetails::Ach), type: String, us_domestic_wire: T.nilable(::Stripe::TestHelpers::Treasury::OutboundTransferService::UpdateParams::TrackingDetails::UsDomesticWire)).void
             }
            def initialize(ach: nil, type: nil, us_domestic_wire: nil); end
          end
          # Specifies which fields in the response should be expanded.
          sig { returns(T.nilable(T::Array[String])) }
          def expand; end
          sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def expand=(_expand); end
          # Details about network-specific tracking information.
          sig {
            returns(::Stripe::TestHelpers::Treasury::OutboundTransferService::UpdateParams::TrackingDetails)
           }
          def tracking_details; end
          sig {
            params(_tracking_details: ::Stripe::TestHelpers::Treasury::OutboundTransferService::UpdateParams::TrackingDetails).returns(::Stripe::TestHelpers::Treasury::OutboundTransferService::UpdateParams::TrackingDetails)
           }
          def tracking_details=(_tracking_details); end
          sig {
            params(expand: T.nilable(T::Array[String]), tracking_details: ::Stripe::TestHelpers::Treasury::OutboundTransferService::UpdateParams::TrackingDetails).void
           }
          def initialize(expand: nil, tracking_details: nil); end
        end
        class FailParams < Stripe::RequestParams
          # Specifies which fields in the response should be expanded.
          sig { returns(T.nilable(T::Array[String])) }
          def expand; end
          sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def expand=(_expand); end
          sig { params(expand: T.nilable(T::Array[String])).void }
          def initialize(expand: nil); end
        end
        class PostParams < Stripe::RequestParams
          # Specifies which fields in the response should be expanded.
          sig { returns(T.nilable(T::Array[String])) }
          def expand; end
          sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def expand=(_expand); end
          sig { params(expand: T.nilable(T::Array[String])).void }
          def initialize(expand: nil); end
        end
        class ReturnOutboundTransferParams < Stripe::RequestParams
          class ReturnedDetails < Stripe::RequestParams
            # Reason for the return.
            sig { returns(T.nilable(String)) }
            def code; end
            sig { params(_code: T.nilable(String)).returns(T.nilable(String)) }
            def code=(_code); end
            sig { params(code: T.nilable(String)).void }
            def initialize(code: nil); end
          end
          # Specifies which fields in the response should be expanded.
          sig { returns(T.nilable(T::Array[String])) }
          def expand; end
          sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def expand=(_expand); end
          # Details about a returned OutboundTransfer.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::Treasury::OutboundTransferService::ReturnOutboundTransferParams::ReturnedDetails))
           }
          def returned_details; end
          sig {
            params(_returned_details: T.nilable(::Stripe::TestHelpers::Treasury::OutboundTransferService::ReturnOutboundTransferParams::ReturnedDetails)).returns(T.nilable(::Stripe::TestHelpers::Treasury::OutboundTransferService::ReturnOutboundTransferParams::ReturnedDetails))
           }
          def returned_details=(_returned_details); end
          sig {
            params(expand: T.nilable(T::Array[String]), returned_details: T.nilable(::Stripe::TestHelpers::Treasury::OutboundTransferService::ReturnOutboundTransferParams::ReturnedDetails)).void
           }
          def initialize(expand: nil, returned_details: nil); end
        end
        # Transitions a test mode created OutboundTransfer to the failed status. The OutboundTransfer must already be in the processing state.
        sig {
          params(outbound_transfer: String, params: T.any(::Stripe::TestHelpers::Treasury::OutboundTransferService::FailParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Treasury::OutboundTransfer)
         }
        def fail(outbound_transfer, params = {}, opts = {}); end

        # Transitions a test mode created OutboundTransfer to the posted status. The OutboundTransfer must already be in the processing state.
        sig {
          params(outbound_transfer: String, params: T.any(::Stripe::TestHelpers::Treasury::OutboundTransferService::PostParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Treasury::OutboundTransfer)
         }
        def post(outbound_transfer, params = {}, opts = {}); end

        # Transitions a test mode created OutboundTransfer to the returned status. The OutboundTransfer must already be in the processing state.
        sig {
          params(outbound_transfer: String, params: T.any(::Stripe::TestHelpers::Treasury::OutboundTransferService::ReturnOutboundTransferParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Treasury::OutboundTransfer)
         }
        def return_outbound_transfer(outbound_transfer, params = {}, opts = {}); end

        # Updates a test mode created OutboundTransfer with tracking details. The OutboundTransfer must not be cancelable, and cannot be in the canceled or failed states.
        sig {
          params(outbound_transfer: String, params: T.any(::Stripe::TestHelpers::Treasury::OutboundTransferService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Treasury::OutboundTransfer)
         }
        def update(outbound_transfer, params = {}, opts = {}); end
      end
    end
  end
end