# File generated from our OpenAPI spec
# frozen_string_literal: true

module EwStripe
  class Dispute < APIResource
    extend EwStripe::APIOperations::List
    include EwStripe::APIOperations::Save

    OBJECT_NAME = "dispute"

    custom_method :close, http_verb: :post

    def close(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: resource_url + "/close",
        params: params,
        opts: opts
      )
    end
  end
end
