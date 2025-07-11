# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module TestHelpers
    module Treasury
      class OutboundPaymentService < StripeService
        class UpdateParams < Stripe::RequestParams
          class TrackingDetails < Stripe::RequestParams
            class Ach < Stripe::RequestParams
              # ACH trace ID for funds sent over the `ach` network.
              attr_accessor :trace_id

              def initialize(trace_id: nil)
                @trace_id = trace_id
              end
            end

            class UsDomesticWire < Stripe::RequestParams
              # CHIPS System Sequence Number (SSN) for funds sent over the `us_domestic_wire` network.
              attr_accessor :chips
              # IMAD for funds sent over the `us_domestic_wire` network.
              attr_accessor :imad
              # OMAD for funds sent over the `us_domestic_wire` network.
              attr_accessor :omad

              def initialize(chips: nil, imad: nil, omad: nil)
                @chips = chips
                @imad = imad
                @omad = omad
              end
            end
            # ACH network tracking details.
            attr_accessor :ach
            # The US bank account network used to send funds.
            attr_accessor :type
            # US domestic wire network tracking details.
            attr_accessor :us_domestic_wire

            def initialize(ach: nil, type: nil, us_domestic_wire: nil)
              @ach = ach
              @type = type
              @us_domestic_wire = us_domestic_wire
            end
          end
          # Specifies which fields in the response should be expanded.
          attr_accessor :expand
          # Details about network-specific tracking information.
          attr_accessor :tracking_details

          def initialize(expand: nil, tracking_details: nil)
            @expand = expand
            @tracking_details = tracking_details
          end
        end

        class FailParams < Stripe::RequestParams
          # Specifies which fields in the response should be expanded.
          attr_accessor :expand

          def initialize(expand: nil)
            @expand = expand
          end
        end

        class PostParams < Stripe::RequestParams
          # Specifies which fields in the response should be expanded.
          attr_accessor :expand

          def initialize(expand: nil)
            @expand = expand
          end
        end

        class ReturnOutboundPaymentParams < Stripe::RequestParams
          class ReturnedDetails < Stripe::RequestParams
            # The return code to be set on the OutboundPayment object.
            attr_accessor :code

            def initialize(code: nil)
              @code = code
            end
          end
          # Specifies which fields in the response should be expanded.
          attr_accessor :expand
          # Optional hash to set the return code.
          attr_accessor :returned_details

          def initialize(expand: nil, returned_details: nil)
            @expand = expand
            @returned_details = returned_details
          end
        end

        # Transitions a test mode created OutboundPayment to the failed status. The OutboundPayment must already be in the processing state.
        def fail(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v1/test_helpers/treasury/outbound_payments/%<id>s/fail", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Transitions a test mode created OutboundPayment to the posted status. The OutboundPayment must already be in the processing state.
        def post(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v1/test_helpers/treasury/outbound_payments/%<id>s/post", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Transitions a test mode created OutboundPayment to the returned status. The OutboundPayment must already be in the processing state.
        def return_outbound_payment(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v1/test_helpers/treasury/outbound_payments/%<id>s/return", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Updates a test mode created OutboundPayment with tracking details. The OutboundPayment must not be cancelable, and cannot be in the canceled or failed states.
        def update(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v1/test_helpers/treasury/outbound_payments/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
