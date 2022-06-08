# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class SetupIntent < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "setup_intent"

    def cancel(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/setup_intents/%<intent>s/cancel", { intent: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    def confirm(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/setup_intents/%<intent>s/confirm", { intent: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    def verify_microdeposits(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/setup_intents/%<intent>s/verify_microdeposits", { intent: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    def self.cancel(intent, params = {}, opts = {})
      resp, opts = execute_resource_request(
        :post,
        format("/v1/setup_intents/%<intent>s/cancel", { intent: CGI.escape(intent) }),
        params,
        opts
      )
      Util.convert_to_stripe_object(resp.data, opts)
    end

    def self.confirm(intent, params = {}, opts = {})
      resp, opts = execute_resource_request(
        :post,
        format("/v1/setup_intents/%<intent>s/confirm", { intent: CGI.escape(intent) }),
        params,
        opts
      )
      Util.convert_to_stripe_object(resp.data, opts)
    end

    def self.verify_microdeposits(intent, params = {}, opts = {})
      resp, opts = execute_resource_request(
        :post,
        format("/v1/setup_intents/%<intent>s/verify_microdeposits", { intent: CGI.escape(intent) }),
        params,
        opts
      )
      Util.convert_to_stripe_object(resp.data, opts)
    end
  end
end
