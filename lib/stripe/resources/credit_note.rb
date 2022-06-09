# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class CreditNote < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "credit_note"

    def void_credit_note(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/credit_notes/%<id>s/void", { id: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    def self.void_credit_note(id, params = {}, opts = {})
      resp, opts = execute_resource_request(
        :post,
        format("/v1/credit_notes/%<id>s/void", { id: CGI.escape(id) }),
        params,
        opts
      )
      Util.convert_to_stripe_object(resp.data, opts)
    end

    def self.preview(params, opts = {})
      resp, opts = execute_resource_request(:get, resource_url + "/preview", params, opts)
      Util.convert_to_stripe_object(resp.data, opts)
    end

    def self.list_preview_line_items(params, opts = {})
      resp, opts = execute_resource_request(:get, resource_url + "/preview/lines", params, opts)
      Util.convert_to_stripe_object(resp.data, opts)
    end
  end
end
