# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Data
      class OperationSearchParams < ::Stripe::RequestParams
        # Restrict results to public resource catalogs. Defaults to all catalogs
        # available to the caller.
        attr_accessor :catalogs
        # Maximum results. Default: 5, Max: 20.
        attr_accessor :limit
        # The page token for pagination.
        attr_accessor :page
        # Natural-language question. Required.
        attr_accessor :query

        def initialize(catalogs: nil, limit: nil, page: nil, query: nil)
          @catalogs = catalogs
          @limit = limit
          @page = page
          @query = query
        end
      end
    end
  end
end
