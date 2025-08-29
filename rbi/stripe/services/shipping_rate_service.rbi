# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class ShippingRateService < StripeService
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
      # Only return shipping rates that are active or inactive.
      sig { returns(T.nilable(T::Boolean)) }
      def active; end
      sig { params(_active: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def active=(_active); end
      # A filter on the list, based on the object `created` field. The value can be a string with an integer Unix timestamp, or it can be a dictionary with a number of different query options.
      sig { returns(T.nilable(T.any(::Stripe::ShippingRateService::ListParams::Created, Integer))) }
      def created; end
      sig {
        params(_created: T.nilable(T.any(::Stripe::ShippingRateService::ListParams::Created, Integer))).returns(T.nilable(T.any(::Stripe::ShippingRateService::ListParams::Created, Integer)))
       }
      def created=(_created); end
      # Only return shipping rates for the given currency.
      sig { returns(T.nilable(String)) }
      def currency; end
      sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
      def currency=(_currency); end
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
        params(active: T.nilable(T::Boolean), created: T.nilable(T.any(::Stripe::ShippingRateService::ListParams::Created, Integer)), currency: T.nilable(String), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
       }
      def initialize(
        active: nil,
        created: nil,
        currency: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        starting_after: nil
      ); end
    end
    class CreateParams < Stripe::RequestParams
      class DeliveryEstimate < Stripe::RequestParams
        class Maximum < Stripe::RequestParams
          # A unit of time.
          sig { returns(String) }
          def unit; end
          sig { params(_unit: String).returns(String) }
          def unit=(_unit); end
          # Must be greater than 0.
          sig { returns(Integer) }
          def value; end
          sig { params(_value: Integer).returns(Integer) }
          def value=(_value); end
          sig { params(unit: String, value: Integer).void }
          def initialize(unit: nil, value: nil); end
        end
        class Minimum < Stripe::RequestParams
          # A unit of time.
          sig { returns(String) }
          def unit; end
          sig { params(_unit: String).returns(String) }
          def unit=(_unit); end
          # Must be greater than 0.
          sig { returns(Integer) }
          def value; end
          sig { params(_value: Integer).returns(Integer) }
          def value=(_value); end
          sig { params(unit: String, value: Integer).void }
          def initialize(unit: nil, value: nil); end
        end
        # The upper bound of the estimated range. If empty, represents no upper bound i.e., infinite.
        sig {
          returns(T.nilable(::Stripe::ShippingRateService::CreateParams::DeliveryEstimate::Maximum))
         }
        def maximum; end
        sig {
          params(_maximum: T.nilable(::Stripe::ShippingRateService::CreateParams::DeliveryEstimate::Maximum)).returns(T.nilable(::Stripe::ShippingRateService::CreateParams::DeliveryEstimate::Maximum))
         }
        def maximum=(_maximum); end
        # The lower bound of the estimated range. If empty, represents no lower bound.
        sig {
          returns(T.nilable(::Stripe::ShippingRateService::CreateParams::DeliveryEstimate::Minimum))
         }
        def minimum; end
        sig {
          params(_minimum: T.nilable(::Stripe::ShippingRateService::CreateParams::DeliveryEstimate::Minimum)).returns(T.nilable(::Stripe::ShippingRateService::CreateParams::DeliveryEstimate::Minimum))
         }
        def minimum=(_minimum); end
        sig {
          params(maximum: T.nilable(::Stripe::ShippingRateService::CreateParams::DeliveryEstimate::Maximum), minimum: T.nilable(::Stripe::ShippingRateService::CreateParams::DeliveryEstimate::Minimum)).void
         }
        def initialize(maximum: nil, minimum: nil); end
      end
      class FixedAmount < Stripe::RequestParams
        class CurrencyOptions < Stripe::RequestParams
          # A non-negative integer in cents representing how much to charge.
          sig { returns(Integer) }
          def amount; end
          sig { params(_amount: Integer).returns(Integer) }
          def amount=(_amount); end
          # Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`.
          sig { returns(T.nilable(String)) }
          def tax_behavior; end
          sig { params(_tax_behavior: T.nilable(String)).returns(T.nilable(String)) }
          def tax_behavior=(_tax_behavior); end
          sig { params(amount: Integer, tax_behavior: T.nilable(String)).void }
          def initialize(amount: nil, tax_behavior: nil); end
        end
        # A non-negative integer in cents representing how much to charge.
        sig { returns(Integer) }
        def amount; end
        sig { params(_amount: Integer).returns(Integer) }
        def amount=(_amount); end
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(String) }
        def currency; end
        sig { params(_currency: String).returns(String) }
        def currency=(_currency); end
        # Shipping rates defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
        sig {
          returns(T.nilable(T::Hash[String, ::Stripe::ShippingRateService::CreateParams::FixedAmount::CurrencyOptions]))
         }
        def currency_options; end
        sig {
          params(_currency_options: T.nilable(T::Hash[String, ::Stripe::ShippingRateService::CreateParams::FixedAmount::CurrencyOptions])).returns(T.nilable(T::Hash[String, ::Stripe::ShippingRateService::CreateParams::FixedAmount::CurrencyOptions]))
         }
        def currency_options=(_currency_options); end
        sig {
          params(amount: Integer, currency: String, currency_options: T.nilable(T::Hash[String, ::Stripe::ShippingRateService::CreateParams::FixedAmount::CurrencyOptions])).void
         }
        def initialize(amount: nil, currency: nil, currency_options: nil); end
      end
      # The estimated range for how long shipping will take, meant to be displayable to the customer. This will appear on CheckoutSessions.
      sig { returns(T.nilable(::Stripe::ShippingRateService::CreateParams::DeliveryEstimate)) }
      def delivery_estimate; end
      sig {
        params(_delivery_estimate: T.nilable(::Stripe::ShippingRateService::CreateParams::DeliveryEstimate)).returns(T.nilable(::Stripe::ShippingRateService::CreateParams::DeliveryEstimate))
       }
      def delivery_estimate=(_delivery_estimate); end
      # The name of the shipping rate, meant to be displayable to the customer. This will appear on CheckoutSessions.
      sig { returns(String) }
      def display_name; end
      sig { params(_display_name: String).returns(String) }
      def display_name=(_display_name); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Describes a fixed amount to charge for shipping. Must be present if type is `fixed_amount`.
      sig { returns(T.nilable(::Stripe::ShippingRateService::CreateParams::FixedAmount)) }
      def fixed_amount; end
      sig {
        params(_fixed_amount: T.nilable(::Stripe::ShippingRateService::CreateParams::FixedAmount)).returns(T.nilable(::Stripe::ShippingRateService::CreateParams::FixedAmount))
       }
      def fixed_amount=(_fixed_amount); end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
       }
      def metadata=(_metadata); end
      # Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`.
      sig { returns(T.nilable(String)) }
      def tax_behavior; end
      sig { params(_tax_behavior: T.nilable(String)).returns(T.nilable(String)) }
      def tax_behavior=(_tax_behavior); end
      # A [tax code](https://stripe.com/docs/tax/tax-categories) ID. The Shipping tax code is `txcd_92010001`.
      sig { returns(T.nilable(String)) }
      def tax_code; end
      sig { params(_tax_code: T.nilable(String)).returns(T.nilable(String)) }
      def tax_code=(_tax_code); end
      # The type of calculation to use on the shipping rate.
      sig { returns(T.nilable(String)) }
      def type; end
      sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
      def type=(_type); end
      sig {
        params(delivery_estimate: T.nilable(::Stripe::ShippingRateService::CreateParams::DeliveryEstimate), display_name: String, expand: T.nilable(T::Array[String]), fixed_amount: T.nilable(::Stripe::ShippingRateService::CreateParams::FixedAmount), metadata: T.nilable(T::Hash[String, String]), tax_behavior: T.nilable(String), tax_code: T.nilable(String), type: T.nilable(String)).void
       }
      def initialize(
        delivery_estimate: nil,
        display_name: nil,
        expand: nil,
        fixed_amount: nil,
        metadata: nil,
        tax_behavior: nil,
        tax_code: nil,
        type: nil
      ); end
    end
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    class UpdateParams < Stripe::RequestParams
      class FixedAmount < Stripe::RequestParams
        class CurrencyOptions < Stripe::RequestParams
          # A non-negative integer in cents representing how much to charge.
          sig { returns(T.nilable(Integer)) }
          def amount; end
          sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def amount=(_amount); end
          # Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`.
          sig { returns(T.nilable(String)) }
          def tax_behavior; end
          sig { params(_tax_behavior: T.nilable(String)).returns(T.nilable(String)) }
          def tax_behavior=(_tax_behavior); end
          sig { params(amount: T.nilable(Integer), tax_behavior: T.nilable(String)).void }
          def initialize(amount: nil, tax_behavior: nil); end
        end
        # Shipping rates defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
        sig {
          returns(T.nilable(T::Hash[String, ::Stripe::ShippingRateService::UpdateParams::FixedAmount::CurrencyOptions]))
         }
        def currency_options; end
        sig {
          params(_currency_options: T.nilable(T::Hash[String, ::Stripe::ShippingRateService::UpdateParams::FixedAmount::CurrencyOptions])).returns(T.nilable(T::Hash[String, ::Stripe::ShippingRateService::UpdateParams::FixedAmount::CurrencyOptions]))
         }
        def currency_options=(_currency_options); end
        sig {
          params(currency_options: T.nilable(T::Hash[String, ::Stripe::ShippingRateService::UpdateParams::FixedAmount::CurrencyOptions])).void
         }
        def initialize(currency_options: nil); end
      end
      # Whether the shipping rate can be used for new purchases. Defaults to `true`.
      sig { returns(T.nilable(T::Boolean)) }
      def active; end
      sig { params(_active: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def active=(_active); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Describes a fixed amount to charge for shipping. Must be present if type is `fixed_amount`.
      sig { returns(T.nilable(::Stripe::ShippingRateService::UpdateParams::FixedAmount)) }
      def fixed_amount; end
      sig {
        params(_fixed_amount: T.nilable(::Stripe::ShippingRateService::UpdateParams::FixedAmount)).returns(T.nilable(::Stripe::ShippingRateService::UpdateParams::FixedAmount))
       }
      def fixed_amount=(_fixed_amount); end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
       }
      def metadata=(_metadata); end
      # Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`.
      sig { returns(T.nilable(String)) }
      def tax_behavior; end
      sig { params(_tax_behavior: T.nilable(String)).returns(T.nilable(String)) }
      def tax_behavior=(_tax_behavior); end
      sig {
        params(active: T.nilable(T::Boolean), expand: T.nilable(T::Array[String]), fixed_amount: T.nilable(::Stripe::ShippingRateService::UpdateParams::FixedAmount), metadata: T.nilable(T.any(String, T::Hash[String, String])), tax_behavior: T.nilable(String)).void
       }
      def initialize(
        active: nil,
        expand: nil,
        fixed_amount: nil,
        metadata: nil,
        tax_behavior: nil
      ); end
    end
    # Creates a new shipping rate object.
    sig {
      params(params: T.any(::Stripe::ShippingRateService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ShippingRate)
     }
    def create(params = {}, opts = {}); end

    # Returns a list of your shipping rates.
    sig {
      params(params: T.any(::Stripe::ShippingRateService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # Returns the shipping rate object with the given ID.
    sig {
      params(shipping_rate_token: String, params: T.any(::Stripe::ShippingRateService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ShippingRate)
     }
    def retrieve(shipping_rate_token, params = {}, opts = {}); end

    # Updates an existing shipping rate object.
    sig {
      params(shipping_rate_token: String, params: T.any(::Stripe::ShippingRateService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ShippingRate)
     }
    def update(shipping_rate_token, params = {}, opts = {}); end
  end
end