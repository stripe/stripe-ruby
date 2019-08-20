# frozen_string_literal: true

module Stripe
  class Subscription < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "subscription"

    custom_method :delete_discount, http_verb: :delete, http_path: "discount"

    def delete_discount(params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: resource_url + "/discount",
        params: params,
        opts: opts
      )
    end

    save_nested_resource :source
  end
end
