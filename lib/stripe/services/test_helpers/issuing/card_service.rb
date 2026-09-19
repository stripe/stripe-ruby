# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module TestHelpers
    module Issuing
      class CardService < StripeService
        # Updates the shipping status of the specified Issuing Card object to delivered.
        def deliver_card(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v1/test_helpers/issuing/cards/%<id>s/shipping/deliver", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Updates the shipping status of the specified Issuing Card object to failure.
        def fail_card(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v1/test_helpers/issuing/cards/%<id>s/shipping/fail", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Updates the shipping status of the specified Issuing Card object to returned.
        def return_card(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v1/test_helpers/issuing/cards/%<id>s/shipping/return", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Updates the shipping status of the specified Issuing Card object to shipped.
        def ship_card(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v1/test_helpers/issuing/cards/%<id>s/shipping/ship", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Updates the shipping status of the specified Issuing Card object to submitted. This method requires Stripe Version ‘2024-09-30.acacia' or later.
        def submit_card(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v1/test_helpers/issuing/cards/%<id>s/shipping/submit", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
