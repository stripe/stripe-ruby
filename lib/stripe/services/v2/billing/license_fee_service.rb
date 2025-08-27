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

        class ListParams < Stripe::RequestParams
          # Filter by licensed item.
          attr_accessor :licensed_item
          # Optionally set the maximum number of results per page. Defaults to 20.
          attr_accessor :limit
          # Filter by lookup keys.
          # You can specify up to 10 lookup keys.
          attr_accessor :lookup_keys

          def initialize(licensed_item: nil, limit: nil, lookup_keys: nil)
            @licensed_item = licensed_item
            @limit = limit
            @lookup_keys = lookup_keys
          end
        end

        class CreateParams < Stripe::RequestParams
          class Tier < Stripe::RequestParams
            # Price for the entire tier, represented as a decimal string in minor currency units with at most 12 decimal places.
            attr_accessor :flat_amount
            # Per-unit price for units included in this tier, represented as a decimal string in minor currency units with at
            # most 12 decimal places.
            attr_accessor :unit_amount
            # Up to and including this quantity will be contained in the tier. Only one of `up_to_decimal` and `up_to_inf` may
            # be set.
            attr_accessor :up_to_decimal
            # No upper bound to this tier. Only one of `up_to_decimal` and `up_to_inf` may be set.
            attr_accessor :up_to_inf

            def initialize(flat_amount: nil, unit_amount: nil, up_to_decimal: nil, up_to_inf: nil)
              @flat_amount = flat_amount
              @unit_amount = unit_amount
              @up_to_decimal = up_to_decimal
              @up_to_inf = up_to_inf
            end
          end

          class TransformQuantity < Stripe::RequestParams
            # Divide usage by this number.
            attr_accessor :divide_by
            # After division, round the result up or down.
            attr_accessor :round

            def initialize(divide_by: nil, round: nil)
              @divide_by = divide_by
              @round = round
            end
          end
          # Three-letter ISO currency code, in lowercase. Must be a supported currency.
          attr_accessor :currency
          # A customer-facing name for the License Fee.
          # This name is used in Stripe-hosted products like the Customer Portal and Checkout. It does not show up on Invoices.
          # Maximum length of 250 characters.
          attr_accessor :display_name
          # The Licensed Item that this License Fee binds to.
          attr_accessor :licensed_item
          # An internal key you can use to search for a particular license fee. Maximum length of 200 characters.
          attr_accessor :lookup_key
          # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          attr_accessor :metadata
          # The interval for assessing service. For example, a monthly license fee with a rate of $1 for the first 10 "workloads"
          # and $2 thereafter means "$1 per workload up to 10 workloads during a month of service." This is similar to but
          # distinct from billing interval; the service interval deals with the rate at which the customer accumulates fees,
          # while the billing interval in Cadence deals with the rate the customer is billed.
          attr_accessor :service_interval
          # The length of the interval for assessing service. For example, set this to 3 and `service_interval` to `"month"` in
          # order to specify quarterly service.
          attr_accessor :service_interval_count
          # The Stripe Tax tax behavior - whether the license fee is inclusive or exclusive of tax.
          attr_accessor :tax_behavior
          # Defines whether the tiered price should be graduated or volume-based. In volume-based tiering, the maximum
          # quantity within a period determines the per-unit price. In graduated tiering, the pricing changes as the quantity
          # grows into new tiers. Can only be set if `tiers` is set.
          attr_accessor :tiering_mode
          # Each element represents a pricing tier. Cannot be set if `unit_amount` is provided.
          attr_accessor :tiers
          # Apply a transformation to the reported usage or set quantity before computing the amount billed.
          attr_accessor :transform_quantity
          # The per-unit amount to be charged, represented as a decimal string in minor currency units with at most 12 decimal
          # places. Cannot be set if `tiers` is provided.
          attr_accessor :unit_amount

          def initialize(
            currency: nil,
            display_name: nil,
            licensed_item: nil,
            lookup_key: nil,
            metadata: nil,
            service_interval: nil,
            service_interval_count: nil,
            tax_behavior: nil,
            tiering_mode: nil,
            tiers: nil,
            transform_quantity: nil,
            unit_amount: nil
          )
            @currency = currency
            @display_name = display_name
            @licensed_item = licensed_item
            @lookup_key = lookup_key
            @metadata = metadata
            @service_interval = service_interval
            @service_interval_count = service_interval_count
            @tax_behavior = tax_behavior
            @tiering_mode = tiering_mode
            @tiers = tiers
            @transform_quantity = transform_quantity
            @unit_amount = unit_amount
          end
        end

        class RetrieveParams < Stripe::RequestParams; end

        class UpdateParams < Stripe::RequestParams
          class Tier < Stripe::RequestParams
            # Price for the entire tier, represented as a decimal string in minor currency units with at most 12 decimal places.
            attr_accessor :flat_amount
            # Per-unit price for units included in this tier, represented as a decimal string in minor currency units with at
            # most 12 decimal places.
            attr_accessor :unit_amount
            # Up to and including this quantity will be contained in the tier. Only one of `up_to_decimal` and `up_to_inf` may
            # be set.
            attr_accessor :up_to_decimal
            # No upper bound to this tier. Only one of `up_to_decimal` and `up_to_inf` may be set.
            attr_accessor :up_to_inf

            def initialize(flat_amount: nil, unit_amount: nil, up_to_decimal: nil, up_to_inf: nil)
              @flat_amount = flat_amount
              @unit_amount = unit_amount
              @up_to_decimal = up_to_decimal
              @up_to_inf = up_to_inf
            end
          end

          class TransformQuantity < Stripe::RequestParams
            # Divide usage by this number.
            attr_accessor :divide_by
            # After division, round the result up or down.
            attr_accessor :round

            def initialize(divide_by: nil, round: nil)
              @divide_by = divide_by
              @round = round
            end
          end
          # A customer-facing name for the License Fee.
          # This name is used in Stripe-hosted products like the Customer Portal and Checkout. It does not show up on Invoices.
          # Maximum length of 250 characters.
          attr_accessor :display_name
          # Changes the version that new license fee will use. Providing `live_version = "latest"` will set the
          # license fee's `live_version` to its latest version.
          attr_accessor :live_version
          # An internal key you can use to search for a particular license fee. Maximum length of 200 characters.
          attr_accessor :lookup_key
          # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          attr_accessor :metadata
          # Defines whether the tiered price should be graduated or volume-based. In volume-based tiering, the maximum
          # quantity within a period determines the per-unit price. In graduated tiering, the pricing changes as the quantity
          # grows into new tiers. Can only be set if `tiers` is set.
          attr_accessor :tiering_mode
          # Each element represents a pricing tier. Cannot be set if `unit_amount` is provided.
          attr_accessor :tiers
          # Apply a transformation to the reported usage or set quantity before computing the amount billed.
          attr_accessor :transform_quantity
          # The per-unit amount to be charged, represented as a decimal string in minor currency units with at most 12 decimal
          # places. Cannot be set if `tiers` is provided.
          attr_accessor :unit_amount

          def initialize(
            display_name: nil,
            live_version: nil,
            lookup_key: nil,
            metadata: nil,
            tiering_mode: nil,
            tiers: nil,
            transform_quantity: nil,
            unit_amount: nil
          )
            @display_name = display_name
            @live_version = live_version
            @lookup_key = lookup_key
            @metadata = metadata
            @tiering_mode = tiering_mode
            @tiers = tiers
            @transform_quantity = transform_quantity
            @unit_amount = unit_amount
          end
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
