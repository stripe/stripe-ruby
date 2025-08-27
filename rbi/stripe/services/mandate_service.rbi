# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class MandateService < StripeService
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
      # The Stripe account ID that the mandates are intended for. Learn more about the [use case for connected accounts payments](https://stripe.com/docs/payments/connected-accounts).
      sig { returns(T.nilable(String)) }
      attr_accessor :on_behalf_of
      # Attribute for param field payment_method
      sig { returns(String) }
      attr_accessor :payment_method
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :starting_after
      # The status of the mandates to retrieve. Status indicates whether or not you can use it to initiate a payment, and can have a value of `active`, `pending`, or `inactive`.
      sig { returns(String) }
      attr_accessor :status
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
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    # Retrieves a list of Mandates for a given PaymentMethod.
    sig {
      params(params: T.any(::Stripe::MandateService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # Retrieves a Mandate object.
    sig {
      params(mandate: String, params: T.any(::Stripe::MandateService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Mandate)
     }
    def retrieve(mandate, params = {}, opts = {}); end
  end
end