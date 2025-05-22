# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class PayoutService < StripeService
    class ListParams < Stripe::RequestParams
      class ArrivalDate < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        attr_accessor :gt
        # Minimum value to filter by (inclusive)
        attr_accessor :gte
        # Maximum value to filter by (exclusive)
        attr_accessor :lt
        # Maximum value to filter by (inclusive)
        attr_accessor :lte

        def initialize(gt: nil, gte: nil, lt: nil, lte: nil)
          @gt = gt
          @gte = gte
          @lt = lt
          @lte = lte
        end
      end

      class Created < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        attr_accessor :gt
        # Minimum value to filter by (inclusive)
        attr_accessor :gte
        # Maximum value to filter by (exclusive)
        attr_accessor :lt
        # Maximum value to filter by (inclusive)
        attr_accessor :lte

        def initialize(gt: nil, gte: nil, lt: nil, lte: nil)
          @gt = gt
          @gte = gte
          @lt = lt
          @lte = lte
        end
      end
      # Only return payouts that are expected to arrive during the given date interval.
      attr_accessor :arrival_date
      # Only return payouts that were created during the given date interval.
      attr_accessor :created
      # The ID of an external account - only return payouts sent to this external account.
      attr_accessor :destination
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after
      # Only return payouts that have the given status: `pending`, `paid`, `failed`, or `canceled`.
      attr_accessor :status

      def initialize(
        arrival_date: nil,
        created: nil,
        destination: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        starting_after: nil,
        status: nil
      )
        @arrival_date = arrival_date
        @created = created
        @destination = destination
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @starting_after = starting_after
        @status = status
      end
    end

    class CreateParams < Stripe::RequestParams
      # A positive integer in cents representing how much to payout.
      attr_accessor :amount
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_accessor :currency
      # An arbitrary string attached to the object. Often useful for displaying to users.
      attr_accessor :description
      # The ID of a bank account or a card to send the payout to. If you don't provide a destination, we use the default external account for the specified currency.
      attr_accessor :destination
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # The method used to send this payout, which is `standard` or `instant`. We support `instant` for payouts to debit cards and bank accounts in certain countries. Learn more about [bank support for Instant Payouts](https://stripe.com/docs/payouts/instant-payouts-banks).
      attr_accessor :method
      # The balance type of your Stripe balance to draw this payout from. Balances for different payment sources are kept separately. You can find the amounts with the Balances API. One of `bank_account`, `card`, or `fpx`.
      attr_accessor :source_type
      # A string that displays on the recipient's bank or card statement (up to 22 characters). A `statement_descriptor` that's longer than 22 characters return an error. Most banks truncate this information and display it inconsistently. Some banks might not display it at all.
      attr_accessor :statement_descriptor

      def initialize(
        amount: nil,
        currency: nil,
        description: nil,
        destination: nil,
        expand: nil,
        metadata: nil,
        method: nil,
        source_type: nil,
        statement_descriptor: nil
      )
        @amount = amount
        @currency = currency
        @description = description
        @destination = destination
        @expand = expand
        @metadata = metadata
        @method = method
        @source_type = source_type
        @statement_descriptor = statement_descriptor
      end
    end

    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

    class UpdateParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata

      def initialize(expand: nil, metadata: nil)
        @expand = expand
        @metadata = metadata
      end
    end

    class CancelParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

    class ReverseParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata

      def initialize(expand: nil, metadata: nil)
        @expand = expand
        @metadata = metadata
      end
    end

    # You can cancel a previously created payout if its status is pending. Stripe refunds the funds to your available balance. You can't cancel automatic Stripe payouts.
    def cancel(payout, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/payouts/%<payout>s/cancel", { payout: CGI.escape(payout) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # To send funds to your own bank account, create a new payout object. Your [Stripe balance](https://docs.stripe.com/api#balance) must cover the payout amount. If it doesn't, you receive an “Insufficient Funds” error.
    #
    # If your API key is in test mode, money won't actually be sent, though every other action occurs as if you're in live mode.
    #
    # If you create a manual payout on a Stripe account that uses multiple payment source types, you need to specify the source type balance that the payout draws from. The [balance object](https://docs.stripe.com/api#balance_object) details available and pending amounts by source type.
    def create(params = {}, opts = {})
      request(method: :post, path: "/v1/payouts", params: params, opts: opts, base_address: :api)
    end

    # Returns a list of existing payouts sent to third-party bank accounts or payouts that Stripe sent to you. The payouts return in sorted order, with the most recently created payouts appearing first.
    def list(params = {}, opts = {})
      request(method: :get, path: "/v1/payouts", params: params, opts: opts, base_address: :api)
    end

    # Retrieves the details of an existing payout. Supply the unique payout ID from either a payout creation request or the payout list. Stripe returns the corresponding payout information.
    def retrieve(payout, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/payouts/%<payout>s", { payout: CGI.escape(payout) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Reverses a payout by debiting the destination bank account. At this time, you can only reverse payouts for connected accounts to US bank accounts. If the payout is manual and in the pending status, use /v1/payouts/:id/cancel instead.
    #
    # By requesting a reversal through /v1/payouts/:id/reverse, you confirm that the authorized signatory of the selected bank account authorizes the debit on the bank account and that no other authorization is required.
    def reverse(payout, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/payouts/%<payout>s/reverse", { payout: CGI.escape(payout) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Updates the specified payout by setting the values of the parameters you pass. We don't change parameters that you don't provide. This request only accepts the metadata as arguments.
    def update(payout, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/payouts/%<payout>s", { payout: CGI.escape(payout) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
