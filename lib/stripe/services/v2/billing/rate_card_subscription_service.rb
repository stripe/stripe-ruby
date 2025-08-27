# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class RateCardSubscriptionService < StripeService
        class ListParams < Stripe::RequestParams
          class Payer < Stripe::RequestParams
            # The ID of the Customer object. If provided, only the Rate Card Subscriptions that are subscribed on the Billing Cadences with the specified payer will be returned.
            attr_accessor :customer
            # A string identifying the type of the payer. Currently the only supported value is `customer`.
            attr_accessor :type

            def initialize(customer: nil, type: nil)
              @customer = customer
              @type = type
            end
          end
          # Optionally filter by a BillingCadence. Mutually exclusive with `payers`, `rate_card`, and `rate_card_version`.
          attr_accessor :billing_cadence
          # The page size limit, if not provided the default is 20.
          attr_accessor :limit
          # Optionally filter by the payer associated with Billing Cadences which the Rate Card Subscriptions are subscribed to.
          # Mutually exclusive with `billing_cadence`, `rate_card`, and `rate_card_version`.
          attr_accessor :payer
          # Optionally filter by a RateCard. Mutually exclusive with `billing_cadence`, `payers`, and `rate_card_version`.
          attr_accessor :rate_card
          # Optionally filter by a RateCard version. Mutually exclusive with `billing_cadence`, `payers`, and `rate_card`.
          attr_accessor :rate_card_version
          # Optionally filter by servicing status.
          attr_accessor :servicing_status

          def initialize(
            billing_cadence: nil,
            limit: nil,
            payer: nil,
            rate_card: nil,
            rate_card_version: nil,
            servicing_status: nil
          )
            @billing_cadence = billing_cadence
            @limit = limit
            @payer = payer
            @rate_card = rate_card
            @rate_card_version = rate_card_version
            @servicing_status = servicing_status
          end
        end

        class CreateParams < Stripe::RequestParams
          # The ID of the Billing Cadence.
          attr_accessor :billing_cadence
          # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          attr_accessor :metadata
          # The ID of the Rate Card.
          attr_accessor :rate_card
          # The ID of the Rate Card Version. If not specified, defaults to the "live_version" of the Rate Card at the time of creation.
          attr_accessor :rate_card_version

          def initialize(
            billing_cadence: nil,
            metadata: nil,
            rate_card: nil,
            rate_card_version: nil
          )
            @billing_cadence = billing_cadence
            @metadata = metadata
            @rate_card = rate_card
            @rate_card_version = rate_card_version
          end
        end

        class RetrieveParams < Stripe::RequestParams; end

        class UpdateParams < Stripe::RequestParams
          # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          attr_accessor :metadata

          def initialize(metadata: nil)
            @metadata = metadata
          end
        end

        class CancelParams < Stripe::RequestParams; end

        # Cancel an existing, active Rate Card Subscription.
        def cancel(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/billing/rate_card_subscriptions/%<id>s/cancel", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Create a Rate Card Subscription to bill a Rate Card on a specified Billing Cadence.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/billing/rate_card_subscriptions",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # List all Rate Card Subscription objects.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/billing/rate_card_subscriptions",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieve a Rate Card Subscription by ID.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/billing/rate_card_subscriptions/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Update fields on an existing, active Rate Card Subscription.
        def update(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/billing/rate_card_subscriptions/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
