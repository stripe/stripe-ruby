# frozen_string_literal: true

module Stripe
  class SubscriptionSchedule < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save
    extend Stripe::APIOperations::NestedResource

    OBJECT_NAME = "subscription_schedule".freeze

    custom_method :cancel, http_verb: :post
    custom_method :release, http_verb: :post

    nested_resource_class_methods :revision, operations: %i[retrieve list]

    def cancel(params = {}, opts = {})
      resp, opts = request(:post, resource_url + "/cancel", params, opts)
      initialize_from(resp.data, opts)
    end

    def release(params = {}, opts = {})
      resp, opts = request(:post, resource_url + "/release", params, opts)
      initialize_from(resp.data, opts)
    end

    def revisions(params = {}, opts = {})
      resp, opts = request(:get, resource_url + "/revisions", params, opts)
      Util.convert_to_stripe_object(resp.data, opts)
    end
  end
end
