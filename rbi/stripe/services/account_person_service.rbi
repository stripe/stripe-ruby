# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class AccountPersonService < StripeService
    # Creates a new person.
    sig {
      params(id: String, params: T.any(::Stripe::AccountPersonCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Person)
     }
    def create(id, params = {}, opts = {}); end

    # Deletes an existing person's relationship to the account's legal entity. Any person with a relationship for an account can be deleted through the API, except if the person is the representative. If your integration is using the executive parameter, you cannot delete the only verified executive on file.
    sig {
      params(account_id: String, id: String, params: T.any(::Stripe::AccountPersonDeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Person)
     }
    def delete(account_id, id, params = {}, opts = {}); end

    # Returns a list of people associated with the account's legal entity. The people are returned sorted by creation date, with the most recent people appearing first.
    sig {
      params(id: String, params: T.any(::Stripe::AccountPersonListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
     }
    def list(id, params = {}, opts = {}); end

    # Retrieves an existing person.
    sig {
      params(account_id: String, id: String, params: T.any(::Stripe::AccountPersonRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Person)
     }
    def retrieve(account_id, id, params = {}, opts = {}); end

    # Updates an existing person.
    sig {
      params(account_id: String, id: String, params: T.any(::Stripe::AccountPersonUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Person)
     }
    def update(account_id, id, params = {}, opts = {}); end
  end
end