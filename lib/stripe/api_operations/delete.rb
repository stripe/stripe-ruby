module Stripe
  module APIOperations
    module Delete
      def delete(params={}, opts={})
        opts = Util.normalize_opts(opts)
        self.response, opts = request(:delete, resource_url, params, opts)
        initialize_from(response.data, opts)
      end
    end
  end
end
