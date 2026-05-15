# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module TestHelpers
    module Issuing
      class DisputeService < StripeService
        # Test helper: closes a test-mode Issuing dispute as won or lost.
        def close(dispute, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v1/test_helpers/issuing/disputes/%<dispute>s/close", { dispute: CGI.escape(dispute) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Test helper: populates network_lifecycle.dispute_response on a test-mode Visa Issuing Dispute using placeholder file tokens. Only supported for Visa disputes.
        def simulate_network_lifecycle_dispute_response(dispute, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v1/test_helpers/issuing/disputes/%<dispute>s/simulate_network_lifecycle_dispute_response", { dispute: CGI.escape(dispute) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Test helper: populates network_lifecycle.pre_arbitration_response on a test-mode Visa Issuing Dispute using placeholder file tokens. Only supported for Visa disputes in the collaboration flow.
        def simulate_network_lifecycle_pre_arbitration_response(dispute, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v1/test_helpers/issuing/disputes/%<dispute>s/simulate_network_lifecycle_pre_arbitration_response", { dispute: CGI.escape(dispute) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Test helper: populates network_lifecycle.pre_arbitration_submission on a test-mode Visa Issuing Dispute using placeholder file tokens. Only supported for Visa disputes.
        def simulate_network_lifecycle_pre_arbitration_submission(dispute, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v1/test_helpers/issuing/disputes/%<dispute>s/simulate_network_lifecycle_pre_arbitration_submission", { dispute: CGI.escape(dispute) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
