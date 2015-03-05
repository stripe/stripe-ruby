module Stripe
  module APIOperations
    module Update
      def save(params={})
        values = self.class.serialize_params(self).merge(params)

        if values.length > 0
          values.delete(:id)

          response, opts = request(:post, url, values)
          refresh_from(response, opts)
        end
        self
      end
    end
  end
end
