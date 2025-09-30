# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class LicenseFeeService < StripeService
        attr_reader :versions

        def initialize(requestor)
          super
          @versions = Stripe::V2::Billing::LicenseFees::VersionService.new(@requestor)
        end

        # Create a License Fee object.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/billing/license_fees",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # List all License Fee objects.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/billing/license_fees",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieve a License Fee object.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/billing/license_fees/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Update a License Fee object.
        def update(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/billing/license_fees/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
