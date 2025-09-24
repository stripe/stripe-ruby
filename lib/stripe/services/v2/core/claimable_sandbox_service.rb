# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      class ClaimableSandboxService < StripeService
        class CreateParams < Stripe::RequestParams
          class Prefill < Stripe::RequestParams
            # Country in which the account holder resides, or in which the business is legally established.
            # Use two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            attr_accessor :country
            # Email that this sandbox is meant to be claimed by. Stripe will
            # notify this email address before the sandbox expires.
            attr_accessor :email
            # Name for the sandbox. If not provided, this will be generated.
            attr_accessor :name

            def initialize(country: nil, email: nil, name: nil)
              @country = country
              @email = email
              @name = name
            end
          end
          # If true, returns a key that can be used with [Stripe's MCP server](https://docs.stripe.com/mcp).
          attr_accessor :enable_mcp_access
          # Values that are prefilled when a user claims the sandbox. When a user claims the sandbox, they will be able to update these values.
          attr_accessor :prefill

          def initialize(enable_mcp_access: nil, prefill: nil)
            @enable_mcp_access = enable_mcp_access
            @prefill = prefill
          end
        end

        class RetrieveParams < Stripe::RequestParams; end

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
