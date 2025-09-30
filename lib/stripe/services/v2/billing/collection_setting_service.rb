# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class CollectionSettingService < StripeService
        attr_reader :versions

        def initialize(requestor)
          super
          @versions = Stripe::V2::Billing::CollectionSettings::VersionService.new(@requestor)
        end

        # Create a CollectionSetting object.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/billing/collection_settings",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # List all CollectionSetting objects.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/billing/collection_settings",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieve a CollectionSetting by ID.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/billing/collection_settings/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Update fields on an existing CollectionSetting.
        def update(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/billing/collection_settings/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
