# frozen_string_literal: true

module Stripe
  class Subscription < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "subscription"

    custom_method :delete_discount, http_verb: :delete, http_path: "discount"

    save_nested_resource :source

    def delete_discount
      resp, opts = request(:delete, resource_url + "/discount")
      initialize_from(resp.data, opts, true)
    end
  end
end
