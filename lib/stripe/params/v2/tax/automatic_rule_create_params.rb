# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Tax
      class AutomaticRuleCreateParams < Stripe::RequestParams
        # The BillableItem ID to set automatic Tax configuration for.
        attr_accessor :billable_item
        # The TaxCode object to be used for automatic tax calculations.
        attr_accessor :tax_code

        def initialize(billable_item: nil, tax_code: nil)
          @billable_item = billable_item
          @tax_code = tax_code
        end
      end
    end
  end
end
