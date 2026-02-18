# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      class BatchJobService < StripeService
        # Creates a new batch job.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/core/batch_jobs",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Serializes a Customer update request into a batch job JSONL line.
        def serialize_v1_customer_update(customer, params = {}, opts = {})
          item_id = SecureRandom.uuid
          stripe_version = opts[:stripe_version] || Stripe.api_version

          item = {
            id: item_id,
            path_params: { customer: customer },
            params: params,
            stripe_version: stripe_version,
          }
          item[:context] = opts[:stripe_context] if opts[:stripe_context]
          JSON.generate(item)
        end

        # Serializes a SubscriptionSchedule create request into a batch job JSONL line.
        def serialize_v1_subscription_schedule_create(params = {}, opts = {})
          item_id = SecureRandom.uuid
          stripe_version = opts[:stripe_version] || Stripe.api_version

          item = {
            id: item_id,
            path_params: nil,
            params: params,
            stripe_version: stripe_version,
          }
          item[:context] = opts[:stripe_context] if opts[:stripe_context]
          JSON.generate(item)
        end

        # Serializes a Subscription update request into a batch job JSONL line.
        def serialize_v1_subscription_update(subscription_exposed_id, params = {}, opts = {})
          item_id = SecureRandom.uuid
          stripe_version = opts[:stripe_version] || Stripe.api_version

          item = {
            id: item_id,
            path_params: { subscription_exposed_id: subscription_exposed_id },
            params: params,
            stripe_version: stripe_version,
          }
          item[:context] = opts[:stripe_context] if opts[:stripe_context]
          JSON.generate(item)
        end
      end
    end
  end
end
