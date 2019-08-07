# frozen_string_literal: true

module Stripe
  class Transfer < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save
    extend Stripe::APIOperations::NestedResource

    OBJECT_NAME = "transfer"

    custom_method :cancel, http_verb: :post

    nested_resource_class_methods :reversal,
                                  operations: %i[create retrieve update list]

    def cancel(params = {}, opts = {})
      resp, opts = request(:post, resource_url + "/cancel", params, opts)
      initialize_from(resp.data, opts)
    end
  end
end
