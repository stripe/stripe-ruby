# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      class ClaimableSandboxRenewOnboardingLinkParams < ::Stripe::RequestParams
        class OnboardingLinkDetails < ::Stripe::RequestParams
          # The URL the user will be redirected to if the onboarding link is expired or invalid.
          # If omitted, the existing refresh URL is retained.
          # The URL should generate a new onboarding link and redirect the user to it.
          attr_accessor :refresh_url
          # The URL offered to the user as a way back to your app after they claim the sandbox.
          # If omitted, the existing return URL is retained. Set to null to clear it.
          attr_accessor :return_url

          def initialize(refresh_url: nil, return_url: nil)
            @refresh_url = refresh_url
            @return_url = return_url
          end
        end
        # Details about the onboarding link. If omitted, existing details are reused.
        # Omitted URL fields retain their existing values.
        attr_accessor :onboarding_link_details

        def initialize(onboarding_link_details: nil)
          @onboarding_link_details = onboarding_link_details
        end
      end
    end
  end
end
