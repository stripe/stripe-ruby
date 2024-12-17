# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module FinancialConnections
    class AccountOwnerService < StripeService
      class ListParams < Stripe::RequestParams
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        attr_accessor :limit
        # The ID of the ownership object to fetch owners from.
        attr_accessor :ownership
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        attr_accessor :starting_after

        def initialize(
          ending_before: nil,
          expand: nil,
          limit: nil,
          ownership: nil,
          starting_after: nil
        )
          @ending_before = ending_before
          @expand = expand
          @limit = limit
          @ownership = ownership
          @starting_after = starting_after
        end
      end

      # Lists all owners for a given Account
      def list(account, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/financial_connections/accounts/%<account>s/owners", { account: CGI.escape(account) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
