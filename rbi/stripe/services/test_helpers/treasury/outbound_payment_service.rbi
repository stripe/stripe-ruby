# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module TestHelpers
    module Treasury
      class OutboundPaymentService < StripeService
        class UpdateParams < Stripe::RequestParams
          class TrackingDetails < Stripe::RequestParams
            class Ach < Stripe::RequestParams
              # ACH trace ID for funds sent over the `ach` network.
              sig { returns(String) }
              attr_accessor :trace_id
              sig { params(trace_id: String).void }
              def initialize(trace_id: nil); end
            end
            class UsDomesticWire < Stripe::RequestParams
              # CHIPS System Sequence Number (SSN) for funds sent over the `us_domestic_wire` network.
              sig { returns(T.nilable(String)) }
              attr_accessor :chips
              # IMAD for funds sent over the `us_domestic_wire` network.
              sig { returns(T.nilable(String)) }
              attr_accessor :imad
              # OMAD for funds sent over the `us_domestic_wire` network.
              sig { returns(T.nilable(String)) }
              attr_accessor :omad
              sig {
                params(chips: T.nilable(String), imad: T.nilable(String), omad: T.nilable(String)).void
               }
              def initialize(chips: nil, imad: nil, omad: nil); end
            end
            # ACH network tracking details.
            sig {
              returns(T.nilable(::Stripe::TestHelpers::Treasury::OutboundPaymentService::UpdateParams::TrackingDetails::Ach))
             }
            attr_accessor :ach
            # The US bank account network used to send funds.
            sig { returns(String) }
            attr_accessor :type
            # US domestic wire network tracking details.
            sig {
              returns(T.nilable(::Stripe::TestHelpers::Treasury::OutboundPaymentService::UpdateParams::TrackingDetails::UsDomesticWire))
             }
            attr_accessor :us_domestic_wire
            sig {
              params(ach: T.nilable(::Stripe::TestHelpers::Treasury::OutboundPaymentService::UpdateParams::TrackingDetails::Ach), type: String, us_domestic_wire: T.nilable(::Stripe::TestHelpers::Treasury::OutboundPaymentService::UpdateParams::TrackingDetails::UsDomesticWire)).void
             }
            def initialize(ach: nil, type: nil, us_domestic_wire: nil); end
          end
          # Specifies which fields in the response should be expanded.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :expand
          # Details about network-specific tracking information.
          sig {
            returns(::Stripe::TestHelpers::Treasury::OutboundPaymentService::UpdateParams::TrackingDetails)
           }
          attr_accessor :tracking_details
          sig {
            params(expand: T.nilable(T::Array[String]), tracking_details: ::Stripe::TestHelpers::Treasury::OutboundPaymentService::UpdateParams::TrackingDetails).void
           }
          def initialize(expand: nil, tracking_details: nil); end
        end
        class FailParams < Stripe::RequestParams
          # Specifies which fields in the response should be expanded.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :expand
          sig { params(expand: T.nilable(T::Array[String])).void }
          def initialize(expand: nil); end
        end
        class PostParams < Stripe::RequestParams
          # Specifies which fields in the response should be expanded.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :expand
          sig { params(expand: T.nilable(T::Array[String])).void }
          def initialize(expand: nil); end
        end
        class ReturnOutboundPaymentParams < Stripe::RequestParams
          class ReturnedDetails < Stripe::RequestParams
            # The return code to be set on the OutboundPayment object.
            sig { returns(T.nilable(String)) }
            attr_accessor :code
            sig { params(code: T.nilable(String)).void }
            def initialize(code: nil); end
          end
          # Specifies which fields in the response should be expanded.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :expand
          # Optional hash to set the return code.
          sig {
            returns(T.nilable(::Stripe::TestHelpers::Treasury::OutboundPaymentService::ReturnOutboundPaymentParams::ReturnedDetails))
           }
          attr_accessor :returned_details
          sig {
            params(expand: T.nilable(T::Array[String]), returned_details: T.nilable(::Stripe::TestHelpers::Treasury::OutboundPaymentService::ReturnOutboundPaymentParams::ReturnedDetails)).void
           }
          def initialize(expand: nil, returned_details: nil); end
        end
        # Transitions a test mode created OutboundPayment to the failed status. The OutboundPayment must already be in the processing state.
        sig {
          params(id: String, params: T.any(::Stripe::TestHelpers::Treasury::OutboundPaymentService::FailParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Treasury::OutboundPayment)
         }
        def fail(id, params = {}, opts = {}); end

        # Transitions a test mode created OutboundPayment to the posted status. The OutboundPayment must already be in the processing state.
        sig {
          params(id: String, params: T.any(::Stripe::TestHelpers::Treasury::OutboundPaymentService::PostParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Treasury::OutboundPayment)
         }
        def post(id, params = {}, opts = {}); end

        # Transitions a test mode created OutboundPayment to the returned status. The OutboundPayment must already be in the processing state.
        sig {
          params(id: String, params: T.any(::Stripe::TestHelpers::Treasury::OutboundPaymentService::ReturnOutboundPaymentParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Treasury::OutboundPayment)
         }
        def return_outbound_payment(id, params = {}, opts = {}); end

        # Updates a test mode created OutboundPayment with tracking details. The OutboundPayment must not be cancelable, and cannot be in the canceled or failed states.
        sig {
          params(id: String, params: T.any(::Stripe::TestHelpers::Treasury::OutboundPaymentService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Treasury::OutboundPayment)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end