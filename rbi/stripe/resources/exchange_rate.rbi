# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # `ExchangeRate` objects allow you to determine the rates that Stripe is currently
  # using to convert from one currency to another. Since this number is variable
  # throughout the day, there are various reasons why you might want to know the current
  # rate (for example, to dynamically price an item for a user with a default
  # payment in a foreign currency).
  #
  # Please refer to our [Exchange Rates API](https://stripe.com/docs/fx-rates) guide for more details.
  #
  # *[Note: this integration path is supported but no longer recommended]* Additionally,
  # you can guarantee that a charge is made with an exchange rate that you expect is
  # current. To do so, you must pass in the exchange_rate to charges endpoints. If the
  # value is no longer up to date, the charge won't go through. Please refer to our
  # [Using with charges](https://stripe.com/docs/exchange-rates) guide for more details.
  #
  # -----
  #
  # &nbsp;
  #
  # *This Exchange Rates API is a Beta Service and is subject to Stripe's terms of service. You may use the API solely for the purpose of transacting on Stripe. For example, the API may be queried in order to:*
  #
  # - *localize prices for processing payments on Stripe*
  # - *reconcile Stripe transactions*
  # - *determine how much money to send to a connected account*
  # - *determine app fees to charge a connected account*
  #
  # *Using this Exchange Rates API beta for any purpose other than to transact on Stripe is strictly prohibited and constitutes a violation of Stripe's terms of service.*
  class ExchangeRate < APIResource
    # Unique identifier for the object. Represented as the three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) in lowercase.
    sig { returns(String) }
    attr_reader :id
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object
    # Hash where the keys are supported currencies and the values are the exchange rate at which the base id currency converts to the key currency.
    sig { returns(T::Hash[String, Float]) }
    attr_reader :rates
    class ListParams < Stripe::RequestParams
      # A cursor for use in pagination. `ending_before` is the currency that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with the exchange rate for currency X your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and total number of supported payout currencies, and the default is the max.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is the currency that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with the exchange rate for currency X, your subsequent call can include `starting_after=X` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :starting_after
      sig {
        params(ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
       }
      def initialize(ending_before: nil, expand: nil, limit: nil, starting_after: nil); end
    end
    # Returns a list of objects that contain the rates at which foreign currencies are converted to one another. Only shows the currencies for which Stripe supports.
    sig {
      params(params: T.any(::Stripe::ExchangeRate::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def self.list(params = {}, opts = {}); end
  end
end