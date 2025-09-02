# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class ApplicationFee < APIResource
    class FeeSource < Stripe::StripeObject
      # Charge ID that created this application fee.
      sig { returns(String) }
      def charge; end
      # Payout ID that created this application fee.
      sig { returns(String) }
      def payout; end
      # Type of object that created the application fee.
      sig { returns(String) }
      def type; end
    end
    # ID of the Stripe account this fee was taken from.
    sig { returns(T.any(String, Stripe::Account)) }
    def account; end
    # Amount earned, in cents (or local equivalent).
    sig { returns(Integer) }
    def amount; end
    # Amount in cents (or local equivalent) refunded (can be less than the amount attribute on the fee if a partial refund was issued)
    sig { returns(Integer) }
    def amount_refunded; end
    # ID of the Connect application that earned the fee.
    sig { returns(T.any(String, Stripe::Application)) }
    def application; end
    # Balance transaction that describes the impact of this collected application fee on your account balance (not including refunds).
    sig { returns(T.nilable(T.any(String, Stripe::BalanceTransaction))) }
    def balance_transaction; end
    # ID of the charge that the application fee was taken from.
    sig { returns(T.any(String, Stripe::Charge)) }
    def charge; end
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    def created; end
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(String) }
    def currency; end
    # Polymorphic source of the application fee. Includes the ID of the object the application fee was created from.
    sig { returns(T.nilable(FeeSource)) }
    def fee_source; end
    # Unique identifier for the object.
    sig { returns(String) }
    def id; end
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    def livemode; end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
    # ID of the corresponding charge on the platform account, if this fee was the result of a charge using the `destination` parameter.
    sig { returns(T.nilable(T.any(String, Stripe::Charge))) }
    def originating_transaction; end
    # Whether the fee has been fully refunded. If the fee is only partially refunded, this attribute will still be false.
    sig { returns(T::Boolean) }
    def refunded; end
    # A list of refunds that have been applied to the fee.
    sig { returns(Stripe::ListObject) }
    def refunds; end
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
      # Only return application fees for the charge specified by this charge ID.
      sig { returns(T.nilable(String)) }
      def charge; end
      sig { params(_charge: T.nilable(String)).returns(T.nilable(String)) }
      def charge=(_charge); end
      # Only return applications fees that were created during the given date interval.
      sig { returns(T.nilable(T.any(::Stripe::ApplicationFee::ListParams::Created, Integer))) }
      def created; end
      sig {
        params(_created: T.nilable(T.any(::Stripe::ApplicationFee::ListParams::Created, Integer))).returns(T.nilable(T.any(::Stripe::ApplicationFee::ListParams::Created, Integer)))
       }
      def created=(_created); end
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
      sig {
        params(charge: T.nilable(String), created: T.nilable(T.any(::Stripe::ApplicationFee::ListParams::Created, Integer)), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
       }
      def initialize(
        charge: nil,
        created: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        starting_after: nil
      ); end
    end
    # Returns a list of application fees you've previously collected. The application fees are returned in sorted order, with the most recent fees appearing first.
    sig {
      params(params: T.any(::Stripe::ApplicationFee::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def self.list(params = {}, opts = {}); end
  end
end