# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # A Promotion Code represents a customer-redeemable code for a [coupon](https://stripe.com/docs/api#coupons).
  # You can create multiple codes for a single coupon.
  #
  # If you enable promotion codes in your [customer portal configuration](https://stripe.com/docs/customer-management/configure-portal), then customers can redeem a code themselves when updating a subscription in the portal.
  # Customers can also view the currently active promotion codes and coupons on each of their subscriptions in the portal.
  class PromotionCode < APIResource
    class Restrictions < Stripe::StripeObject
      class CurrencyOptions < Stripe::StripeObject
        # Minimum amount required to redeem this Promotion Code into a Coupon (e.g., a purchase must be $100 or more to work).
        sig { returns(Integer) }
        attr_reader :minimum_amount
      end
      # Promotion code restrictions defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(T::Hash[String, CurrencyOptions]) }
      attr_reader :currency_options
      # A Boolean indicating if the Promotion Code should only be redeemed for Customers without any successful payments or invoices
      sig { returns(T::Boolean) }
      attr_reader :first_time_transaction
      # Minimum amount required to redeem this Promotion Code into a Coupon (e.g., a purchase must be $100 or more to work).
      sig { returns(T.nilable(Integer)) }
      attr_reader :minimum_amount
      # Three-letter [ISO code](https://stripe.com/docs/currencies) for minimum_amount
      sig { returns(T.nilable(String)) }
      attr_reader :minimum_amount_currency
    end
    # Whether the promotion code is currently active. A promotion code is only active if the coupon is also valid.
    sig { returns(T::Boolean) }
    attr_reader :active
    # The customer-facing code. Regardless of case, this code must be unique across all active promotion codes for each customer. Valid characters are lower case letters (a-z), upper case letters (A-Z), and digits (0-9).
    sig { returns(String) }
    attr_reader :code
    # A coupon contains information about a percent-off or amount-off discount you
    # might want to apply to a customer. Coupons may be applied to [subscriptions](https://stripe.com/docs/api#subscriptions), [invoices](https://stripe.com/docs/api#invoices),
    # [checkout sessions](https://stripe.com/docs/api/checkout/sessions), [quotes](https://stripe.com/docs/api#quotes), and more. Coupons do not work with conventional one-off [charges](https://stripe.com/docs/api#create_charge) or [payment intents](https://stripe.com/docs/api/payment_intents).
    sig { returns(Stripe::Coupon) }
    attr_reader :coupon
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created
    # The customer that this promotion code can be used by.
    sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
    attr_reader :customer
    # Date at which the promotion code can no longer be redeemed.
    sig { returns(T.nilable(Integer)) }
    attr_reader :expires_at
    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode
    # Maximum number of times this promotion code can be redeemed.
    sig { returns(T.nilable(Integer)) }
    attr_reader :max_redemptions
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T.nilable(T::Hash[String, String])) }
    attr_reader :metadata
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object
    # Attribute for field restrictions
    sig { returns(Restrictions) }
    attr_reader :restrictions
    # Number of times this promotion code has been used.
    sig { returns(Integer) }
    attr_reader :times_redeemed
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
      sig { returns(T.nilable(T.any(::Stripe::PromotionCode::ListParams::Created, Integer))) }
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
        params(active: T.nilable(T::Boolean), code: T.nilable(String), coupon: T.nilable(String), created: T.nilable(T.any(::Stripe::PromotionCode::ListParams::Created, Integer)), customer: T.nilable(String), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
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
          returns(T.nilable(T::Hash[String, ::Stripe::PromotionCode::CreateParams::Restrictions::CurrencyOptions]))
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
          params(currency_options: T.nilable(T::Hash[String, ::Stripe::PromotionCode::CreateParams::Restrictions::CurrencyOptions]), first_time_transaction: T.nilable(T::Boolean), minimum_amount: T.nilable(Integer), minimum_amount_currency: T.nilable(String)).void
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
      sig { returns(T.nilable(::Stripe::PromotionCode::CreateParams::Restrictions)) }
      attr_accessor :restrictions
      sig {
        params(active: T.nilable(T::Boolean), code: T.nilable(String), coupon: String, customer: T.nilable(String), expand: T.nilable(T::Array[String]), expires_at: T.nilable(Integer), max_redemptions: T.nilable(Integer), metadata: T.nilable(T::Hash[String, String]), restrictions: T.nilable(::Stripe::PromotionCode::CreateParams::Restrictions)).void
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
          returns(T.nilable(T::Hash[String, ::Stripe::PromotionCode::UpdateParams::Restrictions::CurrencyOptions]))
         }
        attr_accessor :currency_options
        sig {
          params(currency_options: T.nilable(T::Hash[String, ::Stripe::PromotionCode::UpdateParams::Restrictions::CurrencyOptions])).void
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
      sig { returns(T.nilable(::Stripe::PromotionCode::UpdateParams::Restrictions)) }
      attr_accessor :restrictions
      sig {
        params(active: T.nilable(T::Boolean), expand: T.nilable(T::Array[String]), metadata: T.nilable(T.any(String, T::Hash[String, String])), restrictions: T.nilable(::Stripe::PromotionCode::UpdateParams::Restrictions)).void
       }
      def initialize(active: nil, expand: nil, metadata: nil, restrictions: nil); end
    end
    # A promotion code points to a coupon. You can optionally restrict the code to a specific customer, redemption limit, and expiration date.
    sig {
      params(params: T.any(::Stripe::PromotionCode::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PromotionCode)
     }
    def self.create(params = {}, opts = {}); end

    # Returns a list of your promotion codes.
    sig {
      params(params: T.any(::Stripe::PromotionCode::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def self.list(params = {}, opts = {}); end

    # Updates the specified promotion code by setting the values of the parameters passed. Most fields are, by design, not editable.
    sig {
      params(promotion_code: String, params: T.any(::Stripe::PromotionCode::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PromotionCode)
     }
    def self.update(promotion_code, params = {}, opts = {}); end
  end
end