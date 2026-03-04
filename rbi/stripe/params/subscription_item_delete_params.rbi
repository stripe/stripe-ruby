# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class SubscriptionItemDeleteParams < ::Stripe::RequestParams
    # Delete all usage for the given subscription item. Allowed only when the current plan's `usage_type` is `metered`.
    sig { returns(T.nilable(T::Boolean)) }
    def clear_usage; end
    sig { params(_clear_usage: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
    def clear_usage=(_clear_usage); end
    # Use `allow_incomplete` to transition the subscription to `status=past_due` if a payment is required but cannot be paid. This allows you to manage scenarios where additional user actions are needed to pay a subscription's invoice. For example, SCA regulation may require 3DS authentication to complete payment. See the [SCA Migration Guide](https://docs.stripe.com/billing/migration/strong-customer-authentication) for Billing to learn more. This is the default behavior.
    #
    # Use `default_incomplete` to transition the subscription to `status=past_due` when payment is required and await explicit confirmation of the invoice's payment intent. This allows simpler management of scenarios where additional user actions are needed to pay a subscription’s invoice. Such as failed payments, [SCA regulation](https://docs.stripe.com/billing/migration/strong-customer-authentication), or collecting a mandate for a bank debit payment method.
    #
    # Use `pending_if_incomplete` to update the subscription using [pending updates](https://docs.stripe.com/billing/subscriptions/pending-updates). When you use `pending_if_incomplete` you can only pass the parameters [supported by pending updates](https://docs.stripe.com/billing/pending-updates-reference#supported-attributes).
    #
    # Use `error_if_incomplete` if you want Stripe to return an HTTP 402 status code if a subscription's invoice cannot be paid. For example, if a payment method requires 3DS authentication due to SCA regulation and further user action is needed, this parameter does not update the subscription and returns an error instead. This was the default behavior for API versions prior to 2019-03-14. See the [changelog](https://docs.stripe.com/changelog/2019-03-14) to learn more.
    sig { returns(T.nilable(String)) }
    def payment_behavior; end
    sig { params(_payment_behavior: T.nilable(String)).returns(T.nilable(String)) }
    def payment_behavior=(_payment_behavior); end
    # Determines how to handle [prorations](https://docs.stripe.com/billing/subscriptions/prorations) when the billing cycle changes (e.g., when switching plans, resetting `billing_cycle_anchor=now`, or starting a trial), or if an item's `quantity` changes. The default value is `create_prorations`.
    sig { returns(T.nilable(String)) }
    def proration_behavior; end
    sig { params(_proration_behavior: T.nilable(String)).returns(T.nilable(String)) }
    def proration_behavior=(_proration_behavior); end
    # If set, the proration will be calculated as though the subscription was updated at the given time. This can be used to apply the same proration that was previewed with the [upcoming invoice](https://api.stripe.com#retrieve_customer_invoice) endpoint.
    sig { returns(T.nilable(Integer)) }
    def proration_date; end
    sig { params(_proration_date: T.nilable(Integer)).returns(T.nilable(Integer)) }
    def proration_date=(_proration_date); end
    sig {
      params(clear_usage: T.nilable(T::Boolean), payment_behavior: T.nilable(String), proration_behavior: T.nilable(String), proration_date: T.nilable(Integer)).void
     }
    def initialize(
      clear_usage: nil,
      payment_behavior: nil,
      proration_behavior: nil,
      proration_date: nil
    ); end
  end
end