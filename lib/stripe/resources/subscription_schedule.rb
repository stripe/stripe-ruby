# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A subscription schedule allows you to create and manage the lifecycle of a subscription by predefining expected changes.
  #
  # Related guide: [Subscription schedules](https://stripe.com/docs/billing/subscriptions/subscription-schedules)
  class SubscriptionSchedule < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "subscription_schedule"

    # Cancels a subscription schedule and its associated subscription immediately (if the subscription schedule has an active subscription). A subscription schedule can only be canceled if its status is not_started or active.
    def cancel(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/subscription_schedules/%<schedule>s/cancel", { schedule: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Releases the subscription schedule immediately, which will stop scheduling of its phases, but leave any existing subscription in place. A schedule can only be released if its status is not_started or active. If the subscription schedule is currently associated with a subscription, releasing it will remove its subscription property and set the subscription's ID to the released_subscription property.
    def release(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/subscription_schedules/%<schedule>s/release", { schedule: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Cancels a subscription schedule and its associated subscription immediately (if the subscription schedule has an active subscription). A subscription schedule can only be canceled if its status is not_started or active.
    def self.cancel(schedule, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/subscription_schedules/%<schedule>s/cancel", { schedule: CGI.escape(schedule) }),
        params: params,
        opts: opts
      )
    end

    # Releases the subscription schedule immediately, which will stop scheduling of its phases, but leave any existing subscription in place. A schedule can only be released if its status is not_started or active. If the subscription schedule is currently associated with a subscription, releasing it will remove its subscription property and set the subscription's ID to the released_subscription property.
    def self.release(schedule, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/subscription_schedules/%<schedule>s/release", { schedule: CGI.escape(schedule) }),
        params: params,
        opts: opts
      )
    end

    # Creates a new subscription schedule object. Each customer can have up to 500 active or scheduled subscriptions.
    def self.create(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: "/v1/subscription_schedules",
        params: params,
        opts: opts
      )
    end

    # Retrieves the list of your subscription schedules.
    def self.list(filters = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: "/v1/subscription_schedules",
        params: filters,
        opts: opts
      )
    end

    # Updates an existing subscription schedule.
    def self.update(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/subscription_schedules/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end
  end
end
