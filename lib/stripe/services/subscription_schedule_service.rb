# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class SubscriptionScheduleService < StripeService
    # Amends an existing subscription schedule.
    def amend(schedule, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/subscription_schedules/%<schedule>s/amend", { schedule: CGI.escape(schedule) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Cancels a subscription schedule and its associated subscription immediately (if the subscription schedule has an active subscription). A subscription schedule can only be canceled if its status is not_started or active.
    def cancel(schedule, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/subscription_schedules/%<schedule>s/cancel", { schedule: CGI.escape(schedule) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Creates a new subscription schedule object. Each customer can have up to 500 active or scheduled subscriptions.
    def create(params = {}, opts = {})
      request(
        method: :post,
        path: "/v1/subscription_schedules",
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieves the list of your subscription schedules.
    def list(params = {}, opts = {})
      request(
        method: :get,
        path: "/v1/subscription_schedules",
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Releases the subscription schedule immediately, which will stop scheduling of its phases, but leave any existing subscription in place. A schedule can only be released if its status is not_started or active. If the subscription schedule is currently associated with a subscription, releasing it will remove its subscription property and set the subscription's ID to the released_subscription property.
    def release(schedule, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/subscription_schedules/%<schedule>s/release", { schedule: CGI.escape(schedule) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieves the details of an existing subscription schedule. You only need to supply the unique subscription schedule identifier that was returned upon subscription schedule creation.
    def retrieve(schedule, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/subscription_schedules/%<schedule>s", { schedule: CGI.escape(schedule) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Serializes a SubscriptionSchedule cancel request into a batch job JSONL line.
    def serialize_batch_cancel(schedule, params = {}, opts = {})
      item_id = SecureRandom.uuid
      stripe_version = opts[:stripe_version] || Stripe.api_version

      item = {
        id: item_id,
        params: params,
        stripe_version: stripe_version,
      }
      item[:path_params] = { schedule: schedule }
      item[:context] = opts[:stripe_context] if opts[:stripe_context]
      JSON.generate(item)
    end

    # Serializes a SubscriptionSchedule create request into a batch job JSONL line.
    def serialize_batch_create(params = {}, opts = {})
      item_id = SecureRandom.uuid
      stripe_version = opts[:stripe_version] || Stripe.api_version

      item = {
        id: item_id,
        params: params,
        stripe_version: stripe_version,
      }
      item[:context] = opts[:stripe_context] if opts[:stripe_context]
      JSON.generate(item)
    end

    # Serializes a SubscriptionSchedule update request into a batch job JSONL line.
    def serialize_batch_update(schedule, params = {}, opts = {})
      item_id = SecureRandom.uuid
      stripe_version = opts[:stripe_version] || Stripe.api_version

      item = {
        id: item_id,
        params: params,
        stripe_version: stripe_version,
      }
      item[:path_params] = { schedule: schedule }
      item[:context] = opts[:stripe_context] if opts[:stripe_context]
      JSON.generate(item)
    end

    # Updates an existing subscription schedule.
    def update(schedule, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/subscription_schedules/%<schedule>s", { schedule: CGI.escape(schedule) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
