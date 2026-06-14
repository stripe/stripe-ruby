# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      class ClaimableSandboxCreateParams < ::Stripe::RequestParams
        class OnboardingLinkDetails < ::Stripe::RequestParams
          # The URL the user will be redirected to if the onboarding link is expired or invalid.
          # The URL specified should attempt to generate a new onboarding link,
          # and re-direct the user to this new onboarding link so that they can proceed with the onboarding flow.
          attr_accessor :refresh_url

          def initialize(refresh_url: nil)
            @refresh_url = refresh_url
          end
        end

        class Prefill < ::Stripe::RequestParams
          # Country in which the account holder resides, or in which the business is legally established.
          # Use two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_accessor :country
          # Email that this sandbox is meant to be claimed by. Stripe will
          # notify this email address before the sandbox expires.
          attr_accessor :email
          # Name for the sandbox.
          attr_accessor :name

          def initialize(country: nil, email: nil, name: nil)
            @country = country
            @email = email
            @name = name
          end
        end
        # The app channel that will be used when pre-installing your app on the claimable sandbox.
        # This field defaults to `public` if omitted.
        attr_accessor :app_channel
        # If true, returns a key that can be used with [Stripe's MCP server](https://docs.stripe.com/mcp).
        attr_accessor :enable_mcp_access
        # Details about the onboarding link.
        attr_accessor :onboarding_link_details
        # Values that are prefilled when a user claims the sandbox. When a user claims the sandbox, they will be able to update these values.
        attr_accessor :prefill

        def initialize(
          app_channel: nil,
          enable_mcp_access: nil,
          onboarding_link_details: nil,
          prefill: nil
        )
          @app_channel = app_channel
          @enable_mcp_access = enable_mcp_access
          @onboarding_link_details = onboarding_link_details
          @prefill = prefill
        end
      end
    end
  end
end
