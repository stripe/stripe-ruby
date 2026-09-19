# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module TestHelpers
    module Issuing
      class DisputeService < StripeService
        # Test helper: closes a test-mode Issuing dispute as won or lost.
        sig {
          params(id: String, params: T.any(::Stripe::TestHelpers::Issuing::DisputeCloseParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Issuing::Dispute)
         }
        def close(id, params = {}, opts = {}); end

        # Test helper: overrides the grant_deadline and revocable_after timestamps on a test-mode Issuing dispute's provisional credit, allowing tests to simulate timer-driven status transitions without waiting for real regulatory deadlines to pass.
        sig {
          params(id: String, params: T.any(::Stripe::TestHelpers::Issuing::DisputeProvisionalCreditParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Issuing::Dispute)
         }
        def provisional_credit(id, params = {}, opts = {}); end

        # Test helper: populates network_lifecycle.dispute_response on a test-mode Visa Issuing Dispute using placeholder file tokens. Only supported for Visa disputes.
        sig {
          params(id: String, params: T.any(::Stripe::TestHelpers::Issuing::DisputeSimulateNetworkLifecycleDisputeResponseParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Issuing::Dispute)
         }
        def simulate_network_lifecycle_dispute_response(id, params = {}, opts = {}); end

        # Test helper: populates network_lifecycle.pre_arbitration_response on a test-mode Visa Issuing Dispute using placeholder file tokens. Only supported for Visa disputes in the collaboration flow.
        sig {
          params(id: String, params: T.any(::Stripe::TestHelpers::Issuing::DisputeSimulateNetworkLifecyclePreArbitrationResponseParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Issuing::Dispute)
         }
        def simulate_network_lifecycle_pre_arbitration_response(id, params = {}, opts = {}); end

        # Test helper: populates network_lifecycle.pre_arbitration_submission on a test-mode Visa Issuing Dispute using placeholder file tokens. Only supported for Visa disputes.
        sig {
          params(id: String, params: T.any(::Stripe::TestHelpers::Issuing::DisputeSimulateNetworkLifecyclePreArbitrationSubmissionParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Issuing::Dispute)
         }
        def simulate_network_lifecycle_pre_arbitration_submission(id, params = {}, opts = {}); end
      end
    end
  end
end