# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class AccountService < StripeService
    attr_reader :capabilities, :external_accounts, :login_links, :persons

    def initialize(requestor)
      super(requestor)
      @capabilities = Stripe::AccountCapabilityService.new(@requestor)
      @external_accounts = Stripe::AccountExternalAccountService.new(@requestor)
      @login_links = Stripe::AccountLoginLinkService.new(@requestor)
      @persons = Stripe::AccountPersonService.new(@requestor)
    end

    # With [Connect](https://stripe.com/docs/connect), you can create Stripe accounts for your users.
    # To do this, you'll first need to [register your platform](https://dashboard.stripe.com/account/applications/settings).
    #
    # If you've already collected information for your connected accounts, you [can prefill that information](https://stripe.com/docs/connect/best-practices#onboarding) when
    # creating the account. Connect Onboarding won't ask for the prefilled information during account onboarding.
    # You can prefill any information on the account.
    def create(params = {}, opts = {})
      request(method: :post, path: "/v1/accounts", params: params, opts: opts, base_address: :api)
    end

    # With [Connect](https://stripe.com/connect), you can delete accounts you manage.
    #
    # Test-mode accounts can be deleted at any time.
    #
    # Live-mode accounts where Stripe is responsible for negative account balances cannot be deleted, which includes Standard accounts. Live-mode accounts where your platform is liable for negative account balances, which includes Custom and Express accounts, can be deleted when all [balances](https://stripe.com/api/balance/balance_object) are zero.
    #
    # If you want to delete your own account, use the [account information tab in your account settings](https://dashboard.stripe.com/settings/account) instead.
    def delete(account, params = {}, opts = {})
      request(
        method: :delete,
        path: format("/v1/accounts/%<account>s", { account: CGI.escape(account) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Returns a list of accounts connected to your platform via [Connect](https://stripe.com/docs/connect). If you're not a platform, the list is empty.
    def list(params = {}, opts = {})
      request(method: :get, path: "/v1/accounts", params: params, opts: opts, base_address: :api)
    end

    # With [Connect](https://stripe.com/connect), you can reject accounts that you have flagged as suspicious.
    #
    # Only accounts where your platform is liable for negative account balances, which includes Custom and Express accounts, can be rejected. Test-mode accounts can be rejected at any time. Live-mode accounts can only be rejected after all balances are zero.
    def reject(account, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/accounts/%<account>s/reject", { account: CGI.escape(account) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieves the details of an account.
    def retrieve(account, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/accounts/%<account>s", { account: CGI.escape(account) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieves the details of an account.
    def retrieve_current(params = {}, opts = {})
      request(method: :get, path: "/v1/account", params: params, opts: opts, base_address: :api)
    end

    # Updates a [connected account](https://stripe.com/connect/accounts) by setting the values of the parameters passed. Any parameters not provided are
    # left unchanged.
    #
    # For accounts where [controller.requirement_collection](https://stripe.com/api/accounts/object#account_object-controller-requirement_collection)
    # is application, which includes Custom accounts, you can update any information on the account.
    #
    # For accounts where [controller.requirement_collection](https://stripe.com/api/accounts/object#account_object-controller-requirement_collection)
    # is stripe, which includes Standard and Express accounts, you can update all information until you create
    # an [Account Link or <a href="/api/account_sessions">Account Session](https://stripe.com/api/account_links) to start Connect onboarding,
    # after which some properties can no longer be updated.
    #
    # To update your own account, use the [Dashboard](https://dashboard.stripe.com/settings/account). Refer to our
    # [Connect](https://stripe.com/docs/connect/updating-accounts) documentation to learn more about updating accounts.
    def update(account, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/accounts/%<account>s", { account: CGI.escape(account) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
