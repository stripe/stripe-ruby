# frozen_string_literal: true

module Stripe
  class UsageRecord < APIResource
    OBJECT_NAME = "usage_record".freeze

    def self.create(params = {}, opts = {})
      unless params.key?(:subscription_item)
        raise ArgumentError, "Params must have a subscription_item key"
      end
      req_params = params.clone.delete_if do |key, _value|
        key == :subscription_item
      end
      resp, opts = request(
        :post,
        "/v1/subscription_items/#{params[:subscription_item]}/usage_records",
        req_params,
        opts
      )
      Util.convert_to_stripe_object(resp.data, opts)
    end
  end
end
