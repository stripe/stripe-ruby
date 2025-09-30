# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      class ClaimableSandboxService < StripeService
        # Create an anonymous, claimable sandbox. This sandbox can be prefilled with data. The response will include
        # a claim URL that allow a user to claim the account.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/core/claimable_sandboxes",
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
