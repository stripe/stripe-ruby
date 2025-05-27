# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A `Transfer` object is created when you move funds between Stripe accounts as
  # part of Connect.
  #
  # Before April 6, 2017, transfers also represented movement of funds from a
  # Stripe account to a card or bank account. This behavior has since been split
  # out into a [Payout](https://stripe.com/docs/api#payout_object) object, with corresponding payout endpoints. For more
  # information, read about the
  # [transfer/payout split](https://stripe.com/docs/transfer-payout-split).
  #
  # Related guide: [Creating separate charges and transfers](https://stripe.com/docs/connect/separate-charges-and-transfers)
  class Transfer < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    extend Stripe::APIOperations::NestedResource
    include Stripe::APIOperations::Save

    OBJECT_NAME = "transfer"
    def self.object_name
      "transfer"
    end

    nested_resource_class_methods :reversal, operations: %i[create retrieve update list]

    class ListParams < Stripe::RequestParams
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
      # Only return transfers that were created during the given date interval.
      attr_accessor :created
      # Only return transfers for the destination specified by this account ID.
      attr_accessor :destination
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after
      # Only return transfers with the specified transfer group.
      attr_accessor :transfer_group

      def initialize(
        created: nil,
        destination: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        starting_after: nil,
        transfer_group: nil
      )
        @created = created
        @destination = destination
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @starting_after = starting_after
        @transfer_group = transfer_group
      end
    end

    class CreateParams < Stripe::RequestParams
      # A positive integer in cents (or local equivalent) representing how much to transfer.
      attr_accessor :amount
      # Three-letter [ISO code for currency](https://www.iso.org/iso-4217-currency-codes.html) in lowercase. Must be a [supported currency](https://docs.stripe.com/currencies).
      attr_accessor :currency
      # An arbitrary string attached to the object. Often useful for displaying to users.
      attr_accessor :description
      # The ID of a connected Stripe account. <a href="/docs/connect/separate-charges-and-transfers">See the Connect documentation</a> for details.
      attr_accessor :destination
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # You can use this parameter to transfer funds from a charge before they are added to your available balance. A pending balance will transfer immediately but the funds will not become available until the original charge becomes available. [See the Connect documentation](https://stripe.com/docs/connect/separate-charges-and-transfers#transfer-availability) for details.
      attr_accessor :source_transaction
      # The source balance to use for this transfer. One of `bank_account`, `card`, or `fpx`. For most users, this will default to `card`.
      attr_accessor :source_type
      # A string that identifies this transaction as part of a group. See the [Connect documentation](https://stripe.com/docs/connect/separate-charges-and-transfers#transfer-options) for details.
      attr_accessor :transfer_group

      def initialize(
        amount: nil,
        currency: nil,
        description: nil,
        destination: nil,
        expand: nil,
        metadata: nil,
        source_transaction: nil,
        source_type: nil,
        transfer_group: nil
      )
        @amount = amount
        @currency = currency
        @description = description
        @destination = destination
        @expand = expand
        @metadata = metadata
        @source_transaction = source_transaction
        @source_type = source_type
        @transfer_group = transfer_group
      end
    end

    class UpdateParams < Stripe::RequestParams
      # An arbitrary string attached to the object. Often useful for displaying to users.
      attr_accessor :description
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata

      def initialize(description: nil, expand: nil, metadata: nil)
        @description = description
        @expand = expand
        @metadata = metadata
      end
    end
    # Amount in cents (or local equivalent) to be transferred.
    attr_reader :amount
    # Amount in cents (or local equivalent) reversed (can be less than the amount attribute on the transfer if a partial reversal was issued).
    attr_reader :amount_reversed
    # Balance transaction that describes the impact of this transfer on your account balance.
    attr_reader :balance_transaction
    # Time that this record of the transfer was first created.
    attr_reader :created
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    # An arbitrary string attached to the object. Often useful for displaying to users.
    attr_reader :description
    # ID of the Stripe account the transfer was sent to.
    attr_reader :destination
    # If the destination is a Stripe account, this will be the ID of the payment that the destination account received for the transfer.
    attr_reader :destination_payment
    # Unique identifier for the object.
    attr_reader :id
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # A list of reversals that have been applied to the transfer.
    attr_reader :reversals
    # Whether the transfer has been fully reversed. If the transfer is only partially reversed, this attribute will still be false.
    attr_reader :reversed
    # ID of the charge that was used to fund the transfer. If null, the transfer was funded from the available balance.
    attr_reader :source_transaction
    # The source balance this transfer came from. One of `card`, `fpx`, or `bank_account`.
    attr_reader :source_type
    # A string that identifies this transaction as part of a group. See the [Connect documentation](https://stripe.com/docs/connect/separate-charges-and-transfers#transfer-options) for details.
    attr_reader :transfer_group

    # To send funds from your Stripe account to a connected account, you create a new transfer object. Your [Stripe balance](https://docs.stripe.com/api#balance) must be able to cover the transfer amount, or you'll receive an “Insufficient Funds” error.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/transfers", params: params, opts: opts)
    end

    # Returns a list of existing transfers sent to connected accounts. The transfers are returned in sorted order, with the most recently created transfers appearing first.
    def self.list(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/transfers", params: params, opts: opts)
    end

    # Updates the specified transfer by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
    #
    # This request accepts only metadata as an argument.
    def self.update(transfer, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/transfers/%<transfer>s", { transfer: CGI.escape(transfer) }),
        params: params,
        opts: opts
      )
    end
  end
end
