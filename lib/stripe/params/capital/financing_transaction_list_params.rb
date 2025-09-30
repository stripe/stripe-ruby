# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Capital
    class FinancingTransactionListParams < Stripe::RequestParams
      # For transactions of type `paydown` and reason `automatic_withholding` only, only returns transactions that were created as a result of this charge.
      attr_accessor :charge
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Returns transactions that were created that apply to this financing offer ID.
      attr_accessor :financing_offer
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # Only returns transactions that are responsible for reversing this financing transaction ID.
      attr_accessor :reversed_transaction
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after
      # For transactions of type `paydown` and reason `automatic_withholding` only, only returns transactions that were created as a result of this Treasury Transaction.
      attr_accessor :treasury_transaction

      def initialize(
        charge: nil,
        ending_before: nil,
        expand: nil,
        financing_offer: nil,
        limit: nil,
        reversed_transaction: nil,
        starting_after: nil,
        treasury_transaction: nil
      )
        @charge = charge
        @ending_before = ending_before
        @expand = expand
        @financing_offer = financing_offer
        @limit = limit
        @reversed_transaction = reversed_transaction
        @starting_after = starting_after
        @treasury_transaction = treasury_transaction
      end
    end
  end
end
