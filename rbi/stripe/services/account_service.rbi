# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class AccountService < StripeService
    attr_reader :capabilities
    attr_reader :external_accounts
    attr_reader :login_links
    attr_reader :persons
    # With [Connect](https://docs.stripe.com/docs/connect), you can create Stripe accounts for your users.
    # To do this, you'll first need to [register your platform](https://dashboard.stripe.com/account/applications/settings).
    #
    # If you've already collected information for your connected accounts, you [can prefill that information](https://docs.stripe.com/docs/connect/best-practices#onboarding) when
    # creating the account. Connect Onboarding won't ask for the prefilled information during account onboarding.
    # You can prefill any information on the account.
    sig {
      params(params: T.any(::Stripe::AccountCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Account)
     }
    def create(params = {}, opts = {}); end

    # With [Connect](https://docs.stripe.com/connect), you can delete accounts you manage.
    #
    # Test-mode accounts can be deleted at any time.
    #
    # Live-mode accounts that have access to the standard dashboard and Stripe is responsible for negative account balances cannot be deleted, which includes Standard accounts. All other Live-mode accounts, can be deleted when all [balances](https://docs.stripe.com/api/balance/balance_object) are zero.
    #
    # If you want to delete your own account, use the [account information tab in your account settings](https://dashboard.stripe.com/settings/account) instead.
    sig {
      params(account: String, params: T.any(::Stripe::AccountDeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Account)
     }
    def delete(account, params = {}, opts = {}); end

    # Returns a list of accounts connected to your platform via [Connect](https://docs.stripe.com/docs/connect). If you're not a platform, the list is empty.
    sig {
      params(params: T.any(::Stripe::AccountListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # With [Connect](https://docs.stripe.com/connect), you can reject accounts that you have flagged as suspicious.
    #
    # Only accounts where your platform is liable for negative account balances, which includes Custom and Express accounts, can be rejected. Test-mode accounts can be rejected at any time. Live-mode accounts can only be rejected after all balances are zero.
    sig {
      params(account: String, params: T.any(::Stripe::AccountRejectParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Account)
     }
    def reject(account, params = {}, opts = {}); end

    # Retrieves the details of an account.
    sig {
      params(account: String, params: T.any(::Stripe::AccountRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Account)
     }
    def retrieve(account, params = {}, opts = {}); end

    # Retrieves the details of an account.
    sig {
      params(params: T.any(::Stripe::AccountRetrieveCurrentParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Account)
     }
    def retrieve_current(params = {}, opts = {}); end

    # Updates a [connected account](https://docs.stripe.com/connect/accounts) by setting the values of the parameters passed. Any parameters not provided are
    # left unchanged.
    #
    # For accounts where [controller.requirement_collection](https://docs.stripe.com/api/accounts/object#account_object-controller-requirement_collection)
    # is application, which includes Custom accounts, you can update any information on the account.
    #
    # For accounts where [controller.requirement_collection](https://docs.stripe.com/api/accounts/object#account_object-controller-requirement_collection)
    # is stripe, which includes Standard and Express accounts, you can update all information until you create
    # an [Account Link or <a href="/api/account_sessions">Account Session](https://docs.stripe.com/api/account_links) to start Connect onboarding,
    # after which some properties can no longer be updated.
    #
    # To update your own account, use the [Dashboard](https://dashboard.stripe.com/settings/account). Refer to our
    # [Connect](https://docs.stripe.com/docs/connect/updating-accounts) documentation to learn more about updating accounts.
    sig {
      params(account: String, params: T.any(::Stripe::AccountUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Account)
     }
    def update(account, params = {}, opts = {}); end
  end
end