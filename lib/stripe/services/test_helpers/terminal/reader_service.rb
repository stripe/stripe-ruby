# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module TestHelpers
    module Terminal
      class ReaderService < StripeService
        class PresentPaymentMethodParams < Stripe::RequestParams
          class CardPresent < Stripe::RequestParams
            # The card number, as a string without any separators.
            attr_accessor :number

            def initialize(number: nil)
              @number = number
            end
          end

          class InteracPresent < Stripe::RequestParams
            # Card Number
            attr_accessor :number

            def initialize(number: nil)
              @number = number
            end
          end
          # Simulated on-reader tip amount.
          attr_accessor :amount_tip
          # Simulated data for the card_present payment method.
          attr_accessor :card_present
          # Specifies which fields in the response should be expanded.
          attr_accessor :expand
          # Simulated data for the interac_present payment method.
          attr_accessor :interac_present
          # Simulated payment type.
          attr_accessor :type

          def initialize(
            amount_tip: nil,
            card_present: nil,
            expand: nil,
            interac_present: nil,
            type: nil
          )
            @amount_tip = amount_tip
            @card_present = card_present
            @expand = expand
            @interac_present = interac_present
            @type = type
          end
        end

        class SucceedInputCollectionParams < Stripe::RequestParams
          # Specifies which fields in the response should be expanded.
          attr_accessor :expand
          # This parameter defines the skip behavior for input collection.
          attr_accessor :skip_non_required_inputs

          def initialize(expand: nil, skip_non_required_inputs: nil)
            @expand = expand
            @skip_non_required_inputs = skip_non_required_inputs
          end
        end

        class TimeoutInputCollectionParams < Stripe::RequestParams
          # Specifies which fields in the response should be expanded.
          attr_accessor :expand

          def initialize(expand: nil)
            @expand = expand
          end
        end

        # Presents a payment method on a simulated reader. Can be used to simulate accepting a payment, saving a card or refunding a transaction.
        def present_payment_method(reader, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v1/test_helpers/terminal/readers/%<reader>s/present_payment_method", { reader: CGI.escape(reader) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Use this endpoint to trigger a successful input collection on a simulated reader.
        def succeed_input_collection(reader, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v1/test_helpers/terminal/readers/%<reader>s/succeed_input_collection", { reader: CGI.escape(reader) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Use this endpoint to complete an input collection with a timeout error on a simulated reader.
        def timeout_input_collection(reader, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v1/test_helpers/terminal/readers/%<reader>s/timeout_input_collection", { reader: CGI.escape(reader) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
