# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      class ClaimableSandboxCreateParams < ::Stripe::RequestParams
        class OnboardingLinkDetails < ::Stripe::RequestParams
          # The URL the user will be redirected to if the onboarding link is expired or invalid.
          # The URL specified should attempt to generate a new onboarding link,
          # and re-direct the user to this new onboarding link so that they can proceed with the onboarding flow.
          sig { returns(String) }
          def refresh_url; end
          sig { params(_refresh_url: String).returns(String) }
          def refresh_url=(_refresh_url); end
          sig { params(refresh_url: String).void }
          def initialize(refresh_url: nil); end
        end
        class Prefill < ::Stripe::RequestParams
          # Country in which the account holder resides, or in which the business is legally established.
          # Use two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(String) }
          def country; end
          sig { params(_country: String).returns(String) }
          def country=(_country); end
          # Email that this sandbox is meant to be claimed by. Stripe will
          # notify this email address before the sandbox expires.
          sig { returns(String) }
          def email; end
          sig { params(_email: String).returns(String) }
          def email=(_email); end
          # Name for the sandbox.
          sig { returns(T.nilable(String)) }
          def name; end
          sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
          def name=(_name); end
          sig { params(country: String, email: String, name: T.nilable(String)).void }
          def initialize(country: nil, email: nil, name: nil); end
        end
        # The app channel that will be used when pre-installing your app on the claimable sandbox.
        # This field defaults to `public` if omitted.
        sig { returns(T.nilable(String)) }
        def app_channel; end
        sig { params(_app_channel: T.nilable(String)).returns(T.nilable(String)) }
        def app_channel=(_app_channel); end
        # If true, returns a key that can be used with [Stripe's MCP server](https://docs.stripe.com/mcp).
        sig { returns(T::Boolean) }
        def enable_mcp_access; end
        sig { params(_enable_mcp_access: T::Boolean).returns(T::Boolean) }
        def enable_mcp_access=(_enable_mcp_access); end
        # Details about the onboarding link.
        sig { returns(::Stripe::V2::Core::ClaimableSandboxCreateParams::OnboardingLinkDetails) }
        def onboarding_link_details; end
        sig {
          params(_onboarding_link_details: ::Stripe::V2::Core::ClaimableSandboxCreateParams::OnboardingLinkDetails).returns(::Stripe::V2::Core::ClaimableSandboxCreateParams::OnboardingLinkDetails)
         }
        def onboarding_link_details=(_onboarding_link_details); end
        # Values that are prefilled when a user claims the sandbox. When a user claims the sandbox, they will be able to update these values.
        sig { returns(::Stripe::V2::Core::ClaimableSandboxCreateParams::Prefill) }
        def prefill; end
        sig {
          params(_prefill: ::Stripe::V2::Core::ClaimableSandboxCreateParams::Prefill).returns(::Stripe::V2::Core::ClaimableSandboxCreateParams::Prefill)
         }
        def prefill=(_prefill); end
        sig {
          params(app_channel: T.nilable(String), enable_mcp_access: T::Boolean, onboarding_link_details: ::Stripe::V2::Core::ClaimableSandboxCreateParams::OnboardingLinkDetails, prefill: ::Stripe::V2::Core::ClaimableSandboxCreateParams::Prefill).void
         }
        def initialize(
          app_channel: nil,
          enable_mcp_access: nil,
          onboarding_link_details: nil,
          prefill: nil
        ); end
      end
    end
  end
end