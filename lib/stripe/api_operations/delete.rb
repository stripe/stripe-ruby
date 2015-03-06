module Stripe
  module APIOperations
    module Delete
      def delete(*arguments)
        params, opts = Util.parse_argument_list(arguments)
        api_key, headers = Util.parse_opts(opts)
        response, api_key = Stripe.request(:delete, url, api_key || @api_key, params, headers)
        refresh_from(response, api_key)
      end
    end
  end
end
