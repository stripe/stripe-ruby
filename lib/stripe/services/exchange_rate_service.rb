# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class ExchangeRateService < StripeService
    class ListParams < Stripe::RequestParams
      # A cursor for use in pagination. `ending_before` is the currency that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with the exchange rate for currency X your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and total number of supported payout currencies, and the default is the max.
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is the currency that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with the exchange rate for currency X, your subsequent call can include `starting_after=X` in order to fetch the next page of the list.
      attr_accessor :starting_after

      def initialize(ending_before: nil, expand: nil, limit: nil, starting_after: nil)
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @starting_after = starting_after
      end
    end

    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

    # Returns a list of objects that contain the rates at which foreign currencies are converted to one another. Only shows the currencies for which Stripe supports.
    def list(params = {}, opts = {})
      request(
        method: :get,
        path: "/v1/exchange_rates",
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieves the exchange rates from the given currency to every supported currency.
    def retrieve(rate_id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/exchange_rates/%<rate_id>s", { rate_id: CGI.escape(rate_id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
