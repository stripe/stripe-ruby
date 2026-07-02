# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Crypto
    class OnrampSessionListParams < ::Stripe::RequestParams
      class Created < ::Stripe::RequestParams
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
      # Only return onramp sessions that were created during the given date interval.
      sig { returns(T.nilable(T.any(::Stripe::Crypto::OnrampSessionListParams::Created, Integer))) }
      def created; end
      sig {
        params(_created: T.nilable(T.any(::Stripe::Crypto::OnrampSessionListParams::Created, Integer))).returns(T.nilable(T.any(::Stripe::Crypto::OnrampSessionListParams::Created, Integer)))
       }
      def created=(_created); end
      # The destination cryptocurrency to filter by.
      sig { returns(T.nilable(String)) }
      def destination_currency; end
      sig { params(_destination_currency: T.nilable(String)).returns(T.nilable(String)) }
      def destination_currency=(_destination_currency); end
      # The destination blockchain network to filter by.
      sig { returns(T.nilable(String)) }
      def destination_network; end
      sig { params(_destination_network: T.nilable(String)).returns(T.nilable(String)) }
      def destination_network=(_destination_network); end
      # An object ID cursor for use in pagination.
      sig { returns(T.nilable(String)) }
      def ending_before; end
      sig { params(_ending_before: T.nilable(String)).returns(T.nilable(String)) }
      def ending_before=(_ending_before); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # A limit ranging from 1 to 100 (defaults to 10).
      sig { returns(T.nilable(Integer)) }
      def limit; end
      sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def limit=(_limit); end
      # An object ID cursor for use in pagination.
      sig { returns(T.nilable(String)) }
      def starting_after; end
      sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
      def starting_after=(_starting_after); end
      # The status of the Onramp Session. One of = `{initialized, rejected, requires_payment, fulfillment_processing, fulfillment_complete}`
      sig { returns(T.nilable(String)) }
      def status; end
      sig { params(_status: T.nilable(String)).returns(T.nilable(String)) }
      def status=(_status); end
      sig {
        params(created: T.nilable(T.any(::Stripe::Crypto::OnrampSessionListParams::Created, Integer)), destination_currency: T.nilable(String), destination_network: T.nilable(String), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String), status: T.nilable(String)).void
       }
      def initialize(
        created: nil,
        destination_currency: nil,
        destination_network: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        starting_after: nil,
        status: nil
      ); end
    end
  end
end