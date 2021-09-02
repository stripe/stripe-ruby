# File generated from our OpenAPI spec
# frozen_string_literal: true

module EwStripe
  class Subscription < APIResource
    extend EwStripe::APIOperations::Create
    include EwStripe::APIOperations::Delete
    extend EwStripe::APIOperations::List
    include EwStripe::APIOperations::Save

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
