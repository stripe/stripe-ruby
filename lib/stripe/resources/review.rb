# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Reviews can be used to supplement automated fraud detection with human expertise.
  #
  # Learn more about [Radar](https://stripe.com/radar) and reviewing payments
  # [here](https://stripe.com/docs/radar/reviews).
  class Review < APIResource
    extend Stripe::APIOperations::List

    OBJECT_NAME = "review"

    # Approves a Review object, closing it and removing it from the list of reviews.
    def approve(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/reviews/%<review>s/approve", { review: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Approves a Review object, closing it and removing it from the list of reviews.
    def self.approve(review, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/reviews/%<review>s/approve", { review: CGI.escape(review) }),
        params: params,
        opts: opts
      )
    end

    # Returns a list of Review objects that have open set to true. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
    def self.list(filters = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/reviews", params: filters, opts: opts)
    end
  end
end
