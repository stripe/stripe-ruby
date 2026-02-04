# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      class BatchJobService < StripeService
        # Creates a new batch job.
        sig {
          params(params: T.any(::Stripe::V2::Core::BatchJobCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Core::BatchJob)
         }
        def create(params = {}, opts = {}); end

        # Serializes a Customer update request into a batch job JSONL line.
        sig {
          params(customer: String, params: CustomerUpdateParams, opts: T.untyped).returns(String)
         }
        def serialize_v1_customer_update(customer, params = {}, opts = {}); end

        # Serializes a SubscriptionSchedule create request into a batch job JSONL line.
        sig { params(params: SubscriptionScheduleCreateParams, opts: T.untyped).returns(String) }
        def serialize_v1_subscription_schedule_create(params = {}, opts = {}); end

        # Serializes a Subscription update request into a batch job JSONL line.
        sig {
          params(subscription_exposed_id: String, params: SubscriptionUpdateParams, opts: T.untyped).returns(String)
         }
        def serialize_v1_subscription_update(subscription_exposed_id, params = {}, opts = {}); end
      end
    end
  end
end