# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class QuotePhase < APIResource
    extend Stripe::APIOperations::List

    OBJECT_NAME = "quote_phase"

    def list_line_items(params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/quote_phases/%<quote_phase>s/line_items", { quote_phase: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    def self.list_line_items(quote_phase, params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/quote_phases/%<quote_phase>s/line_items", { quote_phase: CGI.escape(quote_phase) }),
        params: params,
        opts: opts
      )
    end
  end
end
