# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class CouponService < StripeService
    class DeleteParams < Stripe::RequestParams; end
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    class UpdateParams < Stripe::RequestParams
      class CurrencyOptions < Stripe::RequestParams
        # A positive integer representing the amount to subtract from an invoice total.
        sig { returns(Integer) }
        attr_accessor :amount_off
        sig { params(amount_off: Integer).void }
        def initialize(amount_off: nil); end
      end
      # Coupons defined in each available currency option (only supported if the coupon is amount-based). Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
      sig {
        returns(T.nilable(T::Hash[String, ::Stripe::CouponService::UpdateParams::CurrencyOptions]))
       }
      attr_accessor :currency_options
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      attr_accessor :metadata
      # Name of the coupon displayed to customers on, for instance invoices, or receipts. By default the `id` is shown if `name` is not set.
      sig { returns(T.nilable(String)) }
      attr_accessor :name
      sig {
        params(currency_options: T.nilable(T::Hash[String, ::Stripe::CouponService::UpdateParams::CurrencyOptions]), expand: T.nilable(T::Array[String]), metadata: T.nilable(T.any(String, T::Hash[String, String])), name: T.nilable(String)).void
       }
      def initialize(currency_options: nil, expand: nil, metadata: nil, name: nil); end
    end
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
      # A filter on the list, based on the object `created` field. The value can be a string with an integer Unix timestamp, or it can be a dictionary with a number of different query options.
      sig { returns(T.nilable(T.any(::Stripe::CouponService::ListParams::Created, Integer))) }
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
        params(created: T.nilable(T.any(::Stripe::CouponService::ListParams::Created, Integer)), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
       }
      def initialize(
        created: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        starting_after: nil
      ); end
    end
    class CreateParams < Stripe::RequestParams
      class AppliesTo < Stripe::RequestParams
        # An array of Product IDs that this Coupon will apply to.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :products
        sig { params(products: T.nilable(T::Array[String])).void }
        def initialize(products: nil); end
      end
      class CurrencyOptions < Stripe::RequestParams
        # A positive integer representing the amount to subtract from an invoice total.
        sig { returns(Integer) }
        attr_accessor :amount_off
        sig { params(amount_off: Integer).void }
        def initialize(amount_off: nil); end
      end
      # A positive integer representing the amount to subtract from an invoice total (required if `percent_off` is not passed).
      sig { returns(T.nilable(Integer)) }
      attr_accessor :amount_off
      # A hash containing directions for what this Coupon will apply discounts to.
      sig { returns(T.nilable(::Stripe::CouponService::CreateParams::AppliesTo)) }
      attr_accessor :applies_to
      # Three-letter [ISO code for the currency](https://stripe.com/docs/currencies) of the `amount_off` parameter (required if `amount_off` is passed).
      sig { returns(T.nilable(String)) }
      attr_accessor :currency
      # Coupons defined in each available currency option (only supported if `amount_off` is passed). Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
      sig {
        returns(T.nilable(T::Hash[String, ::Stripe::CouponService::CreateParams::CurrencyOptions]))
       }
      attr_accessor :currency_options
      # Specifies how long the discount will be in effect if used on a subscription. Defaults to `once`.
      sig { returns(T.nilable(String)) }
      attr_accessor :duration
      # Required only if `duration` is `repeating`, in which case it must be a positive integer that specifies the number of months the discount will be in effect.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :duration_in_months
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # Unique string of your choice that will be used to identify this coupon when applying it to a customer. If you don't want to specify a particular code, you can leave the ID blank and we'll generate a random code for you.
      sig { returns(T.nilable(String)) }
      attr_accessor :id
      # A positive integer specifying the number of times the coupon can be redeemed before it's no longer valid. For example, you might have a 50% off coupon that the first 20 readers of your blog can use.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :max_redemptions
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      attr_accessor :metadata
      # Name of the coupon displayed to customers on, for instance invoices, or receipts. By default the `id` is shown if `name` is not set.
      sig { returns(T.nilable(String)) }
      attr_accessor :name
      # A positive float larger than 0, and smaller or equal to 100, that represents the discount the coupon will apply (required if `amount_off` is not passed).
      sig { returns(T.nilable(Float)) }
      attr_accessor :percent_off
      # Unix timestamp specifying the last time at which the coupon can be redeemed. After the redeem_by date, the coupon can no longer be applied to new customers.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :redeem_by
      sig {
        params(amount_off: T.nilable(Integer), applies_to: T.nilable(::Stripe::CouponService::CreateParams::AppliesTo), currency: T.nilable(String), currency_options: T.nilable(T::Hash[String, ::Stripe::CouponService::CreateParams::CurrencyOptions]), duration: T.nilable(String), duration_in_months: T.nilable(Integer), expand: T.nilable(T::Array[String]), id: T.nilable(String), max_redemptions: T.nilable(Integer), metadata: T.nilable(T.any(String, T::Hash[String, String])), name: T.nilable(String), percent_off: T.nilable(Float), redeem_by: T.nilable(Integer)).void
       }
      def initialize(
        amount_off: nil,
        applies_to: nil,
        currency: nil,
        currency_options: nil,
        duration: nil,
        duration_in_months: nil,
        expand: nil,
        id: nil,
        max_redemptions: nil,
        metadata: nil,
        name: nil,
        percent_off: nil,
        redeem_by: nil
      ); end
    end
    # You can create coupons easily via the [coupon management](https://dashboard.stripe.com/coupons) page of the Stripe dashboard. Coupon creation is also accessible via the API if you need to create coupons on the fly.
    #
    # A coupon has either a percent_off or an amount_off and currency. If you set an amount_off, that amount will be subtracted from any invoice's subtotal. For example, an invoice with a subtotal of 100 will have a final total of 0 if a coupon with an amount_off of 200 is applied to it and an invoice with a subtotal of 300 will have a final total of 100 if a coupon with an amount_off of 200 is applied to it.
    sig {
      params(params: T.any(::Stripe::CouponService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Coupon)
     }
    def create(params = {}, opts = {}); end

    # You can delete coupons via the [coupon management](https://dashboard.stripe.com/coupons) page of the Stripe dashboard. However, deleting a coupon does not affect any customers who have already applied the coupon; it means that new customers can't redeem the coupon. You can also delete coupons via the API.
    sig {
      params(coupon: String, params: T.any(::Stripe::CouponService::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Coupon)
     }
    def delete(coupon, params = {}, opts = {}); end

    # Returns a list of your coupons.
    sig {
      params(params: T.any(::Stripe::CouponService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # Retrieves the coupon with the given ID.
    sig {
      params(coupon: String, params: T.any(::Stripe::CouponService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Coupon)
     }
    def retrieve(coupon, params = {}, opts = {}); end

    # Updates the metadata of a coupon. Other coupon details (currency, duration, amount_off) are, by design, not editable.
    sig {
      params(coupon: String, params: T.any(::Stripe::CouponService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Coupon)
     }
    def update(coupon, params = {}, opts = {}); end
  end
end