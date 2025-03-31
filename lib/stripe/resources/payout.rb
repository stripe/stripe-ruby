# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A `Payout` object is created when you receive funds from Stripe, or when you
  # initiate a payout to either a bank account or debit card of a [connected
  # Stripe account](https://stripe.com/docs/connect/bank-debit-card-payouts). You can retrieve individual payouts,
  # and list all payouts. Payouts are made on [varying
  # schedules](https://stripe.com/docs/connect/manage-payout-schedule), depending on your country and
  # industry.
  #
  # Related guide: [Receiving payouts](https://stripe.com/docs/payouts)
  class Payout < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "payout"
    def self.object_name
      "payout"
    end

    class TraceId < Stripe::StripeObject
      # Possible values are `pending`, `supported`, and `unsupported`. When `payout.status` is `pending` or `in_transit`, this will be `pending`. When the payout transitions to `paid`, `failed`, or `canceled`, this status will become `supported` or `unsupported` shortly after in most cases. In some cases, this may appear as `pending` for up to 10 days after `arrival_date` until transitioning to `supported` or `unsupported`.
      attr_reader :status
      # The trace ID value if `trace_id.status` is `supported`, otherwise `nil`.
      attr_reader :value
    end

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
    # The amount (in cents (or local equivalent)) that transfers to your bank account or debit card.
    attr_reader :amount
    # The application fee (if any) for the payout. [See the Connect documentation](https://stripe.com/docs/connect/instant-payouts#monetization-and-fees) for details.
    attr_reader :application_fee
    # The amount of the application fee (if any) requested for the payout. [See the Connect documentation](https://stripe.com/docs/connect/instant-payouts#monetization-and-fees) for details.
    attr_reader :application_fee_amount
    # Date that you can expect the payout to arrive in the bank. This factors in delays to account for weekends or bank holidays.
    attr_reader :arrival_date
    # Returns `true` if the payout is created by an [automated payout schedule](https://stripe.com/docs/payouts#payout-schedule) and `false` if it's [requested manually](https://stripe.com/docs/payouts#manual-payouts).
    attr_reader :automatic
    # ID of the balance transaction that describes the impact of this payout on your account balance.
    attr_reader :balance_transaction
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    # An arbitrary string attached to the object. Often useful for displaying to users.
    attr_reader :description
    # ID of the bank account or card the payout is sent to.
    attr_reader :destination
    # If the payout fails or cancels, this is the ID of the balance transaction that reverses the initial balance transaction and returns the funds from the failed payout back in your balance.
    attr_reader :failure_balance_transaction
    # Error code that provides a reason for a payout failure, if available. View our [list of failure codes](https://stripe.com/docs/api#payout_failures).
    attr_reader :failure_code
    # Message that provides the reason for a payout failure, if available.
    attr_reader :failure_message
    # Unique identifier for the object.
    attr_reader :id
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    # The method used to send this payout, which can be `standard` or `instant`. `instant` is supported for payouts to debit cards and bank accounts in certain countries. Learn more about [bank support for Instant Payouts](https://stripe.com/docs/payouts/instant-payouts-banks).
    attr_reader :method
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # If the payout reverses another, this is the ID of the original payout.
    attr_reader :original_payout
    # If `completed`, you can use the [Balance Transactions API](https://stripe.com/docs/api/balance_transactions/list#balance_transaction_list-payout) to list all balance transactions that are paid out in this payout.
    attr_reader :reconciliation_status
    # If the payout reverses, this is the ID of the payout that reverses this payout.
    attr_reader :reversed_by
    # The source balance this payout came from, which can be one of the following: `card`, `fpx`, or `bank_account`.
    attr_reader :source_type
    # Extra information about a payout that displays on the user's bank statement.
    attr_reader :statement_descriptor
    # Current status of the payout: `paid`, `pending`, `in_transit`, `canceled` or `failed`. A payout is `pending` until it's submitted to the bank, when it becomes `in_transit`. The status changes to `paid` if the transaction succeeds, or to `failed` or `canceled` (within 5 business days). Some payouts that fail might initially show as `paid`, then change to `failed`.
    attr_reader :status
    # A value that generates from the beneficiary's bank that allows users to track payouts with their bank. Banks might call this a "reference number" or something similar.
    attr_reader :trace_id
    # Can be `bank_account` or `card`.
    attr_reader :type

    # You can cancel a previously created payout if its status is pending. Stripe refunds the funds to your available balance. You can't cancel automatic Stripe payouts.
    def cancel(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payouts/%<payout>s/cancel", { payout: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # You can cancel a previously created payout if its status is pending. Stripe refunds the funds to your available balance. You can't cancel automatic Stripe payouts.
    def self.cancel(payout, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payouts/%<payout>s/cancel", { payout: CGI.escape(payout) }),
        params: params,
        opts: opts
      )
    end

    # To send funds to your own bank account, create a new payout object. Your [Stripe balance](https://stripe.com/docs/api#balance) must cover the payout amount. If it doesn't, you receive an “Insufficient Funds” error.
    #
    # If your API key is in test mode, money won't actually be sent, though every other action occurs as if you're in live mode.
    #
    # If you create a manual payout on a Stripe account that uses multiple payment source types, you need to specify the source type balance that the payout draws from. The [balance object](https://stripe.com/docs/api#balance_object) details available and pending amounts by source type.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/payouts", params: params, opts: opts)
    end

    # Returns a list of existing payouts sent to third-party bank accounts or payouts that Stripe sent to you. The payouts return in sorted order, with the most recently created payouts appearing first.
    def self.list(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/payouts", params: params, opts: opts)
    end

    # Reverses a payout by debiting the destination bank account. At this time, you can only reverse payouts for connected accounts to US bank accounts. If the payout is manual and in the pending status, use /v1/payouts/:id/cancel instead.
    #
    # By requesting a reversal through /v1/payouts/:id/reverse, you confirm that the authorized signatory of the selected bank account authorizes the debit on the bank account and that no other authorization is required.
    def reverse(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payouts/%<payout>s/reverse", { payout: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Reverses a payout by debiting the destination bank account. At this time, you can only reverse payouts for connected accounts to US bank accounts. If the payout is manual and in the pending status, use /v1/payouts/:id/cancel instead.
    #
    # By requesting a reversal through /v1/payouts/:id/reverse, you confirm that the authorized signatory of the selected bank account authorizes the debit on the bank account and that no other authorization is required.
    def self.reverse(payout, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payouts/%<payout>s/reverse", { payout: CGI.escape(payout) }),
        params: params,
        opts: opts
      )
    end

    # Updates the specified payout by setting the values of the parameters you pass. We don't change parameters that you don't provide. This request only accepts the metadata as arguments.
    def self.update(payout, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payouts/%<payout>s", { payout: CGI.escape(payout) }),
        params: params,
        opts: opts
      )
    end
  end
end
