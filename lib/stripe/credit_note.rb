# frozen_string_literal: true

module Stripe
  class CreditNote < APIResource
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save
    extend Stripe::APIOperations::Create

    OBJECT_NAME = "credit_note".freeze

    custom_method :void_credit_note, http_verb: :post, http_path: "void"

    def void_credit_note(params = {}, opts = {})
      url = resource_url + "/void"
      resp, opts = request(:post, url, params, opts)
      initialize_from(resp.data, opts)
    end
  end
end
