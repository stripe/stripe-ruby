# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      module Cadences
        class SpendModifierRuleListParams < ::Stripe::RequestParams
          # Return only spend modifiers that are effective at the specified timestamp.
          attr_accessor :effective_at
          # Optionally set the maximum number of results per page. Defaults to 20.
          attr_accessor :limit

          def initialize(effective_at: nil, limit: nil)
            @effective_at = effective_at
            @limit = limit
          end
        end
      end
    end
  end
end
