# frozen_string_literal: true

module Stripe
  module APIOperations
    # TODO: (major) Deprecated, remove along with extends.
    # Please use the search method fromw within the resource instead.
    module Search
      def _search(search_url, filters = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: search_url,
          params: filters,
          opts: opts
        )
      end

      extend Gem::Deprecate
      deprecate :_search, "request_stripe_object", 2024, 1
    end
  end
end
