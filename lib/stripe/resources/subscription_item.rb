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

    def usage_record_summaries(params = {}, opts = {})
      resp, opts = request(:get, resource_url + "/usage_record_summaries", params, opts)
      Util.convert_to_stripe_object(resp.data, opts)
    end
  end
end
