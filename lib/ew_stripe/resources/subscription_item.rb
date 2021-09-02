# File generated from our OpenAPI spec
# frozen_string_literal: true

module EwStripe
  class SubscriptionItem < APIResource
    extend EwStripe::APIOperations::Create
    include EwStripe::APIOperations::Delete
    extend EwStripe::APIOperations::List
    include EwStripe::APIOperations::Save
    extend EwStripe::APIOperations::NestedResource

    OBJECT_NAME = "subscription_item"

    nested_resource_class_methods :usage_record, operations: %i[create]
    nested_resource_class_methods :usage_record_summary,
                                  operations: %i[list],
                                  resource_plural: "usage_record_summaries"

    def usage_record_summaries(params = {}, opts = {})
      resp, opts = execute_resource_request(:get, resource_url + "/usage_record_summaries", params, opts)
      Util.convert_to_stripe_object(resp.data, opts)
    end
    extend Gem::Deprecate
    deprecate :usage_record_summaries, :"SubscriptionItem.list_usage_record_summaries", 2020, 1
  end
end
