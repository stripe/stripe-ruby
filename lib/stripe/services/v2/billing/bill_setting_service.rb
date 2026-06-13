# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class BillSettingService < StripeService
        attr_reader :versions

        def initialize(requestor)
          super
          @versions = Stripe::V2::Billing::BillSettings::VersionService.new(@requestor)
        end

        # Create a BillSetting object.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/billing/bill_settings",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # List all BillSetting objects.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/billing/bill_settings",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieve a BillSetting object by ID.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/billing/bill_settings/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Update fields on an existing BillSetting object.
        def update(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/billing/bill_settings/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
