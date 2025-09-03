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
      def products; end
    end
    class CurrencyOptions < Stripe::StripeObject
      # Amount (in the `currency` specified) that will be taken off the subtotal of any invoices for this customer.
      sig { returns(Integer) }
      def amount_off; end
    end
    # Amount (in the `currency` specified) that will be taken off the subtotal of any invoices for this customer.
    sig { returns(T.nilable(Integer)) }
    def amount_off; end
    # Attribute for field applies_to
    sig { returns(AppliesTo) }
    def applies_to; end
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    def created; end
    # If `amount_off` has been set, the three-letter [ISO code for the currency](https://stripe.com/docs/currencies) of the amount to take off.
    sig { returns(T.nilable(String)) }
    def currency; end
    # Coupons defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(T::Hash[String, CurrencyOptions]) }
    def currency_options; end
    # One of `forever`, `once`, or `repeating`. Describes how long a customer who applies this coupon will get the discount.
    sig { returns(String) }
    def duration; end
    # If `duration` is `repeating`, the number of months the coupon applies. Null if coupon `duration` is `forever` or `once`.
    sig { returns(T.nilable(Integer)) }
    def duration_in_months; end
    # Unique identifier for the object.
    sig { returns(String) }
    def id; end
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    def livemode; end
    # Maximum number of times this coupon can be redeemed, in total, across all customers, before it is no longer valid.
    sig { returns(T.nilable(Integer)) }
    def max_redemptions; end
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T.nilable(T::Hash[String, String])) }
    def metadata; end
    # Name of the coupon displayed to customers on for instance invoices or receipts.
    sig { returns(T.nilable(String)) }
    def name; end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
    # Percent that will be taken off the subtotal of any invoices for this customer for the duration of the coupon. For example, a coupon with percent_off of 50 will make a $ (or local equivalent)100 invoice $ (or local equivalent)50 instead.
    sig { returns(T.nilable(Float)) }
    def percent_off; end
    # Date after which the coupon can no longer be redeemed.
    sig { returns(T.nilable(Integer)) }
    def redeem_by; end
    # Number of times this coupon has been applied to a customer.
    sig { returns(Integer) }
    def times_redeemed; end
    # Taking account of the above properties, whether this coupon can still be applied to a customer.
    sig { returns(T::Boolean) }
    def valid; end
    # Always true for a deleted object
    sig { returns(T::Boolean) }
    def deleted; end
    class DeleteParams < Stripe::RequestParams; end
    class UpdateParams < Stripe::RequestParams
      class CurrencyOptions < Stripe::RequestParams
        # A positive integer representing the amount to subtract from an invoice total.
        sig { returns(Integer) }
        def amount_off; end
        sig { params(_amount_off: Integer).returns(Integer) }
        def amount_off=(_amount_off); end
        sig { params(amount_off: Integer).void }
        def initialize(amount_off: nil); end
      end
      # Coupons defined in each available currency option (only supported if the coupon is amount-based). Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(T.nilable(T::Hash[String, ::Stripe::Coupon::UpdateParams::CurrencyOptions])) }
      def currency_options; end
      sig {
        params(_currency_options: T.nilable(T::Hash[String, ::Stripe::Coupon::UpdateParams::CurrencyOptions])).returns(T.nilable(T::Hash[String, ::Stripe::Coupon::UpdateParams::CurrencyOptions]))
       }
      def currency_options=(_currency_options); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
       }
      def metadata=(_metadata); end
      # Name of the coupon displayed to customers on, for instance invoices, or receipts. By default the `id` is shown if `name` is not set.
      sig { returns(T.nilable(String)) }
      def name; end
      sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
      def name=(_name); end
      sig {
        params(currency_options: T.nilable(T::Hash[String, ::Stripe::Coupon::UpdateParams::CurrencyOptions]), expand: T.nilable(T::Array[String]), metadata: T.nilable(T.any(String, T::Hash[String, String])), name: T.nilable(String)).void
       }
      def initialize(currency_options: nil, expand: nil, metadata: nil, name: nil); end
    end
    class ListParams < Stripe::RequestParams
      class Created < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        sig { returns(T.nilable(Integer)) }
        def gt; end
        sig { params(_gt: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def gt=(_gt); end
        # Minimum value to filter by (inclusive)
        sig { returns(T.nilable(Integer)) }
        def gte; end
        sig { params(_gte: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def gte=(_gte); end
        # Maximum value to filter by (exclusive)
        sig { returns(T.nilable(Integer)) }
        def lt; end
        sig { params(_lt: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def lt=(_lt); end
        # Maximum value to filter by (inclusive)
        sig { returns(T.nilable(Integer)) }
        def lte; end
        sig { params(_lte: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def lte=(_lte); end
        sig {
          params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
         }
        def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
      end
      # A filter on the list, based on the object `created` field. The value can be a string with an integer Unix timestamp, or it can be a dictionary with a number of different query options.
      sig { returns(T.nilable(T.any(::Stripe::Coupon::ListParams::Created, Integer))) }
      def created; end
      sig {
        params(_created: T.nilable(T.any(::Stripe::Coupon::ListParams::Created, Integer))).returns(T.nilable(T.any(::Stripe::Coupon::ListParams::Created, Integer)))
       }
      def created=(_created); end
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
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      def starting_after; end
      sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
      def starting_after=(_starting_after); end
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
        def products; end
        sig { params(_products: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def products=(_products); end
        sig { params(products: T.nilable(T::Array[String])).void }
        def initialize(products: nil); end
      end
      class CurrencyOptions < Stripe::RequestParams
        # A positive integer representing the amount to subtract from an invoice total.
        sig { returns(Integer) }
        def amount_off; end
        sig { params(_amount_off: Integer).returns(Integer) }
        def amount_off=(_amount_off); end
        sig { params(amount_off: Integer).void }
        def initialize(amount_off: nil); end
      end
      # A positive integer representing the amount to subtract from an invoice total (required if `percent_off` is not passed).
      sig { returns(T.nilable(Integer)) }
      def amount_off; end
      sig { params(_amount_off: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def amount_off=(_amount_off); end
      # A hash containing directions for what this Coupon will apply discounts to.
      sig { returns(T.nilable(::Stripe::Coupon::CreateParams::AppliesTo)) }
      def applies_to; end
      sig {
        params(_applies_to: T.nilable(::Stripe::Coupon::CreateParams::AppliesTo)).returns(T.nilable(::Stripe::Coupon::CreateParams::AppliesTo))
       }
      def applies_to=(_applies_to); end
      # Three-letter [ISO code for the currency](https://stripe.com/docs/currencies) of the `amount_off` parameter (required if `amount_off` is passed).
      sig { returns(T.nilable(String)) }
      def currency; end
      sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
      def currency=(_currency); end
      # Coupons defined in each available currency option (only supported if `amount_off` is passed). Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(T.nilable(T::Hash[String, ::Stripe::Coupon::CreateParams::CurrencyOptions])) }
      def currency_options; end
      sig {
        params(_currency_options: T.nilable(T::Hash[String, ::Stripe::Coupon::CreateParams::CurrencyOptions])).returns(T.nilable(T::Hash[String, ::Stripe::Coupon::CreateParams::CurrencyOptions]))
       }
      def currency_options=(_currency_options); end
      # Specifies how long the discount will be in effect if used on a subscription. Defaults to `once`.
      sig { returns(T.nilable(String)) }
      def duration; end
      sig { params(_duration: T.nilable(String)).returns(T.nilable(String)) }
      def duration=(_duration); end
      # Required only if `duration` is `repeating`, in which case it must be a positive integer that specifies the number of months the discount will be in effect.
      sig { returns(T.nilable(Integer)) }
      def duration_in_months; end
      sig { params(_duration_in_months: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def duration_in_months=(_duration_in_months); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Unique string of your choice that will be used to identify this coupon when applying it to a customer. If you don't want to specify a particular code, you can leave the ID blank and we'll generate a random code for you.
      sig { returns(T.nilable(String)) }
      def id; end
      sig { params(_id: T.nilable(String)).returns(T.nilable(String)) }
      def id=(_id); end
      # A positive integer specifying the number of times the coupon can be redeemed before it's no longer valid. For example, you might have a 50% off coupon that the first 20 readers of your blog can use.
      sig { returns(T.nilable(Integer)) }
      def max_redemptions; end
      sig { params(_max_redemptions: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def max_redemptions=(_max_redemptions); end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
       }
      def metadata=(_metadata); end
      # Name of the coupon displayed to customers on, for instance invoices, or receipts. By default the `id` is shown if `name` is not set.
      sig { returns(T.nilable(String)) }
      def name; end
      sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
      def name=(_name); end
      # A positive float larger than 0, and smaller or equal to 100, that represents the discount the coupon will apply (required if `amount_off` is not passed).
      sig { returns(T.nilable(Float)) }
      def percent_off; end
      sig { params(_percent_off: T.nilable(Float)).returns(T.nilable(Float)) }
      def percent_off=(_percent_off); end
      # Unix timestamp specifying the last time at which the coupon can be redeemed. After the redeem_by date, the coupon can no longer be applied to new customers.
      sig { returns(T.nilable(Integer)) }
      def redeem_by; end
      sig { params(_redeem_by: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def redeem_by=(_redeem_by); end
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