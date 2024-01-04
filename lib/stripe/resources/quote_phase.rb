# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A quote phase describes the line items, coupons, and trialing status of a subscription for a predefined time period.
  class QuotePhase < APIResource
    extend Stripe::APIOperations::List

    OBJECT_NAME = "quote_phase"

    # When retrieving a quote phase, there is an includable line_items property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.
    def list_line_items(params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/quote_phases/%<quote_phase>s/line_items", { quote_phase: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # When retrieving a quote phase, there is an includable line_items property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.
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
