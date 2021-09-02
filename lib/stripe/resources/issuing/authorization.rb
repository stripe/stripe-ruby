# File generated from our OpenAPI spec
# frozen_string_literal: true

module EwStripe
  module Issuing
    class Authorization < APIResource
      extend EwStripe::APIOperations::List
      include EwStripe::APIOperations::Save

      OBJECT_NAME = "issuing.authorization"

      custom_method :approve, http_verb: :post
      custom_method :decline, http_verb: :post

      def approve(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: resource_url + "/approve",
          params: params,
          opts: opts
        )
      end

      def decline(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: resource_url + "/decline",
          params: params,
          opts: opts
        )
      end
    end
  end
end
