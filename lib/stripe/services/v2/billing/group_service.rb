# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class GroupService < StripeService
        attr_reader :invoices, :spend_modifier_rules

        def initialize(requestor)
          super
          @invoices = Stripe::V2::Billing::Groups::InvoiceService.new(@requestor)
          @spend_modifier_rules = Stripe::V2::Billing::Groups::SpendModifierRuleService
                                  .new(@requestor)
        end

        # Cancel a BillingGroup.
        def cancel(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/billing/groups/%<id>s/cancel", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Create a BillingGroup.
        def create(params = {}, opts = {})
          unless params.is_a?(Stripe::RequestParams)
            params = ::Stripe::V2::Billing::GroupCreateParams.coerce_params(params)
          end

          request(
            method: :post,
            path: "/v2/billing/groups",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # List Billing Groups.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/billing/groups",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieve a BillingGroup.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/billing/groups/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Update a BillingGroup.
        def update(id, params = {}, opts = {})
          unless params.is_a?(Stripe::RequestParams)
            params = ::Stripe::V2::Billing::GroupUpdateParams.coerce_params(params)
          end

          request(
            method: :post,
            path: format("/v2/billing/groups/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
