# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Tax
      class AutomaticRuleFindParams < Stripe::RequestParams
        # The BillableItem ID to search by.
        attr_accessor :billable_item

        def initialize(billable_item: nil)
          @billable_item = billable_item
        end
      end
    end
  end
end
