# File generated from our OpenAPI spec
# frozen_string_literal: true

module EwStripe
  class CreditNote < APIResource
    extend EwStripe::APIOperations::Create
    extend EwStripe::APIOperations::List
    include EwStripe::APIOperations::Save

    OBJECT_NAME = "credit_note"

    custom_method :void_credit_note, http_verb: :post, http_path: "void"

    def void_credit_note(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: resource_url + "/void",
        params: params,
        opts: opts
      )
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
