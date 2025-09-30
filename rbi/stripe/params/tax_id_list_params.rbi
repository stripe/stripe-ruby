# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class TaxIdListParams < Stripe::RequestParams
    class Owner < Stripe::RequestParams
      # Account the tax ID belongs to. Required when `type=account`
      sig { returns(T.nilable(String)) }
      def account; end
      sig { params(_account: T.nilable(String)).returns(T.nilable(String)) }
      def account=(_account); end
      # Customer the tax ID belongs to. Required when `type=customer`
      sig { returns(T.nilable(String)) }
      def customer; end
      sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
      def customer=(_customer); end
      # v2 Account the tax ID belongs to. Can be used in place of `customer` when `type=customer`
      sig { returns(T.nilable(String)) }
      def customer_account; end
      sig { params(_customer_account: T.nilable(String)).returns(T.nilable(String)) }
      def customer_account=(_customer_account); end
      # Type of owner referenced.
      sig { returns(String) }
      def type; end
      sig { params(_type: String).returns(String) }
      def type=(_type); end
      sig {
        params(account: T.nilable(String), customer: T.nilable(String), customer_account: T.nilable(String), type: String).void
       }
      def initialize(account: nil, customer: nil, customer_account: nil, type: nil); end
    end
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
    # The account or customer the tax ID belongs to. Defaults to `owner[type]=self`.
    sig { returns(T.nilable(TaxIdListParams::Owner)) }
    def owner; end
    sig {
      params(_owner: T.nilable(TaxIdListParams::Owner)).returns(T.nilable(TaxIdListParams::Owner))
     }
    def owner=(_owner); end
    # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
    sig { returns(T.nilable(String)) }
    def starting_after; end
    sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
    def starting_after=(_starting_after); end
    sig {
      params(ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), owner: T.nilable(TaxIdListParams::Owner), starting_after: T.nilable(String)).void
     }
    def initialize(
      ending_before: nil,
      expand: nil,
      limit: nil,
      owner: nil,
      starting_after: nil
    ); end
  end
end