# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class Subscription < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List
    extend Stripe::APIOperations::Search
    include Stripe::APIOperations::Save

    OBJECT_NAME = "subscription"

    def delete_discount(params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: format("/v1/subscriptions/%<subscription_exposed_id>s/discount", { subscription_exposed_id: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    def self.delete_discount(subscription_exposed_id, params = {}, opts = {})
      resp, opts = execute_resource_request(
        :delete,
        format("/v1/subscriptions/%<subscription_exposed_id>s/discount", { subscription_exposed_id: CGI.escape(subscription_exposed_id) }),
        params,
        opts
      )
      Util.convert_to_stripe_object(resp.data, opts)
    end

    save_nested_resource :source

    def self.search(params = {}, opts = {})
      _search("/v1/subscriptions/search", params, opts)
    end

    def self.search_auto_paging_each(params = {}, opts = {}, &blk)
      search(params, opts).auto_paging_each(&blk)
    end
  end
end
