# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Data
      module Reporting
        class QueryRunRetrieveParams < ::Stripe::RequestParams
          # Any optional includes (see https://docs.stripe.com/api-includable-response-values).
          attr_accessor :include

          def initialize(include: nil)
            @include = include
          end
        end
      end
    end
  end
end
