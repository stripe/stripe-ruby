module Stripe
  module APIOperations
    module Delete
      def delete(params={}, opts={})
        opts = Util.normalize_opts(opts)
        resp, opts = request(:delete, resource_url, params, opts)
        initialize_from(resp.data, opts)
      end
    end
  end
end
