# File generated from our OpenAPI spec
# frozen_string_literal: true

module EwStripe
  module Issuing
    class Card < APIResource
      extend EwStripe::APIOperations::Create
      extend EwStripe::APIOperations::List
      include EwStripe::APIOperations::Save

      OBJECT_NAME = "issuing.card"

      custom_method :details, http_verb: :get

      def details(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: resource_url + "/details",
          params: params,
          opts: opts
        )
      end
    end
  end
end
