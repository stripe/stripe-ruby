# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class SubscriptionItem < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save
    extend Stripe::APIOperations::NestedResource

    OBJECT_NAME = "subscription_item"

    nested_resource_class_methods :usage_record, operations: %i[create]
    nested_resource_class_methods :usage_record_summary,
                                  operations: %i[list],
                                  resource_plural: "usage_record_summaries"

    def usage_record_summaries(params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: resource_url + "/usage_record_summaries",
        params: params,
        opts: opts
      )
    end
    extend Gem::Deprecate
    deprecate :usage_record_summaries, :"SubscriptionItem.list_usage_record_summaries", 2020, 1
  end
end
