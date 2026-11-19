# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      class ClaimableSandboxRenewOnboardingLinkParams < ::Stripe::RequestParams
        class OnboardingLinkDetails < ::Stripe::RequestParams
          # The URL the user will be redirected to if the onboarding link is expired or invalid.
          # If omitted, the existing refresh URL is retained.
          # The URL should generate a new onboarding link and redirect the user to it.
          sig { returns(T.nilable(String)) }
          def refresh_url; end
          sig { params(_refresh_url: T.nilable(String)).returns(T.nilable(String)) }
          def refresh_url=(_refresh_url); end
          # The URL offered to the user as a way back to your app after they claim the sandbox.
          # If omitted, the existing return URL is retained. Set to null to clear it.
          sig { returns(T.nilable(String)) }
          def return_url; end
          sig { params(_return_url: T.nilable(String)).returns(T.nilable(String)) }
          def return_url=(_return_url); end
          sig { params(refresh_url: T.nilable(String), return_url: T.nilable(String)).void }
          def initialize(refresh_url: nil, return_url: nil); end
        end
        # Details about the onboarding link. If omitted, existing details are reused.
        # Omitted URL fields retain their existing values.
        sig {
          returns(T.nilable(::Stripe::V2::Core::ClaimableSandboxRenewOnboardingLinkParams::OnboardingLinkDetails))
         }
        def onboarding_link_details; end
        sig {
          params(_onboarding_link_details: T.nilable(::Stripe::V2::Core::ClaimableSandboxRenewOnboardingLinkParams::OnboardingLinkDetails)).returns(T.nilable(::Stripe::V2::Core::ClaimableSandboxRenewOnboardingLinkParams::OnboardingLinkDetails))
         }
        def onboarding_link_details=(_onboarding_link_details); end
        sig {
          params(onboarding_link_details: T.nilable(::Stripe::V2::Core::ClaimableSandboxRenewOnboardingLinkParams::OnboardingLinkDetails)).void
         }
        def initialize(onboarding_link_details: nil); end
      end
    end
  end
end