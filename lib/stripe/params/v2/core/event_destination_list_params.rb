# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      class EventDestinationListParams < ::Stripe::RequestParams
        # Include the normally redacted `webhook_endpoint.url` in each returned destination.
        attr_accessor :include
        # The page size.
        attr_accessor :limit

        def initialize(include: nil, limit: nil)
          @include = include
          @limit = limit
        end
      end
    end
  end
end
