# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class ApplicationFee < APIResource
    class FeeSource < Stripe::StripeObject
      # Charge ID that created this application fee.
      sig { returns(String) }
      attr_reader :charge
      # Payout ID that created this application fee.
      sig { returns(String) }
      attr_reader :payout
      # Type of object that created the application fee.
      sig { returns(String) }
      attr_reader :type
    end
    # ID of the Stripe account this fee was taken from.
    sig { returns(T.any(String, Stripe::Account)) }
    attr_reader :account
    # Amount earned, in cents (or local equivalent).
    sig { returns(Integer) }
    attr_reader :amount
    # Amount in cents (or local equivalent) refunded (can be less than the amount attribute on the fee if a partial refund was issued)
    sig { returns(Integer) }
    attr_reader :amount_refunded
    # ID of the Connect application that earned the fee.
    sig { returns(T.any(String, Stripe::Application)) }
    attr_reader :application
    # Balance transaction that describes the impact of this collected application fee on your account balance (not including refunds).
    sig { returns(T.nilable(T.any(String, Stripe::BalanceTransaction))) }
    attr_reader :balance_transaction
    # ID of the charge that the application fee was taken from.
    sig { returns(T.any(String, Stripe::Charge)) }
    attr_reader :charge
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(String) }
    attr_reader :currency
    # Polymorphic source of the application fee. Includes the ID of the object the application fee was created from.
    sig { returns(T.nilable(FeeSource)) }
    attr_reader :fee_source
    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object
    # ID of the corresponding charge on the platform account, if this fee was the result of a charge using the `destination` parameter.
    sig { returns(T.nilable(T.any(String, Stripe::Charge))) }
    attr_reader :originating_transaction
    # Whether the fee has been fully refunded. If the fee is only partially refunded, this attribute will still be false.
    sig { returns(T::Boolean) }
    attr_reader :refunded
    # A list of refunds that have been applied to the fee.
    sig { returns(Stripe::ListObject) }
    attr_reader :refunds
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
      # Only return application fees for the charge specified by this charge ID.
      sig { returns(T.nilable(String)) }
      attr_accessor :charge
      # Only return applications fees that were created during the given date interval.
      sig { returns(T.nilable(T.any(::Stripe::ApplicationFee::ListParams::Created, Integer))) }
      attr_accessor :created
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