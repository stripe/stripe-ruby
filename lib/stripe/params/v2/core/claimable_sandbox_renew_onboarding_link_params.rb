# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      class ClaimableSandboxRenewOnboardingLinkParams < ::Stripe::RequestParams
        class OnboardingLinkDetails < ::Stripe::RequestParams
          # The URL the user will be redirected to if the onboarding link is expired or invalid.
          # The URL specified should attempt to generate a new onboarding link,
          # and re-direct the user to this new onboarding link so that they can proceed with the onboarding flow.
          attr_accessor :refresh_url

          def initialize(refresh_url: nil)
            @refresh_url = refresh_url
          end
        end
        # Details about the onboarding link.
        # If omitted, the existing onboarding link details will be reused.
        attr_accessor :onboarding_link_details

        def initialize(onboarding_link_details: nil)
          @onboarding_link_details = onboarding_link_details
        end
      end
    end
  end
end
