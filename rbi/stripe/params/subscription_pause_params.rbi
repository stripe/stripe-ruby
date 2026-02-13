# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class SubscriptionPauseParams < ::Stripe::RequestParams
    class BillFor < ::Stripe::RequestParams
      class OutstandingUsageThrough < ::Stripe::RequestParams
        # When to bill metered usage in the current period.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        sig { params(type: String).void }
        def initialize(type: nil); end
      end
      class UnusedTimeFrom < ::Stripe::RequestParams
        # When to credit for unused time.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        sig { params(type: String).void }
        def initialize(type: nil); end
      end
      # Controls when to bill for metered usage in the current period. Defaults to `{ type: "now" }`.
      sig {
        returns(T.nilable(::Stripe::SubscriptionPauseParams::BillFor::OutstandingUsageThrough))
       }
      def outstanding_usage_through; end
      sig {
        params(_outstanding_usage_through: T.nilable(::Stripe::SubscriptionPauseParams::BillFor::OutstandingUsageThrough)).returns(T.nilable(::Stripe::SubscriptionPauseParams::BillFor::OutstandingUsageThrough))
       }
      def outstanding_usage_through=(_outstanding_usage_through); end
      # Controls when to credit for unused time on licensed items. Defaults to `{ type: "now" }`.
      sig { returns(T.nilable(::Stripe::SubscriptionPauseParams::BillFor::UnusedTimeFrom)) }
      def unused_time_from; end
      sig {
        params(_unused_time_from: T.nilable(::Stripe::SubscriptionPauseParams::BillFor::UnusedTimeFrom)).returns(T.nilable(::Stripe::SubscriptionPauseParams::BillFor::UnusedTimeFrom))
       }
      def unused_time_from=(_unused_time_from); end
      sig {
        params(outstanding_usage_through: T.nilable(::Stripe::SubscriptionPauseParams::BillFor::OutstandingUsageThrough), unused_time_from: T.nilable(::Stripe::SubscriptionPauseParams::BillFor::UnusedTimeFrom)).void
       }
      def initialize(outstanding_usage_through: nil, unused_time_from: nil); end
    end
    # Controls what to bill for when pausing the subscription.
    sig { returns(T.nilable(::Stripe::SubscriptionPauseParams::BillFor)) }
    def bill_for; end
    sig {
      params(_bill_for: T.nilable(::Stripe::SubscriptionPauseParams::BillFor)).returns(T.nilable(::Stripe::SubscriptionPauseParams::BillFor))
     }
    def bill_for=(_bill_for); end
    # Specifies which fields in the response should be expanded.
    sig { returns(T.nilable(T::Array[String])) }
    def expand; end
    sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
    def expand=(_expand); end
    # Determines how to handle debits and credits when pausing. The default is `pending_invoice_item`.
    sig { returns(T.nilable(String)) }
    def invoicing_behavior; end
    sig { params(_invoicing_behavior: T.nilable(String)).returns(T.nilable(String)) }
    def invoicing_behavior=(_invoicing_behavior); end
    # The type of pause to apply.
    sig { returns(String) }
    def type; end
    sig { params(_type: String).returns(String) }
    def type=(_type); end
    sig {
      params(bill_for: T.nilable(::Stripe::SubscriptionPauseParams::BillFor), expand: T.nilable(T::Array[String]), invoicing_behavior: T.nilable(String), type: String).void
     }
    def initialize(bill_for: nil, expand: nil, invoicing_behavior: nil, type: nil); end
  end
end