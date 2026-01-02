# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class SubscriptionPauseParams < ::Stripe::RequestParams
    class BillFor < ::Stripe::RequestParams
      # Controls whether to debit for accrued metered usage in the current billing period. The default is `false`.
      sig { returns(T.nilable(T::Boolean)) }
      def outstanding_usage; end
      sig { params(_outstanding_usage: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def outstanding_usage=(_outstanding_usage); end
      # Controls whether to credit for licensed items in the current billing period. The default is `false`.
      sig { returns(T.nilable(T::Boolean)) }
      def unused_time; end
      sig { params(_unused_time: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def unused_time=(_unused_time); end
      sig {
        params(outstanding_usage: T.nilable(T::Boolean), unused_time: T.nilable(T::Boolean)).void
       }
      def initialize(outstanding_usage: nil, unused_time: nil); end
    end
    # Controls what to bill for when pausing the subscription.
    sig { returns(T.nilable(SubscriptionPauseParams::BillFor)) }
    def bill_for; end
    sig {
      params(_bill_for: T.nilable(SubscriptionPauseParams::BillFor)).returns(T.nilable(SubscriptionPauseParams::BillFor))
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
      params(bill_for: T.nilable(SubscriptionPauseParams::BillFor), expand: T.nilable(T::Array[String]), invoicing_behavior: T.nilable(String), type: String).void
     }
    def initialize(bill_for: nil, expand: nil, invoicing_behavior: nil, type: nil); end
  end
end