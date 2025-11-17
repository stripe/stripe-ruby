# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class BalanceTransferCreateParams < ::Stripe::RequestParams
    class DestinationBalance < ::Stripe::RequestParams
      # Destination balance type to push funds into for the Balance Transfer.
      sig { returns(String) }
      def type; end
      sig { params(_type: String).returns(String) }
      def type=(_type); end
      sig { params(type: String).void }
      def initialize(type: nil); end
    end
    class SourceBalance < ::Stripe::RequestParams
      class AllocatedFunds < ::Stripe::RequestParams
        # The charge ID that the funds are originally sourced from. Required if `type` is `charge`.
        sig { returns(String) }
        def charge; end
        sig { params(_charge: String).returns(String) }
        def charge=(_charge); end
        # The type of object that the funds are originally sourced from. One of `charge`.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        sig { params(charge: String, type: String).void }
        def initialize(charge: nil, type: nil); end
      end
      # Attribute for param field allocated_funds
      sig { returns(T.nilable(BalanceTransferCreateParams::SourceBalance::AllocatedFunds)) }
      def allocated_funds; end
      sig {
        params(_allocated_funds: T.nilable(BalanceTransferCreateParams::SourceBalance::AllocatedFunds)).returns(T.nilable(BalanceTransferCreateParams::SourceBalance::AllocatedFunds))
       }
      def allocated_funds=(_allocated_funds); end
      # Source balance type to pull funds from for the Balance Transfer.
      sig { returns(String) }
      def type; end
      sig { params(_type: String).returns(String) }
      def type=(_type); end
      sig {
        params(allocated_funds: T.nilable(BalanceTransferCreateParams::SourceBalance::AllocatedFunds), type: String).void
       }
      def initialize(allocated_funds: nil, type: nil); end
    end
    # A positive integer representing how much to transfer in the smallest currency unit.
    sig { returns(Integer) }
    def amount; end
    sig { params(_amount: Integer).returns(Integer) }
    def amount=(_amount); end
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(String) }
    def currency; end
    sig { params(_currency: String).returns(String) }
    def currency=(_currency); end
    # The balance to which funds are transferred.
    sig { returns(BalanceTransferCreateParams::DestinationBalance) }
    def destination_balance; end
    sig {
      params(_destination_balance: BalanceTransferCreateParams::DestinationBalance).returns(BalanceTransferCreateParams::DestinationBalance)
     }
    def destination_balance=(_destination_balance); end
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
    # The balance from which funds are transferred, including details specific to the balance you choose.
    sig { returns(BalanceTransferCreateParams::SourceBalance) }
    def source_balance; end
    sig {
      params(_source_balance: BalanceTransferCreateParams::SourceBalance).returns(BalanceTransferCreateParams::SourceBalance)
     }
    def source_balance=(_source_balance); end
    sig {
      params(amount: Integer, currency: String, destination_balance: BalanceTransferCreateParams::DestinationBalance, expand: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), source_balance: BalanceTransferCreateParams::SourceBalance).void
     }
    def initialize(
      amount: nil,
      currency: nil,
      destination_balance: nil,
      expand: nil,
      metadata: nil,
      source_balance: nil
    ); end
  end
end