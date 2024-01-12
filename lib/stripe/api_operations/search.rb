# frozen_string_literal: true

# TODO: (major) Deprecated, Remove along with extends
module Stripe
  module APIOperations
    module Search
      def _search(search_url, filters = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: search_url,
          params: filters,
          opts: opts
        )
      end
    end
  end
end
