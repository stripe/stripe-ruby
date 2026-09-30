# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Data
      class SchemaListParams < ::Stripe::RequestParams
        # If supplied, only return schemas belonging to this dataset.
        attr_accessor :dataset
        # Any optional includes (see https://docs.stripe.com/api-includable-response-values).
        attr_accessor :include
        # The maximum number of results per page. Defaults to 10. Maximum is 100.
        attr_accessor :limit
        # If supplied, only return schemas with this name.
        attr_accessor :name

        def initialize(dataset: nil, include: nil, limit: nil, name: nil)
          @dataset = dataset
          @include = include
          @limit = limit
          @name = name
        end
      end
    end
  end
end
