# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class DisputeService < StripeService
        # Creates a Dispute for the specified money movement.
        #
        # ** raises AlreadyExistsError
        # ** raises CannotProceedError
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/money_management/disputes",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves a list of Disputes.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/money_management/disputes",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves a Dispute.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/money_management/disputes/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
