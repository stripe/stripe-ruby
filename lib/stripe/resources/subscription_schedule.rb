# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A subscription schedule allows you to create and manage the lifecycle of a subscription by predefining expected changes.
  #
  # Related guide: [Subscription Schedules](https://stripe.com/docs/billing/subscriptions/subscription-schedules).
  class SubscriptionSchedule < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "subscription_schedule"

    def cancel(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/subscription_schedules/%<schedule>s/cancel", { schedule: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    def release(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/subscription_schedules/%<schedule>s/release", { schedule: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    def self.cancel(schedule, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/subscription_schedules/%<schedule>s/cancel", { schedule: CGI.escape(schedule) }),
        params: params,
        opts: opts
      )
    end

    def self.release(schedule, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/subscription_schedules/%<schedule>s/release", { schedule: CGI.escape(schedule) }),
        params: params,
        opts: opts
      )
    end
  end
end
