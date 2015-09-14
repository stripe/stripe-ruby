module Stripe
  module APIOperations
    module Update
      def save(params={})
        # Let the caller override the URL but avoid serializing it.
        req_url = params.delete(:req_url) || url
        values = self.class.serialize_params(self).merge(params)

        if values.length > 0
          values.delete(:id)

          response, opts = request(:post, req_url, values)
          refresh_from(response, opts)
        end
        self
      end
    end
  end
end
