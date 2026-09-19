# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Provisioning
      class EligibilityService < StripeService
        # Checks whether a project is eligible to provision resources with a provider, including
        # any outstanding KYC requirements that must be satisfied first.
        def retrieve(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/provisioning/eligibility",
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
