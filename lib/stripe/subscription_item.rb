# frozen_string_literal: true

module Stripe
  class SubscriptionItem < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "subscription_item".freeze

    def usage_record_summaries(params = {}, opts = {})
      resp, opts = request(:get, resource_url + "/usage_record_summaries", params, Util.normalize_opts(opts))
      Util.convert_to_stripe_object(resp.data, opts)
    end
  end
end
