# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module TestHelpers
    module Treasury
      class InboundTransferFailParams < ::Stripe::RequestParams
        class FailureDetails < ::Stripe::RequestParams
          class NetworkDetails < ::Stripe::RequestParams
            class Ach < ::Stripe::RequestParams
              # NACHA ACH return code.
              attr_accessor :return_code

              def initialize(return_code: nil)
                @return_code = return_code
              end
            end
            # ACH network failure details.
            attr_accessor :ach
            # The network used to transfer funds.
            attr_accessor :type

            def initialize(ach: nil, type: nil)
              @ach = ach
              @type = type
            end
          end
          # Reason for the failure.
          attr_accessor :code
          # Network specific details for the failure.
          attr_accessor :network_details

          def initialize(code: nil, network_details: nil)
            @code = code
            @network_details = network_details
          end
        end
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Details about a failed InboundTransfer.
        attr_accessor :failure_details

        def initialize(expand: nil, failure_details: nil)
          @expand = expand
          @failure_details = failure_details
        end
      end
    end
  end
end
