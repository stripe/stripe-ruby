# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Reserve
    class HoldListParams < ::Stripe::RequestParams
      # Only return ReserveHolds associated with the currency specified by this currency code. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
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
      # Only return ReserveHolds that are releasable.
      sig { returns(T.nilable(T::Boolean)) }
      def is_releasable; end
      sig { params(_is_releasable: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def is_releasable=(_is_releasable); end
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      def limit; end
      sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def limit=(_limit); end
      # Attribute for param field reason
      sig { returns(T.nilable(String)) }
      def reason; end
      sig { params(_reason: T.nilable(String)).returns(T.nilable(String)) }
      def reason=(_reason); end
      # Only return ReserveHolds associated with the ReservePlan specified by this ReservePlan ID.
      sig { returns(T.nilable(String)) }
      def reserve_plan; end
      sig { params(_reserve_plan: T.nilable(String)).returns(T.nilable(String)) }
      def reserve_plan=(_reserve_plan); end
      # Only return ReserveHolds associated with the ReserveRelease specified by this ReserveRelease ID.
      sig { returns(T.nilable(String)) }
      def reserve_release; end
      sig { params(_reserve_release: T.nilable(String)).returns(T.nilable(String)) }
      def reserve_release=(_reserve_release); end
      # Only return ReserveHolds associated with the Charge specified by this source charge ID.
      sig { returns(T.nilable(String)) }
      def source_charge; end
      sig { params(_source_charge: T.nilable(String)).returns(T.nilable(String)) }
      def source_charge=(_source_charge); end
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      def starting_after; end
      sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
      def starting_after=(_starting_after); end
      sig {
        params(currency: T.nilable(String), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), is_releasable: T.nilable(T::Boolean), limit: T.nilable(Integer), reason: T.nilable(String), reserve_plan: T.nilable(String), reserve_release: T.nilable(String), source_charge: T.nilable(String), starting_after: T.nilable(String)).void
       }
      def initialize(
        currency: nil,
        ending_before: nil,
        expand: nil,
        is_releasable: nil,
        limit: nil,
        reason: nil,
        reserve_plan: nil,
        reserve_release: nil,
        source_charge: nil,
        starting_after: nil
      ); end
    end
  end
end