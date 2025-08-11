# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class PromotionCodeService < StripeService
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
      # Filter promotion codes by whether they are active.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :active
      # Only return promotion codes that have this case-insensitive code.
      sig { returns(T.nilable(String)) }
      attr_accessor :code
      # Only return promotion codes for this coupon.
      sig { returns(T.nilable(String)) }
      attr_accessor :coupon
      # A filter on the list, based on the object `created` field. The value can be a string with an integer Unix timestamp, or it can be a dictionary with a number of different query options.
      sig {
        returns(T.nilable(T.any(::Stripe::PromotionCodeService::ListParams::Created, Integer)))
       }
      attr_accessor :created
      # Only return promotion codes that are restricted to this customer.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer
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
        params(active: T.nilable(T::Boolean), code: T.nilable(String), coupon: T.nilable(String), created: T.nilable(T.any(::Stripe::PromotionCodeService::ListParams::Created, Integer)), customer: T.nilable(String), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
       }
      def initialize(
        active: nil,
        code: nil,
        coupon: nil,
        created: nil,
        customer: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        starting_after: nil
      ); end
    end
    class CreateParams < Stripe::RequestParams
      class Restrictions < Stripe::RequestParams
        class CurrencyOptions < Stripe::RequestParams
          # Minimum amount required to redeem this Promotion Code into a Coupon (e.g., a purchase must be $100 or more to work).
          sig { returns(T.nilable(Integer)) }
          attr_accessor :minimum_amount
          sig { params(minimum_amount: T.nilable(Integer)).void }
          def initialize(minimum_amount: nil); end
        end
        # Promotion codes defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
        sig {
          returns(T.nilable(T::Hash[String, ::Stripe::PromotionCodeService::CreateParams::Restrictions::CurrencyOptions]))
         }
        attr_accessor :currency_options
        # A Boolean indicating if the Promotion Code should only be redeemed for Customers without any successful payments or invoices
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :first_time_transaction
        # Minimum amount required to redeem this Promotion Code into a Coupon (e.g., a purchase must be $100 or more to work).
        sig { returns(T.nilable(Integer)) }
        attr_accessor :minimum_amount
        # Three-letter [ISO code](https://stripe.com/docs/currencies) for minimum_amount
        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount_currency
        sig {
          params(currency_options: T.nilable(T::Hash[String, ::Stripe::PromotionCodeService::CreateParams::Restrictions::CurrencyOptions]), first_time_transaction: T.nilable(T::Boolean), minimum_amount: T.nilable(Integer), minimum_amount_currency: T.nilable(String)).void
         }
        def initialize(
          currency_options: nil,
          first_time_transaction: nil,
          minimum_amount: nil,
          minimum_amount_currency: nil
        ); end
      end
      # Whether the promotion code is currently active.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :active
      # The customer-facing code. Regardless of case, this code must be unique across all active promotion codes for a specific customer. Valid characters are lower case letters (a-z), upper case letters (A-Z), and digits (0-9).
      #
      # If left blank, we will generate one automatically.
      sig { returns(T.nilable(String)) }
      attr_accessor :code
      # The coupon for this promotion code.
      sig { returns(String) }
      attr_accessor :coupon
      # The customer that this promotion code can be used by. If not set, the promotion code can be used by all customers.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # The timestamp at which this promotion code will expire. If the coupon has specified a `redeems_by`, then this value cannot be after the coupon's `redeems_by`.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :expires_at
      # A positive integer specifying the number of times the promotion code can be redeemed. If the coupon has specified a `max_redemptions`, then this value cannot be greater than the coupon's `max_redemptions`.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :max_redemptions
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_accessor :metadata
      # Settings that restrict the redemption of the promotion code.
      sig { returns(T.nilable(::Stripe::PromotionCodeService::CreateParams::Restrictions)) }
      attr_accessor :restrictions
      sig {
        params(active: T.nilable(T::Boolean), code: T.nilable(String), coupon: String, customer: T.nilable(String), expand: T.nilable(T::Array[String]), expires_at: T.nilable(Integer), max_redemptions: T.nilable(Integer), metadata: T.nilable(T::Hash[String, String]), restrictions: T.nilable(::Stripe::PromotionCodeService::CreateParams::Restrictions)).void
       }
      def initialize(
        active: nil,
        code: nil,
        coupon: nil,
        customer: nil,
        expand: nil,
        expires_at: nil,
        max_redemptions: nil,
        metadata: nil,
        restrictions: nil
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
      class Restrictions < Stripe::RequestParams
        class CurrencyOptions < Stripe::RequestParams
          # Minimum amount required to redeem this Promotion Code into a Coupon (e.g., a purchase must be $100 or more to work).
          sig { returns(T.nilable(Integer)) }
          attr_accessor :minimum_amount
          sig { params(minimum_amount: T.nilable(Integer)).void }
          def initialize(minimum_amount: nil); end
        end
        # Promotion codes defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
        sig {
          returns(T.nilable(T::Hash[String, ::Stripe::PromotionCodeService::UpdateParams::Restrictions::CurrencyOptions]))
         }
        attr_accessor :currency_options
        sig {
          params(currency_options: T.nilable(T::Hash[String, ::Stripe::PromotionCodeService::UpdateParams::Restrictions::CurrencyOptions])).void
         }
        def initialize(currency_options: nil); end
      end
      # Whether the promotion code is currently active. A promotion code can only be reactivated when the coupon is still valid and the promotion code is otherwise redeemable.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :active
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      attr_accessor :metadata
      # Settings that restrict the redemption of the promotion code.
      sig { returns(T.nilable(::Stripe::PromotionCodeService::UpdateParams::Restrictions)) }
      attr_accessor :restrictions
      sig {
        params(active: T.nilable(T::Boolean), expand: T.nilable(T::Array[String]), metadata: T.nilable(T.any(String, T::Hash[String, String])), restrictions: T.nilable(::Stripe::PromotionCodeService::UpdateParams::Restrictions)).void
       }
      def initialize(active: nil, expand: nil, metadata: nil, restrictions: nil); end
    end
    # A promotion code points to a coupon. You can optionally restrict the code to a specific customer, redemption limit, and expiration date.
    sig {
      params(params: T.any(::Stripe::PromotionCodeService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PromotionCode)
     }
    def create(params = {}, opts = {}); end

    # Returns a list of your promotion codes.
    sig {
      params(params: T.any(::Stripe::PromotionCodeService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # Retrieves the promotion code with the given ID. In order to retrieve a promotion code by the customer-facing code use [list](https://docs.stripe.com/docs/api/promotion_codes/list) with the desired code.
    sig {
      params(promotion_code: String, params: T.any(::Stripe::PromotionCodeService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PromotionCode)
     }
    def retrieve(promotion_code, params = {}, opts = {}); end

    # Updates the specified promotion code by setting the values of the parameters passed. Most fields are, by design, not editable.
    sig {
      params(promotion_code: String, params: T.any(::Stripe::PromotionCodeService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PromotionCode)
     }
    def update(promotion_code, params = {}, opts = {}); end
  end
end