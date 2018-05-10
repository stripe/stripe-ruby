# frozen_string_literal: true

module Stripe
  class UsageRecord < APIResource
    def self.create(params = {}, opts = {})
      raise(ArgumentError, "Params must have a subscription_item key") unless params.key?(:subscription_item)
      req_params = params.clone.delete_if { |key, _value| key == :subscription_item }
      resp, opts = request(:post, "/v1/subscription_items/#{params[:subscription_item]}/usage_records", req_params, opts)
      Util.convert_to_stripe_object(resp.data, opts)
    end

    OBJECT_NAME = "usage_record".freeze
  end
end
