# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Tax
      class AutomaticRuleCreateParams < ::Stripe::RequestParams
        # The BillableItem ID to set automatic Tax configuration for.
        sig { returns(String) }
        def billable_item; end
        sig { params(_billable_item: String).returns(String) }
        def billable_item=(_billable_item); end
        # The TaxCode object to be used for automatic tax calculations.
        sig { returns(String) }
        def tax_code; end
        sig { params(_tax_code: String).returns(String) }
        def tax_code=(_tax_code); end
        sig { params(billable_item: String, tax_code: String).void }
        def initialize(billable_item: nil, tax_code: nil); end
      end
    end
  end
end