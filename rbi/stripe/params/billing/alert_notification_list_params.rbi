# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Billing
    class AlertNotificationListParams < ::Stripe::RequestParams
      class NotifiedAt < ::Stripe::RequestParams
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
      # Filter results to only include triggered or recovered notifications.
      sig { returns(T.nilable(String)) }
      def action; end
      sig { params(_action: T.nilable(String)).returns(T.nilable(String)) }
      def action=(_action); end
      # Filter results to only include notifications for the given billing cadence.
      sig { returns(T.nilable(String)) }
      def cadence; end
      sig { params(_cadence: T.nilable(String)).returns(T.nilable(String)) }
      def cadence=(_cadence); end
      # The customer to list notifications for.
      sig { returns(String) }
      def customer; end
      sig { params(_customer: String).returns(String) }
      def customer=(_customer); end
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
      # Filter results to only include notifications for the given meter.
      sig { returns(T.nilable(String)) }
      def meter; end
      sig { params(_meter: T.nilable(String)).returns(T.nilable(String)) }
      def meter=(_meter); end
      # Filter results according to when the notification was sent.
      sig {
        returns(T.nilable(T.any(::Stripe::Billing::AlertNotificationListParams::NotifiedAt, Integer)))
       }
      def notified_at; end
      sig {
        params(_notified_at: T.nilable(T.any(::Stripe::Billing::AlertNotificationListParams::NotifiedAt, Integer))).returns(T.nilable(T.any(::Stripe::Billing::AlertNotificationListParams::NotifiedAt, Integer)))
       }
      def notified_at=(_notified_at); end
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      def starting_after; end
      sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
      def starting_after=(_starting_after); end
      # Filter results to only include notifications for the given subscription.
      sig { returns(T.nilable(String)) }
      def subscription; end
      sig { params(_subscription: T.nilable(String)).returns(T.nilable(String)) }
      def subscription=(_subscription); end
      sig {
        params(action: T.nilable(String), cadence: T.nilable(String), customer: String, ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), meter: T.nilable(String), notified_at: T.nilable(T.any(::Stripe::Billing::AlertNotificationListParams::NotifiedAt, Integer)), starting_after: T.nilable(String), subscription: T.nilable(String)).void
       }
      def initialize(
        action: nil,
        cadence: nil,
        customer: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        meter: nil,
        notified_at: nil,
        starting_after: nil,
        subscription: nil
      ); end
    end
  end
end