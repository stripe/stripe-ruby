# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class ExternalAccountService < StripeService
    # Create an external account for a given connected account.
    sig {
      params(params: T.any(::Stripe::ExternalAccountCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(T.any(::Stripe::BankAccount, ::Stripe::Card))
     }
    def create(params = {}, opts = {}); end

    # Delete a specified external account for a given account.
    sig {
      params(id: String, params: T.any(::Stripe::ExternalAccountDeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(T.any(::Stripe::BankAccount, ::Stripe::Card))
     }
    def delete(id, params = {}, opts = {}); end

    # List external accounts for an account.
    sig {
      params(params: T.any(::Stripe::ExternalAccountListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # Retrieve a specified external account for a given account.
    sig {
      params(id: String, params: T.any(::Stripe::ExternalAccountRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(T.any(::Stripe::BankAccount, ::Stripe::Card))
     }
    def retrieve(id, params = {}, opts = {}); end

    # Updates the metadata, account holder name, account holder type of a bank account belonging to
    # a connected account and optionally sets it as the default for its currency. Other bank account
    # details are not editable by design.
    #
    # You can only update bank accounts when [account.controller.requirement_collection is application, which includes <a href="/connect/custom-accounts">Custom accounts](https://docs.stripe.com/api/accounts/object#account_object-controller-requirement_collection).
    #
    # You can re-enable a disabled bank account by performing an update call without providing any
    # arguments or changes.
    sig {
      params(id: String, params: T.any(::Stripe::ExternalAccountUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(T.any(::Stripe::BankAccount, ::Stripe::Card))
     }
    def update(id, params = {}, opts = {}); end
  end
end