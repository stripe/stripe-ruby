# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module TestHelpers
    module Issuing
      class PersonalizationDesignService < StripeService
        # Updates the status of the specified testmode personalization design object to active.
        def activate(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v1/test_helpers/issuing/personalization_designs/%<id>s/activate", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Updates the status of the specified testmode personalization design object to inactive.
        def deactivate(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v1/test_helpers/issuing/personalization_designs/%<id>s/deactivate", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Updates the status of the specified testmode personalization design object to rejected.
        def reject(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v1/test_helpers/issuing/personalization_designs/%<id>s/reject", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
