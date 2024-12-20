# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class SubscriptionItemUsageRecordService < StripeService
    class CreateParams < Stripe::RequestParams
      # Valid values are `increment` (default) or `set`. When using `increment` the specified `quantity` will be added to the usage at the specified timestamp. The `set` action will overwrite the usage quantity at that timestamp. If the subscription has [billing thresholds](https://stripe.com/docs/api/subscriptions/object#subscription_object-billing_thresholds), `increment` is the only allowed value.
      sig { returns(String) }
      attr_accessor :action

      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand

      # The usage quantity for the specified timestamp.
      sig { returns(Integer) }
      attr_accessor :quantity

      # The timestamp for the usage event. This timestamp must be within the current billing period of the subscription of the provided `subscription_item`, and must not be in the future. When passing `"now"`, Stripe records usage for the current time. Default is `"now"` if a value is not provided.
      sig { returns(T.any(String, Integer)) }
      attr_accessor :timestamp

      sig {
        params(action: String, expand: T::Array[String], quantity: Integer, timestamp: T.any(String, Integer)).void
       }
      def initialize(action: nil, expand: nil, quantity: nil, timestamp: nil); end
    end
    # Creates a usage record for a specified subscription item and date, and fills it with a quantity.
    #
    # Usage records provide quantity information that Stripe uses to track how much a customer is using your service. With usage information and the pricing model set up by the [metered billing](https://stripe.com/docs/billing/subscriptions/metered-billing) plan, Stripe helps you send accurate invoices to your customers.
    #
    # The default calculation for usage is to add up all the quantity values of the usage records within a billing period. You can change this default behavior with the billing plan's aggregate_usage [parameter](https://stripe.com/docs/api/plans/create#create_plan-aggregate_usage). When there is more than one usage record with the same timestamp, Stripe adds the quantity values together. In most cases, this is the desired resolution, however, you can change this behavior with the action parameter.
    #
    # The default pricing model for metered billing is [per-unit pricing. For finer granularity, you can configure metered billing to have a <a href="https://stripe.com/docs/billing/subscriptions/tiers">tiered pricing](https://stripe.com/docs/api/plans/object#plan_object-billing_scheme) model.
    sig {
      params(subscription_item: String, params: T.any(::Stripe::SubscriptionItemUsageRecordService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::UsageRecord)
     }
    def create(subscription_item, params = {}, opts = {}); end
  end
end