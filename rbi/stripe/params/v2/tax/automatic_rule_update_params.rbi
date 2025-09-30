# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Tax
      class AutomaticRuleUpdateParams < Stripe::RequestParams
        # The TaxCode object to be used for automatic tax calculations.
        sig { returns(String) }
        def tax_code; end
        sig { params(_tax_code: String).returns(String) }
        def tax_code=(_tax_code); end
        sig { params(tax_code: String).void }
        def initialize(tax_code: nil); end
      end
    end
  end
end