module Stripe
  module APIOperations
    module List
      def list(filters={}, opts={})
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

      # The original version of #list was given the somewhat unfortunate name of
      # #all, and this alias allows us to maintain backward compatibility (the
      # choice was somewhat misleading in the way that it only returned a single
      # page rather than all objects).
      alias :all :list
    end
  end
end
