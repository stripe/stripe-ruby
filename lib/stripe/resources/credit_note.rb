# frozen_string_literal: true

module Stripe
  class CreditNote < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

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
  end
end
