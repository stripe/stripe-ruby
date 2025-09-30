# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class MandateListParams < Stripe::RequestParams
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
    # The Stripe account ID that the mandates are intended for. Learn more about the [use case for connected accounts payments](https://stripe.com/docs/payments/connected-accounts).
    sig { returns(T.nilable(String)) }
    def on_behalf_of; end
    sig { params(_on_behalf_of: T.nilable(String)).returns(T.nilable(String)) }
    def on_behalf_of=(_on_behalf_of); end
    # Attribute for param field payment_method
    sig { returns(String) }
    def payment_method; end
    sig { params(_payment_method: String).returns(String) }
    def payment_method=(_payment_method); end
    # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
    sig { returns(T.nilable(String)) }
    def starting_after; end
    sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
    def starting_after=(_starting_after); end
    # The status of the mandates to retrieve. Status indicates whether or not you can use it to initiate a payment, and can have a value of `active`, `pending`, or `inactive`.
    sig { returns(String) }
    def status; end
    sig { params(_status: String).returns(String) }
    def status=(_status); end
    sig {
      params(ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), on_behalf_of: T.nilable(String), payment_method: String, starting_after: T.nilable(String), status: String).void
     }
    def initialize(
      ending_before: nil,
      expand: nil,
      limit: nil,
      on_behalf_of: nil,
      payment_method: nil,
      starting_after: nil,
      status: nil
    ); end
  end
end