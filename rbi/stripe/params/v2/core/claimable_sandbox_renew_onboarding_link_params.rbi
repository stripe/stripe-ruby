# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      class ClaimableSandboxRenewOnboardingLinkParams < ::Stripe::RequestParams
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
        # Details about the onboarding link.
        # If omitted, the existing onboarding link details will be reused.
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