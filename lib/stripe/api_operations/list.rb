# frozen_string_literal: true

module Stripe
  module APIOperations
    module List
      def list(filters = {}, opts = {})
        opts = Util.normalize_opts(opts)

        resp, opts = request(:get, resource_url, filters, opts)
        obj = ListObject.construct_from(resp.data, opts)

        # set filters so that we can fetch the same limit, expansions, and
        # predicates when accessing the next and previous pages
        #
        # just for general cleanliness, remove any paging options
        obj.filters = filters.dup
        obj.filters.delete(:ending_before)
        obj.filters.delete(:starting_after)

        obj
      end
    end
  end
end
