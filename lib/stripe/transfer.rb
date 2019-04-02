# frozen_string_literal: true

module Stripe
  class Transfer < APIResource
    extend Stripe::APIOperations::List
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Save
    extend Stripe::APIOperations::NestedResource

    OBJECT_NAME = "transfer".freeze

    custom_method :cancel, http_verb: :post

    nested_resource_class_methods :reversal, operations: %i[create retrieve update list]

    def cancel
      resp, api_key = request(:post, cancel_url)
      initialize_from(resp.data, api_key)
    end

    def cancel_url
      resource_url + "/cancel"
    end
  end
end
