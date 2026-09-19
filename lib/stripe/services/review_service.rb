# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class ReviewService < StripeService
    # Approves a Review object, closing it and removing it from the list of reviews.
    def approve(id, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/reviews/%<id>s/approve", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Returns a list of Review objects that have open set to true. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
    def list(params = {}, opts = {})
      request(method: :get, path: "/v1/reviews", params: params, opts: opts, base_address: :api)
    end

    # Retrieves a Review object.
    def retrieve(id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/reviews/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
