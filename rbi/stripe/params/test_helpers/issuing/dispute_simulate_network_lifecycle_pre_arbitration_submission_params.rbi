# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module TestHelpers
    module Issuing
      class DisputeSimulateNetworkLifecyclePreArbitrationSubmissionParams < ::Stripe::RequestParams
        class MerchantEvidenceFiles < ::Stripe::RequestParams
          # How many simulated merchant evidence file tokens to attach (between 1 and 12).
          sig { returns(Integer) }
          def number_to_generate; end
          sig { params(_number_to_generate: Integer).returns(Integer) }
          def number_to_generate=(_number_to_generate); end
          sig { params(number_to_generate: Integer).void }
          def initialize(number_to_generate: nil); end
        end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # Controls the acquiring merchant's simulated submitted evidence files for the pre-arbitration submission stage.
        sig {
          returns(::Stripe::TestHelpers::Issuing::DisputeSimulateNetworkLifecyclePreArbitrationSubmissionParams::MerchantEvidenceFiles)
         }
        def merchant_evidence_files; end
        sig {
          params(_merchant_evidence_files: ::Stripe::TestHelpers::Issuing::DisputeSimulateNetworkLifecyclePreArbitrationSubmissionParams::MerchantEvidenceFiles).returns(::Stripe::TestHelpers::Issuing::DisputeSimulateNetworkLifecyclePreArbitrationSubmissionParams::MerchantEvidenceFiles)
         }
        def merchant_evidence_files=(_merchant_evidence_files); end
        sig {
          params(expand: T.nilable(T::Array[String]), merchant_evidence_files: ::Stripe::TestHelpers::Issuing::DisputeSimulateNetworkLifecyclePreArbitrationSubmissionParams::MerchantEvidenceFiles).void
         }
        def initialize(expand: nil, merchant_evidence_files: nil); end
      end
    end
  end
end