module Stripe
  module APIOperations
    module Delete
      def delete(params={}, opts={})
        opts = Util.normalize_opts(opts)
        response, opts = request(:delete, resource_url, params, opts)
        initialize_from(response, opts)
      end
    end
  end
end
