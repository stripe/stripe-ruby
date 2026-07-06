# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class ContractService < StripeService
        attr_reader :pricing_lines

        def initialize(requestor)
          super
          @pricing_lines = Stripe::V2::Billing::Contracts::PricingLinesService.new(@requestor)
        end

        # Activate a draft contract.
        def activate(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/billing/contracts/%<id>s/activate", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Cancel an active contract.
        def cancel(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/billing/contracts/%<id>s/cancel", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Create a draft contract.
        def create(params = {}, opts = {})
          unless params.is_a?(Stripe::RequestParams)
            params = ::Stripe::V2::Billing::ContractCreateParams.coerce_params(params)
          end

          request(
            method: :post,
            path: "/v2/billing/contracts",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Delete a draft contract.
        def delete(id, params = {}, opts = {})
          request(
            method: :delete,
            path: format("/v2/billing/contracts/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # List contracts.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/billing/contracts",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieve a contract.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/billing/contracts/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Update a draft or active contract.
        def update(id, params = {}, opts = {})
          unless params.is_a?(Stripe::RequestParams)
            params = ::Stripe::V2::Billing::ContractUpdateParams.coerce_params(params)
          end

          request(
            method: :post,
            path: format("/v2/billing/contracts/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
