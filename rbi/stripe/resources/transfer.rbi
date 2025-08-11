# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
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
    # Amount in cents (or local equivalent) to be transferred.
    sig { returns(Integer) }
    attr_reader :amount
    # Amount in cents (or local equivalent) reversed (can be less than the amount attribute on the transfer if a partial reversal was issued).
    sig { returns(Integer) }
    attr_reader :amount_reversed
    # Balance transaction that describes the impact of this transfer on your account balance.
    sig { returns(T.nilable(T.any(String, Stripe::BalanceTransaction))) }
    attr_reader :balance_transaction
    # Time that this record of the transfer was first created.
    sig { returns(Integer) }
    attr_reader :created
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(String) }
    attr_reader :currency
    # An arbitrary string attached to the object. Often useful for displaying to users.
    sig { returns(T.nilable(String)) }
    attr_reader :description
    # ID of the Stripe account the transfer was sent to.
    sig { returns(T.nilable(T.any(String, Stripe::Account))) }
    attr_reader :destination
    # If the destination is a Stripe account, this will be the ID of the payment that the destination account received for the transfer.
    sig { returns(T.any(String, Stripe::Charge)) }
    attr_reader :destination_payment
    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T::Hash[String, String]) }
    attr_reader :metadata
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object
    # A list of reversals that have been applied to the transfer.
    sig { returns(Stripe::ListObject) }
    attr_reader :reversals
    # Whether the transfer has been fully reversed. If the transfer is only partially reversed, this attribute will still be false.
    sig { returns(T::Boolean) }
    attr_reader :reversed
    # ID of the charge that was used to fund the transfer. If null, the transfer was funded from the available balance.
    sig { returns(T.nilable(T.any(String, Stripe::Charge))) }
    attr_reader :source_transaction
    # The source balance this transfer came from. One of `card`, `fpx`, or `bank_account`.
    sig { returns(String) }
    attr_reader :source_type
    # A string that identifies this transaction as part of a group. See the [Connect documentation](https://stripe.com/docs/connect/separate-charges-and-transfers#transfer-options) for details.
    sig { returns(T.nilable(String)) }
    attr_reader :transfer_group
    class ListParams < Stripe::RequestParams
      class Created < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :gt
        # Minimum value to filter by (inclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :gte
        # Maximum value to filter by (exclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :lt
        # Maximum value to filter by (inclusive)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :lte
        sig {
          params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
         }
        def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
      end
      # Only return transfers that were created during the given date interval.
      sig { returns(T.nilable(T.any(::Stripe::Transfer::ListParams::Created, Integer))) }
      attr_accessor :created
      # Only return transfers for the destination specified by this account ID.
      sig { returns(T.nilable(String)) }
      attr_accessor :destination
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :starting_after
      # Only return transfers with the specified transfer group.
      sig { returns(T.nilable(String)) }
      attr_accessor :transfer_group
      sig {
        params(created: T.nilable(T.any(::Stripe::Transfer::ListParams::Created, Integer)), destination: T.nilable(String), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String), transfer_group: T.nilable(String)).void
       }
      def initialize(
        created: nil,
        destination: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        starting_after: nil,
        transfer_group: nil
      ); end
    end
    class CreateParams < Stripe::RequestParams
      # A positive integer in cents (or local equivalent) representing how much to transfer.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :amount
      # Three-letter [ISO code for currency](https://www.iso.org/iso-4217-currency-codes.html) in lowercase. Must be a [supported currency](https://docs.stripe.com/currencies).
      sig { returns(String) }
      attr_accessor :currency
      # An arbitrary string attached to the object. Often useful for displaying to users.
      sig { returns(T.nilable(String)) }
      attr_accessor :description
      # The ID of a connected Stripe account. <a href="/docs/connect/separate-charges-and-transfers">See the Connect documentation</a> for details.
      sig { returns(String) }
      attr_accessor :destination
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_accessor :metadata
      # You can use this parameter to transfer funds from a charge before they are added to your available balance. A pending balance will transfer immediately but the funds will not become available until the original charge becomes available. [See the Connect documentation](https://stripe.com/docs/connect/separate-charges-and-transfers#transfer-availability) for details.
      sig { returns(T.nilable(String)) }
      attr_accessor :source_transaction
      # The source balance to use for this transfer. One of `bank_account`, `card`, or `fpx`. For most users, this will default to `card`.
      sig { returns(T.nilable(String)) }
      attr_accessor :source_type
      # A string that identifies this transaction as part of a group. See the [Connect documentation](https://stripe.com/docs/connect/separate-charges-and-transfers#transfer-options) for details.
      sig { returns(T.nilable(String)) }
      attr_accessor :transfer_group
      sig {
        params(amount: T.nilable(Integer), currency: String, description: T.nilable(String), destination: String, expand: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), source_transaction: T.nilable(String), source_type: T.nilable(String), transfer_group: T.nilable(String)).void
       }
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
      ); end
    end
    class UpdateParams < Stripe::RequestParams
      # An arbitrary string attached to the object. Often useful for displaying to users.
      sig { returns(T.nilable(String)) }
      attr_accessor :description
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      attr_accessor :metadata
      sig {
        params(description: T.nilable(String), expand: T.nilable(T::Array[String]), metadata: T.nilable(T.any(String, T::Hash[String, String]))).void
       }
      def initialize(description: nil, expand: nil, metadata: nil); end
    end
    # To send funds from your Stripe account to a connected account, you create a new transfer object. Your [Stripe balance](https://docs.stripe.com/api#balance) must be able to cover the transfer amount, or you'll receive an “Insufficient Funds” error.
    sig {
      params(params: T.any(::Stripe::Transfer::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Transfer)
     }
    def self.create(params = {}, opts = {}); end

    # Returns a list of existing transfers sent to connected accounts. The transfers are returned in sorted order, with the most recently created transfers appearing first.
    sig {
      params(params: T.any(::Stripe::Transfer::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def self.list(params = {}, opts = {}); end

    # Updates the specified transfer by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
    #
    # This request accepts only metadata as an argument.
    sig {
      params(transfer: String, params: T.any(::Stripe::Transfer::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Transfer)
     }
    def self.update(transfer, params = {}, opts = {}); end
  end
end