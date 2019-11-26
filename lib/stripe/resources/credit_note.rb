# frozen_string_literal: true

module Stripe
  class CreditNote < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "credit_note"

    custom_method :preview, http_verb: :get
    custom_method :void_credit_note, http_verb: :post, http_path: "void"

    def preview(params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: resource_url + "/preview",
        params: params,
        opts: opts
      )
    end

    def void_credit_note(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: resource_url + "/void",
        params: params,
        opts: opts
      )
    end
  end
end
