module Stripe
  module APIOperations
    module Delete
      def delete(params={}, opts={})
        opts = Util.normalize_opts(opts)
        response, opts = request(:delete, url, params, opts)
        refresh_from(response, opts)
      end
    end
  end
end
