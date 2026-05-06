# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class PaymentLocationService < StripeService
    # Create a Payment Location.
    def create(params = {}, opts = {})
      request(
        method: :post,
        path: "/v1/payment_locations",
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Delete a Payment Location.
    def delete(id, params = {}, opts = {})
      request(
        method: :delete,
        path: format("/v1/payment_locations/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieve a Payment Location.
    def retrieve(id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/payment_locations/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Update a Payment Location.
    def update(id, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/payment_locations/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
