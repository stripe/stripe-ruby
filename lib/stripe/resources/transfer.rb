# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class Transfer < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save
    extend Stripe::APIOperations::NestedResource

    OBJECT_NAME = "transfer"

    nested_resource_class_methods :reversal,
                                  operations: %i[create retrieve update list]

    def cancel(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/transfers/%<id>s/cancel", { id: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    def self.cancel(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/transfers/%<id>s/cancel", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end
  end
end
