# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class SubscriptionItemUsageRecordService < StripeService
    # Creates a usage record for a specified subscription item and date, and fills it with a quantity.
    #
    # Usage records provide quantity information that Stripe uses to track how much a customer is using your service. With usage information and the pricing model set up by the [metered billing](https://stripe.com/docs/billing/subscriptions/metered-billing) plan, Stripe helps you send accurate invoices to your customers.
    #
    # The default calculation for usage is to add up all the quantity values of the usage records within a billing period. You can change this default behavior with the billing plan's aggregate_usage [parameter](https://stripe.com/docs/api/plans/create#create_plan-aggregate_usage). When there is more than one usage record with the same timestamp, Stripe adds the quantity values together. In most cases, this is the desired resolution, however, you can change this behavior with the action parameter.
    #
    # The default pricing model for metered billing is [per-unit pricing. For finer granularity, you can configure metered billing to have a <a href="https://stripe.com/docs/billing/subscriptions/tiers">tiered pricing](https://stripe.com/docs/api/plans/object#plan_object-billing_scheme) model.
    def create(subscription_item, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/subscription_items/%<subscription_item>s/usage_records", { subscription_item: CGI.escape(subscription_item) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
