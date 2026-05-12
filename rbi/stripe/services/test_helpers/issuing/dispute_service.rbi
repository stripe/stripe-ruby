# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module TestHelpers
    module Issuing
      class DisputeService < StripeService
        # Test helper: populates network_lifecycle.pre_arbitration_submission on a test-mode Visa Issuing Dispute using placeholder file tokens. Only supported for Visa disputes.
        sig {
          params(dispute: String, params: T.any(::Stripe::TestHelpers::Issuing::DisputeSimulateNetworkLifecyclePreArbitrationSubmissionParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Issuing::Dispute)
         }
        def simulate_network_lifecycle_pre_arbitration_submission(
          dispute,
          params = {},
          opts = {}
        ); end
      end
    end
  end
end