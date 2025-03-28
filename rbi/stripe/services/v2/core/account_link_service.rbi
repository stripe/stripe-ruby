# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      class AccountLinkService < StripeService
        class CreateParams < Stripe::RequestParams
          class UseCase < Stripe::RequestParams
            class AccountOnboarding < Stripe::RequestParams
              # Open Enum. A v2/account can be configured to enable certain functionality. The configuration param targets the v2/account_link to collect information for the specified v2/account configuration/s.
              sig { returns(T::Array[String]) }
              attr_accessor :configurations
              # The URL the user will be redirected to if the AccountLink is expired, has been used, or is otherwise invalid. The URL you specify should attempt to generate a new AccountLink with the same parameters used to create the original AccountLink, then redirect the user to the new AccountLink’s URL so they can continue the flow. If a new AccountLink cannot be generated or the redirect fails you should display a useful error to the user. Please make sure to implement authentication before redirecting the user in case this URL is leaked to a third party.
              sig { returns(String) }
              attr_accessor :refresh_url
              # The URL that the user will be redirected to upon completing the linked flow.
              sig { returns(String) }
              attr_accessor :return_url
              sig {
                params(configurations: T::Array[String], refresh_url: String, return_url: String).void
               }
              def initialize(configurations: nil, refresh_url: nil, return_url: nil); end
            end
            class AccountUpdate < Stripe::RequestParams
              # Open Enum. A v2/account can be configured to enable certain functionality. The configuration param targets the v2/account_link to collect information for the specified v2/account configuration/s.
              sig { returns(T::Array[String]) }
              attr_accessor :configurations
              # The URL the user will be redirected to if the AccountLink is expired, has been used, or is otherwise invalid. The URL you specify should attempt to generate a new AccountLink with the same parameters used to create the original AccountLink, then redirect the user to the new AccountLink’s URL so they can continue the flow. If a new AccountLink cannot be generated or the redirect fails you should display a useful error to the user. Please make sure to implement authentication before redirecting the user in case this URL is leaked to a third party.
              sig { returns(String) }
              attr_accessor :refresh_url
              # The URL that the user will be redirected to upon completing the linked flow.
              sig { returns(String) }
              attr_accessor :return_url
              sig {
                params(configurations: T::Array[String], refresh_url: String, return_url: String).void
               }
              def initialize(configurations: nil, refresh_url: nil, return_url: nil); end
            end
            # Open Enum. The type of AccountLink the user is requesting.
            sig { returns(String) }
            attr_accessor :type
            # Indicates that the AccountLink provided should onboard an account.
            sig {
              returns(::Stripe::V2::Core::AccountLinkService::CreateParams::UseCase::AccountOnboarding)
             }
            attr_accessor :account_onboarding
            # Indicates that the AccountLink provided should update a previously onboarded account.
            sig {
              returns(::Stripe::V2::Core::AccountLinkService::CreateParams::UseCase::AccountUpdate)
             }
            attr_accessor :account_update
            sig {
              params(type: String, account_onboarding: ::Stripe::V2::Core::AccountLinkService::CreateParams::UseCase::AccountOnboarding, account_update: ::Stripe::V2::Core::AccountLinkService::CreateParams::UseCase::AccountUpdate).void
             }
            def initialize(type: nil, account_onboarding: nil, account_update: nil); end
          end
          # The ID of the Account to create link for.
          sig { returns(String) }
          attr_accessor :account
          # The use case of the AccountLink.
          sig { returns(::Stripe::V2::Core::AccountLinkService::CreateParams::UseCase) }
          attr_accessor :use_case
          sig {
            params(account: String, use_case: ::Stripe::V2::Core::AccountLinkService::CreateParams::UseCase).void
           }
          def initialize(account: nil, use_case: nil); end
        end
        # Creates an AccountLink object that includes a single-use Stripe URL that the merchant can redirect their user to in order to take them to a Stripe-hosted application such as Recipient Onboarding.
        sig {
          params(params: T.any(::Stripe::V2::Core::AccountLinkService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Core::AccountLink)
         }
        def create(params = {}, opts = {}); end
      end
    end
  end
end