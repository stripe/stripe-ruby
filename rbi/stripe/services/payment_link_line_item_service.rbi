# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class PaymentLinkLineItemService < StripeService
    class ListParams < Stripe::RequestParams
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
        params(ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
       }
      def initialize(ending_before: nil, expand: nil, limit: nil, starting_after: nil); end
    end
    # When retrieving a payment link, there is an includable line_items property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.
    sig {
      params(payment_link: String, params: T.any(::Stripe::PaymentLinkLineItemService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list(payment_link, params = {}, opts = {}); end
  end
end