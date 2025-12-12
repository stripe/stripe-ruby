# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Iam
      class ApiKeyListParams < ::Stripe::RequestParams
        # Whether to include expired API keys in the response.
        attr_accessor :include_expired
        # Limit of items to return per page.
        attr_accessor :limit

        def initialize(include_expired: nil, limit: nil)
          @include_expired = include_expired
          @limit = limit
        end
      end
    end
  end
end
