# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Tax
      class AutomaticRuleFindParams < Stripe::RequestParams
        # The BillableItem ID to search by.
        sig { returns(String) }
        def billable_item; end
        sig { params(_billable_item: String).returns(String) }
        def billable_item=(_billable_item); end
        sig { params(billable_item: String).void }
        def initialize(billable_item: nil); end
      end
    end
  end
end