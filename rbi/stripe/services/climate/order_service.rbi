# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Climate
    class OrderService < StripeService
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
      class CreateParams < Stripe::RequestParams
        class Beneficiary < Stripe::RequestParams
          # Publicly displayable name for the end beneficiary of carbon removal.
          sig { returns(String) }
          attr_accessor :public_name
          sig { params(public_name: String).void }
          def initialize(public_name: nil); end
        end
        # Requested amount of carbon removal units. Either this or `metric_tons` must be specified.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :amount
        # Publicly sharable reference for the end beneficiary of carbon removal. Assumed to be the Stripe account if not set.
        sig { returns(T.nilable(::Stripe::Climate::OrderService::CreateParams::Beneficiary)) }
        attr_accessor :beneficiary
        # Request currency for the order as a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a supported [settlement currency for your account](https://stripe.com/docs/currencies). If omitted, the account's default currency will be used.
        sig { returns(T.nilable(String)) }
        attr_accessor :currency
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        # Requested number of tons for the order. Either this or `amount` must be specified.
        sig { returns(T.nilable(String)) }
        attr_accessor :metric_tons
        # Unique identifier of the Climate product.
        sig { returns(String) }
        attr_accessor :product
        sig {
          params(amount: T.nilable(Integer), beneficiary: T.nilable(::Stripe::Climate::OrderService::CreateParams::Beneficiary), currency: T.nilable(String), expand: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), metric_tons: T.nilable(String), product: String).void
         }
        def initialize(
          amount: nil,
          beneficiary: nil,
          currency: nil,
          expand: nil,
          metadata: nil,
          metric_tons: nil,
          product: nil
        ); end
      end
      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class UpdateParams < Stripe::RequestParams
        class Beneficiary < Stripe::RequestParams
          # Publicly displayable name for the end beneficiary of carbon removal.
          sig { returns(String) }
          attr_accessor :public_name
          sig { params(public_name: String).void }
          def initialize(public_name: nil); end
        end
        # Publicly sharable reference for the end beneficiary of carbon removal. Assumed to be the Stripe account if not set.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::Climate::OrderService::UpdateParams::Beneficiary)))
         }
        attr_accessor :beneficiary
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        sig {
          params(beneficiary: T.nilable(T.any(String, ::Stripe::Climate::OrderService::UpdateParams::Beneficiary)), expand: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String])).void
         }
        def initialize(beneficiary: nil, expand: nil, metadata: nil); end
      end
      class CancelParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      # Cancels a Climate order. You can cancel an order within 24 hours of creation. Stripe refunds the
      # reservation amount_subtotal, but not the amount_fees for user-triggered cancellations. Frontier
      # might cancel reservations if suppliers fail to deliver. If Frontier cancels the reservation, Stripe
      # provides 90 days advance notice and refunds the amount_total.
      sig {
        params(order: String, params: T.any(::Stripe::Climate::OrderService::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Climate::Order)
       }
      def cancel(order, params = {}, opts = {}); end

      # Creates a Climate order object for a given Climate product. The order will be processed immediately
      # after creation and payment will be deducted your Stripe balance.
      sig {
        params(params: T.any(::Stripe::Climate::OrderService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Climate::Order)
       }
      def create(params = {}, opts = {}); end

      # Lists all Climate order objects. The orders are returned sorted by creation date, with the
      # most recently created orders appearing first.
      sig {
        params(params: T.any(::Stripe::Climate::OrderService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Retrieves the details of a Climate order object with the given ID.
      sig {
        params(order: String, params: T.any(::Stripe::Climate::OrderService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Climate::Order)
       }
      def retrieve(order, params = {}, opts = {}); end

      # Updates the specified order by setting the values of the parameters passed.
      sig {
        params(order: String, params: T.any(::Stripe::Climate::OrderService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Climate::Order)
       }
      def update(order, params = {}, opts = {}); end
    end
  end
end