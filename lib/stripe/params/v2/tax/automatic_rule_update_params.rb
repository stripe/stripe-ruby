# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Tax
      class AutomaticRuleUpdateParams < Stripe::RequestParams
        # The TaxCode object to be used for automatic tax calculations.
        attr_accessor :tax_code

        def initialize(tax_code: nil)
          @tax_code = tax_code
        end
      end
    end
  end
end
