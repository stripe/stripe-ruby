# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Extend
      class ObjectDefinitionListParams < ::Stripe::RequestParams
        # Maximum page size.
        attr_accessor :limit

        def initialize(limit: nil)
          @limit = limit
        end
      end
    end
  end
end
