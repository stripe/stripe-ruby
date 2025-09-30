# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class MandateListParams < Stripe::RequestParams
    # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
    attr_accessor :ending_before
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand
    # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    attr_accessor :limit
    # The Stripe account ID that the mandates are intended for. Learn more about the [use case for connected accounts payments](https://stripe.com/docs/payments/connected-accounts).
    attr_accessor :on_behalf_of
    # Attribute for param field payment_method
    attr_accessor :payment_method
    # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
    attr_accessor :starting_after
    # The status of the mandates to retrieve. Status indicates whether or not you can use it to initiate a payment, and can have a value of `active`, `pending`, or `inactive`.
    attr_accessor :status

    def initialize(
      ending_before: nil,
      expand: nil,
      limit: nil,
      on_behalf_of: nil,
      payment_method: nil,
      starting_after: nil,
      status: nil
    )
      @ending_before = ending_before
      @expand = expand
      @limit = limit
      @on_behalf_of = on_behalf_of
      @payment_method = payment_method
      @starting_after = starting_after
      @status = status
    end
  end
end
