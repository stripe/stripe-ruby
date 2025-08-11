# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # A coupon contains information about a percent-off or amount-off discount you
  # might want to apply to a customer. Coupons may be applied to [subscriptions](https://stripe.com/docs/api#subscriptions), [invoices](https://stripe.com/docs/api#invoices),
  # [checkout sessions](https://stripe.com/docs/api/checkout/sessions), [quotes](https://stripe.com/docs/api#quotes), and more. Coupons do not work with conventional one-off [charges](https://stripe.com/docs/api#create_charge) or [payment intents](https://stripe.com/docs/api/payment_intents).
  class Coupon < APIResource
    class AppliesTo < Stripe::StripeObject
      # A list of product IDs this coupon applies to
      sig { returns(T::Array[String]) }
      attr_reader :products
    end
    class CurrencyOptions < Stripe::StripeObject
      # Amount (in the `currency` specified) that will be taken off the subtotal of any invoices for this customer.
      sig { returns(Integer) }
      attr_reader :amount_off
    end
    # Amount (in the `currency` specified) that will be taken off the subtotal of any invoices for this customer.
    sig { returns(T.nilable(Integer)) }
    attr_reader :amount_off
    # Attribute for field applies_to
    sig { returns(AppliesTo) }
    attr_reader :applies_to
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created
    # If `amount_off` has been set, the three-letter [ISO code for the currency](https://stripe.com/docs/currencies) of the amount to take off.
    sig { returns(T.nilable(String)) }
    attr_reader :currency
    # Coupons defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(T::Hash[String, CurrencyOptions]) }
    attr_reader :currency_options
    # One of `forever`, `once`, or `repeating`. Describes how long a customer who applies this coupon will get the discount.
    sig { returns(String) }
    attr_reader :duration
    # If `duration` is `repeating`, the number of months the coupon applies. Null if coupon `duration` is `forever` or `once`.
    sig { returns(T.nilable(Integer)) }
    attr_reader :duration_in_months
    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode
    # Maximum number of times this coupon can be redeemed, in total, across all customers, before it is no longer valid.
    sig { returns(T.nilable(Integer)) }
    attr_reader :max_redemptions
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T.nilable(T::Hash[String, String])) }
    attr_reader :metadata
    # Name of the coupon displayed to customers on for instance invoices or receipts.
    sig { returns(T.nilable(String)) }
    attr_reader :name
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object
    # Percent that will be taken off the subtotal of any invoices for this customer for the duration of the coupon. For example, a coupon with percent_off of 50 will make a $ (or local equivalent)100 invoice $ (or local equivalent)50 instead.
    sig { returns(T.nilable(Float)) }
    attr_reader :percent_off
    # Date after which the coupon can no longer be redeemed.
    sig { returns(T.nilable(Integer)) }
    attr_reader :redeem_by
    # Number of times this coupon has been applied to a customer.
    sig { returns(Integer) }
    attr_reader :times_redeemed
    # Taking account of the above properties, whether this coupon can still be applied to a customer.
    sig { returns(T::Boolean) }
    attr_reader :valid
    # Always true for a deleted object
    sig { returns(T::Boolean) }
    attr_reader :deleted
    class DeleteParams < Stripe::RequestParams; end
    class UpdateParams < Stripe::RequestParams
      class CurrencyOptions < Stripe::RequestParams
        # A positive integer representing the amount to subtract from an invoice total.
        sig { returns(Integer) }
        attr_accessor :amount_off
        sig { params(amount_off: Integer).void }
        def initialize(amount_off: nil); end
      end
      # Coupons defined in each available currency option (only supported if the coupon is amount-based). Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(T.nilable(T::Hash[String, ::Stripe::Coupon::UpdateParams::CurrencyOptions])) }
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
        params(currency_options: T.nilable(T::Hash[String, ::Stripe::Coupon::UpdateParams::CurrencyOptions]), expand: T.nilable(T::Array[String]), metadata: T.nilable(T.any(String, T::Hash[String, String])), name: T.nilable(String)).void
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
      sig { returns(T.nilable(T.any(::Stripe::Coupon::ListParams::Created, Integer))) }
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
        params(created: T.nilable(T.any(::Stripe::Coupon::ListParams::Created, Integer)), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
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
      sig { returns(T.nilable(::Stripe::Coupon::CreateParams::AppliesTo)) }
      attr_accessor :applies_to
      # Three-letter [ISO code for the currency](https://stripe.com/docs/currencies) of the `amount_off` parameter (required if `amount_off` is passed).
      sig { returns(T.nilable(String)) }
      attr_accessor :currency
      # Coupons defined in each available currency option (only supported if `amount_off` is passed). Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(T.nilable(T::Hash[String, ::Stripe::Coupon::CreateParams::CurrencyOptions])) }
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
        params(amount_off: T.nilable(Integer), applies_to: T.nilable(::Stripe::Coupon::CreateParams::AppliesTo), currency: T.nilable(String), currency_options: T.nilable(T::Hash[String, ::Stripe::Coupon::CreateParams::CurrencyOptions]), duration: T.nilable(String), duration_in_months: T.nilable(Integer), expand: T.nilable(T::Array[String]), id: T.nilable(String), max_redemptions: T.nilable(Integer), metadata: T.nilable(T.any(String, T::Hash[String, String])), name: T.nilable(String), percent_off: T.nilable(Float), redeem_by: T.nilable(Integer)).void
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
      params(params: T.any(::Stripe::Coupon::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Coupon)
     }
    def self.create(params = {}, opts = {}); end

    # You can delete coupons via the [coupon management](https://dashboard.stripe.com/coupons) page of the Stripe dashboard. However, deleting a coupon does not affect any customers who have already applied the coupon; it means that new customers can't redeem the coupon. You can also delete coupons via the API.
    sig {
      params(coupon: String, params: T.any(::Stripe::Coupon::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Coupon)
     }
    def self.delete(coupon, params = {}, opts = {}); end

    # You can delete coupons via the [coupon management](https://dashboard.stripe.com/coupons) page of the Stripe dashboard. However, deleting a coupon does not affect any customers who have already applied the coupon; it means that new customers can't redeem the coupon. You can also delete coupons via the API.
    sig {
      params(params: T.any(::Stripe::Coupon::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Coupon)
     }
    def delete(params = {}, opts = {}); end

    # Returns a list of your coupons.
    sig {
      params(params: T.any(::Stripe::Coupon::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def self.list(params = {}, opts = {}); end

    # Updates the metadata of a coupon. Other coupon details (currency, duration, amount_off) are, by design, not editable.
    sig {
      params(coupon: String, params: T.any(::Stripe::Coupon::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Coupon)
     }
    def self.update(coupon, params = {}, opts = {}); end
  end
end