module Stripe
  module APIOperations
    module List
      def list(filters={}, opts={})
        opts = Util.normalize_opts(opts)
        opts = @opts.merge(opts) if @opts

        response, opts = request(:get, url, filters, opts)
        obj = ListObject.construct_from(response, opts)

        # set a limit so that we can fetch the same number when accessing the
        # next and previous pages
        obj.limit = filters[:limit]

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
