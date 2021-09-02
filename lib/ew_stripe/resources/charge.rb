# File generated from our OpenAPI spec
# frozen_string_literal: true

module EwStripe
  class Charge < APIResource
    extend EwStripe::APIOperations::Create
    extend EwStripe::APIOperations::List
    include EwStripe::APIOperations::Save

    OBJECT_NAME = "charge"

    custom_method :capture, http_verb: :post

    def capture(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: resource_url + "/capture",
        params: params,
        opts: opts
      )
    end
  end
end
