# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Tax
      class AutomaticRuleService < StripeService
        class CreateParams < Stripe::RequestParams
          # The BillableItem ID to set automatic Tax configuration for.
          attr_accessor :billable_item
          # The TaxCode object to be used for automatic tax calculations.
          attr_accessor :tax_code

          def initialize(billable_item: nil, tax_code: nil)
            @billable_item = billable_item
            @tax_code = tax_code
          end
        end

        class FindParams < Stripe::RequestParams
          # The BillableItem ID to search by.
          attr_accessor :billable_item

          def initialize(billable_item: nil)
            @billable_item = billable_item
          end
        end

        class RetrieveParams < Stripe::RequestParams; end

        class UpdateParams < Stripe::RequestParams
          # The TaxCode object to be used for automatic tax calculations.
          attr_accessor :tax_code

          def initialize(tax_code: nil)
            @tax_code = tax_code
          end
        end

        class DeactivateParams < Stripe::RequestParams; end

        # Creates an AutomaticRule object.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/tax/automatic_rules",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Deactivates an AutomaticRule object. Deactivated AutomaticRule objects are ignored in future tax calculations.
        def deactivate(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/tax/automatic_rules/%<id>s/deactivate", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Finds an AutomaticRule object by BillableItem ID.
        def find(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/tax/automatic_rules/find",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves an AutomaticRule object by ID.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/tax/automatic_rules/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Updates the automatic Tax configuration for an AutomaticRule object.
        def update(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/tax/automatic_rules/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
