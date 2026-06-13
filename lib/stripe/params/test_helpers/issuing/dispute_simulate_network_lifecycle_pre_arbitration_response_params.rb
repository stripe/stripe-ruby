# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module TestHelpers
    module Issuing
      class DisputeSimulateNetworkLifecyclePreArbitrationResponseParams < ::Stripe::RequestParams
        class MerchantEvidenceFiles < ::Stripe::RequestParams
          # How many simulated merchant evidence file tokens to attach (between 1 and 12).
          attr_accessor :number_to_generate

          def initialize(number_to_generate: nil)
            @number_to_generate = number_to_generate
          end
        end
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Controls the acquiring merchant's simulated submitted evidence files for the pre-arbitration response stage.
        attr_accessor :merchant_evidence_files

        def initialize(expand: nil, merchant_evidence_files: nil)
          @expand = expand
          @merchant_evidence_files = merchant_evidence_files
        end
      end
    end
  end
end
