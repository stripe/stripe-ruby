# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class AccountLinkService < StripeService
    class CreateParams < Stripe::RequestParams
      class CollectionOptions < Stripe::RequestParams
        # Specifies whether the platform collects only currently_due requirements (`currently_due`) or both currently_due and eventually_due requirements (`eventually_due`). If you don't specify `collection_options`, the default value is `currently_due`.
        attr_accessor :fields
        # Specifies whether the platform collects future_requirements in addition to requirements in Connect Onboarding. The default value is `omit`.
        attr_accessor :future_requirements

        def initialize(fields: nil, future_requirements: nil)
          @fields = fields
          @future_requirements = future_requirements
        end
      end
      # The identifier of the account to create an account link for.
      attr_accessor :account
      # The collect parameter is deprecated. Use `collection_options` instead.
      attr_accessor :collect
      # Specifies the requirements that Stripe collects from connected accounts in the Connect Onboarding flow.
      attr_accessor :collection_options
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # The URL the user will be redirected to if the account link is expired, has been previously-visited, or is otherwise invalid. The URL you specify should attempt to generate a new account link with the same parameters used to create the original account link, then redirect the user to the new account link's URL so they can continue with Connect Onboarding. If a new account link cannot be generated or the redirect fails you should display a useful error to the user.
      attr_accessor :refresh_url
      # The URL that the user will be redirected to upon leaving or completing the linked flow.
      attr_accessor :return_url
      # The type of account link the user is requesting. Possible values are `account_onboarding` or `account_update`.
      attr_accessor :type

      def initialize(
        account: nil,
        collect: nil,
        collection_options: nil,
        expand: nil,
        refresh_url: nil,
        return_url: nil,
        type: nil
      )
        @account = account
        @collect = collect
        @collection_options = collection_options
        @expand = expand
        @refresh_url = refresh_url
        @return_url = return_url
        @type = type
      end
    end

    # Creates an AccountLink object that includes a single-use Stripe URL that the platform can redirect their user to in order to take them through the Connect Onboarding flow.
    def create(params = {}, opts = {})
      request(
        method: :post,
        path: "/v1/account_links",
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
