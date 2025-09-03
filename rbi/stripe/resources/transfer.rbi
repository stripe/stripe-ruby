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
    def amount; end
    # Amount in cents (or local equivalent) reversed (can be less than the amount attribute on the transfer if a partial reversal was issued).
    sig { returns(Integer) }
    def amount_reversed; end
    # Balance transaction that describes the impact of this transfer on your account balance.
    sig { returns(T.nilable(T.any(String, Stripe::BalanceTransaction))) }
    def balance_transaction; end
    # Time that this record of the transfer was first created.
    sig { returns(Integer) }
    def created; end
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(String) }
    def currency; end
    # An arbitrary string attached to the object. Often useful for displaying to users.
    sig { returns(T.nilable(String)) }
    def description; end
    # ID of the Stripe account the transfer was sent to.
    sig { returns(T.nilable(T.any(String, Stripe::Account))) }
    def destination; end
    # If the destination is a Stripe account, this will be the ID of the payment that the destination account received for the transfer.
    sig { returns(T.any(String, Stripe::Charge)) }
    def destination_payment; end
    # Unique identifier for the object.
    sig { returns(String) }
    def id; end
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    def livemode; end
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T::Hash[String, String]) }
    def metadata; end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
    # A list of reversals that have been applied to the transfer.
    sig { returns(Stripe::ListObject) }
    def reversals; end
    # Whether the transfer has been fully reversed. If the transfer is only partially reversed, this attribute will still be false.
    sig { returns(T::Boolean) }
    def reversed; end
    # ID of the charge that was used to fund the transfer. If null, the transfer was funded from the available balance.
    sig { returns(T.nilable(T.any(String, Stripe::Charge))) }
    def source_transaction; end
    # The source balance this transfer came from. One of `card`, `fpx`, or `bank_account`.
    sig { returns(String) }
    def source_type; end
    # A string that identifies this transaction as part of a group. See the [Connect documentation](https://stripe.com/docs/connect/separate-charges-and-transfers#transfer-options) for details.
    sig { returns(T.nilable(String)) }
    def transfer_group; end
    class ListParams < Stripe::RequestParams
      class Created < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        sig { returns(T.nilable(Integer)) }
        def gt; end
        sig { params(_gt: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def gt=(_gt); end
        # Minimum value to filter by (inclusive)
        sig { returns(T.nilable(Integer)) }
        def gte; end
        sig { params(_gte: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def gte=(_gte); end
        # Maximum value to filter by (exclusive)
        sig { returns(T.nilable(Integer)) }
        def lt; end
        sig { params(_lt: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def lt=(_lt); end
        # Maximum value to filter by (inclusive)
        sig { returns(T.nilable(Integer)) }
        def lte; end
        sig { params(_lte: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def lte=(_lte); end
        sig {
          params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
         }
        def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
      end
      # Only return transfers that were created during the given date interval.
      sig { returns(T.nilable(T.any(::Stripe::Transfer::ListParams::Created, Integer))) }
      def created; end
      sig {
        params(_created: T.nilable(T.any(::Stripe::Transfer::ListParams::Created, Integer))).returns(T.nilable(T.any(::Stripe::Transfer::ListParams::Created, Integer)))
       }
      def created=(_created); end
      # Only return transfers for the destination specified by this account ID.
      sig { returns(T.nilable(String)) }
      def destination; end
      sig { params(_destination: T.nilable(String)).returns(T.nilable(String)) }
      def destination=(_destination); end
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(T.nilable(String)) }
      def ending_before; end
      sig { params(_ending_before: T.nilable(String)).returns(T.nilable(String)) }
      def ending_before=(_ending_before); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      def limit; end
      sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def limit=(_limit); end
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      def starting_after; end
      sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
      def starting_after=(_starting_after); end
      # Only return transfers with the specified transfer group.
      sig { returns(T.nilable(String)) }
      def transfer_group; end
      sig { params(_transfer_group: T.nilable(String)).returns(T.nilable(String)) }
      def transfer_group=(_transfer_group); end
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
      def amount; end
      sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def amount=(_amount); end
      # Three-letter [ISO code for currency](https://www.iso.org/iso-4217-currency-codes.html) in lowercase. Must be a [supported currency](https://docs.stripe.com/currencies).
      sig { returns(String) }
      def currency; end
      sig { params(_currency: String).returns(String) }
      def currency=(_currency); end
      # An arbitrary string attached to the object. Often useful for displaying to users.
      sig { returns(T.nilable(String)) }
      def description; end
      sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_description); end
      # The ID of a connected Stripe account. <a href="/docs/connect/separate-charges-and-transfers">See the Connect documentation</a> for details.
      sig { returns(String) }
      def destination; end
      sig { params(_destination: String).returns(String) }
      def destination=(_destination); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
       }
      def metadata=(_metadata); end
      # You can use this parameter to transfer funds from a charge before they are added to your available balance. A pending balance will transfer immediately but the funds will not become available until the original charge becomes available. [See the Connect documentation](https://stripe.com/docs/connect/separate-charges-and-transfers#transfer-availability) for details.
      sig { returns(T.nilable(String)) }
      def source_transaction; end
      sig { params(_source_transaction: T.nilable(String)).returns(T.nilable(String)) }
      def source_transaction=(_source_transaction); end
      # The source balance to use for this transfer. One of `bank_account`, `card`, or `fpx`. For most users, this will default to `card`.
      sig { returns(T.nilable(String)) }
      def source_type; end
      sig { params(_source_type: T.nilable(String)).returns(T.nilable(String)) }
      def source_type=(_source_type); end
      # A string that identifies this transaction as part of a group. See the [Connect documentation](https://stripe.com/docs/connect/separate-charges-and-transfers#transfer-options) for details.
      sig { returns(T.nilable(String)) }
      def transfer_group; end
      sig { params(_transfer_group: T.nilable(String)).returns(T.nilable(String)) }
      def transfer_group=(_transfer_group); end
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
      def description; end
      sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_description); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
       }
      def metadata=(_metadata); end
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