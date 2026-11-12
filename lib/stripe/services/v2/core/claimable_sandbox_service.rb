# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      class ClaimableSandboxService < StripeService
        # Create a claimable sandbox with prefilled data. The response includes an onboarding link that lets
        # a user claim the sandbox into a new or existing Stripe account.
        #
        # ** raises RateLimitError
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/core/claimable_sandboxes",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Renew the claimable sandbox onboarding link. This invalidates the existing onboarding link.
        # The endpoint only works on a claimable sandbox with status `unclaimed` or `claimed`.
        def renew_onboarding_link(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/core/claimable_sandboxes/%<id>s/renew_onboarding_link", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves the details of a claimable sandbox that was previously been created.
        # Supply the unique claimable sandbox ID that was returned from your creation request,
        # and Stripe will return the corresponding sandbox information.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/core/claimable_sandboxes/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
