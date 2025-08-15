# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    # AccountLinks are the means by which a Merchant grants an Account permission to access Stripe-hosted application, such as Recipient Onboarding.
    class AccountLink < APIResource
      OBJECT_NAME = "account_link"
      def self.object_name
        "account_link"
      end

      class UseCase < Stripe::StripeObject
        class AccountOnboarding < Stripe::StripeObject
          # Open Enum. A v2/account can be configured to enable certain functionality. The configuration param targets the v2/account_link to collect information for the specified v2/account configuration/s.
          attr_reader :configurations
          # The URL the user will be redirected to if the AccountLink is expired, has been used, or is otherwise invalid. The URL you specify should attempt to generate a new AccountLink with the same parameters used to create the original AccountLink, then redirect the user to the new AccountLink’s URL so they can continue the flow. If a new AccountLink cannot be generated or the redirect fails you should display a useful error to the user. Please make sure to implement authentication before redirecting the user in case this URL is leaked to a third party.
          attr_reader :refresh_url
          # The URL that the user will be redirected to upon completing the linked flow.
          attr_reader :return_url
        end

        class AccountUpdate < Stripe::StripeObject
          # Open Enum. A v2/account can be configured to enable certain functionality. The configuration param targets the v2/account_link to collect information for the specified v2/account configuration/s.
          attr_reader :configurations
          # The URL the user will be redirected to if the AccountLink is expired, has been used, or is otherwise invalid. The URL you specify should attempt to generate a new AccountLink with the same parameters used to create the original AccountLink, then redirect the user to the new AccountLink’s URL so they can continue the flow. If a new AccountLink cannot be generated or the redirect fails you should display a useful error to the user. Please make sure to implement authentication before redirecting the user in case this URL is leaked to a third party.
          attr_reader :refresh_url
          # The URL that the user will be redirected to upon completing the linked flow.
          attr_reader :return_url
        end
        # Open Enum. The type of AccountLink the user is requesting.
        attr_reader :type
        # Indicates that the AccountLink provided should onboard an account.
        attr_reader :account_onboarding
        # Indicates that the AccountLink provided should update a previously onboarded account.
        attr_reader :account_update
      end
      # The ID of the Account the link was created for.
      attr_reader :account
      # The timestamp at which this AccountLink was created.
      attr_reader :created
      # The timestamp at which this AccountLink will expire.
      attr_reader :expires_at
      # String representing the object's type. Objects of the same type share the same value of the object field.
      attr_reader :object
      # The URL for the AccountLink.
      attr_reader :url
      # The use case of AccountLink the user is requesting.
      attr_reader :use_case
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
    end
  end
end
