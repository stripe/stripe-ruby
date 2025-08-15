# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class RateCardService < StripeService
        attr_reader :rates, :versions

        def initialize(requestor)
          super
          @rates = Stripe::V2::Billing::RateCards::RateService.new(@requestor)
          @versions = Stripe::V2::Billing::RateCards::VersionService.new(@requestor)
        end

        class ListParams < Stripe::RequestParams
          # Optionally filter to active/inactive RateCards.
          attr_accessor :active
          # Optionally set the maximum number of results per page. Defaults to 20.
          attr_accessor :limit

          def initialize(active: nil, limit: nil)
            @active = active
            @limit = limit
          end
        end

        class CreateParams < Stripe::RequestParams
          # The currency of this RateCard.
          attr_accessor :currency
          # A customer-facing name for the RateCard.
          # This name is used in Stripe-hosted products like the Customer Portal and Checkout. It does not show up on Invoices.
          # Maximum length of 250 characters.
          attr_accessor :display_name
          # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          attr_accessor :metadata
          # The interval for assessing service. For example, a monthly RateCard with a rate of $1 for the first 10 "workloads"
          # and $2 thereafter means "$1 per workload up to 10 workloads during a month of service." This is similar to but
          # distinct from billing interval; the service interval deals with the rate at which the customer accumulates fees,
          # while the billing interval in Cadence deals with the rate the customer is billed.
          attr_accessor :service_interval
          # The length of the interval for assessing service. For example, set this to 3 and `service_interval` to `"month"` in
          # order to specify quarterly service.
          attr_accessor :service_interval_count
          # The Stripe Tax tax behavior - whether the rates are inclusive or exclusive of tax.
          attr_accessor :tax_behavior

          def initialize(
            currency: nil,
            display_name: nil,
            metadata: nil,
            service_interval: nil,
            service_interval_count: nil,
            tax_behavior: nil
          )
            @currency = currency
            @display_name = display_name
            @metadata = metadata
            @service_interval = service_interval
            @service_interval_count = service_interval_count
            @tax_behavior = tax_behavior
          end
        end

        class RetrieveParams < Stripe::RequestParams; end

        class UpdateParams < Stripe::RequestParams
          # Sets whether the RateCard is active. Inactive RateCards cannot be used in new activations or have new rates added.
          attr_accessor :active
          # A customer-facing name for the RateCard.
          # This name is used in Stripe-hosted products like the Customer Portal and Checkout. It does not show up on Invoices.
          # Maximum length of 250 characters.
          attr_accessor :display_name
          # Changes the version that new RateCard activations will use. Providing `live_version = "latest"` will set the
          # RateCard's `live_version` to its latest version.
          attr_accessor :live_version
          # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          attr_accessor :metadata

          def initialize(active: nil, display_name: nil, live_version: nil, metadata: nil)
            @active = active
            @display_name = display_name
            @live_version = live_version
            @metadata = metadata
          end
        end

        # Create a RateCard object.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/billing/rate_cards",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # List all RateCard objects.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/billing/rate_cards",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieve the latest version of a RateCard object.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/billing/rate_cards/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Update a RateCard object.
        def update(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/billing/rate_cards/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
