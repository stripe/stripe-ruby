# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      class AccountLinkService < StripeService
        class CreateParams < Stripe::RequestParams
          class UseCase < Stripe::RequestParams
            class AccountOnboarding < Stripe::RequestParams
              # Open Enum. A v2/account can be configured to enable certain functionality. The configuration param targets the v2/account_link to collect information for the specified v2/account configuration/s.
              attr_accessor :configurations
              # The URL the user will be redirected to if the AccountLink is expired, has been used, or is otherwise invalid. The URL you specify should attempt to generate a new AccountLink with the same parameters used to create the original AccountLink, then redirect the user to the new AccountLink’s URL so they can continue the flow. If a new AccountLink cannot be generated or the redirect fails you should display a useful error to the user. Please make sure to implement authentication before redirecting the user in case this URL is leaked to a third party.
              attr_accessor :refresh_url
              # The URL that the user will be redirected to upon completing the linked flow.
              attr_accessor :return_url

              def initialize(configurations: nil, refresh_url: nil, return_url: nil)
                @configurations = configurations
                @refresh_url = refresh_url
                @return_url = return_url
              end
            end

            class AccountUpdate < Stripe::RequestParams
              # Open Enum. A v2/account can be configured to enable certain functionality. The configuration param targets the v2/account_link to collect information for the specified v2/account configuration/s.
              attr_accessor :configurations
              # The URL the user will be redirected to if the AccountLink is expired, has been used, or is otherwise invalid. The URL you specify should attempt to generate a new AccountLink with the same parameters used to create the original AccountLink, then redirect the user to the new AccountLink’s URL so they can continue the flow. If a new AccountLink cannot be generated or the redirect fails you should display a useful error to the user. Please make sure to implement authentication before redirecting the user in case this URL is leaked to a third party.
              attr_accessor :refresh_url
              # The URL that the user will be redirected to upon completing the linked flow.
              attr_accessor :return_url

              def initialize(configurations: nil, refresh_url: nil, return_url: nil)
                @configurations = configurations
                @refresh_url = refresh_url
                @return_url = return_url
              end
            end
            # Open Enum. The type of AccountLink the user is requesting.
            attr_accessor :type
            # Indicates that the AccountLink provided should onboard an account.
            attr_accessor :account_onboarding
            # Indicates that the AccountLink provided should update a previously onboarded account.
            attr_accessor :account_update

            def initialize(type: nil, account_onboarding: nil, account_update: nil)
              @type = type
              @account_onboarding = account_onboarding
              @account_update = account_update
            end
          end
          # The ID of the Account to create link for.
          attr_accessor :account
          # The use case of the AccountLink.
          attr_accessor :use_case

          def initialize(account: nil, use_case: nil)
            @account = account
            @use_case = use_case
          end
        end

        # Creates an AccountLink object that includes a single-use Stripe URL that the merchant can redirect their user to in order to take them to a Stripe-hosted application such as Recipient Onboarding.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/core/account_links",
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
