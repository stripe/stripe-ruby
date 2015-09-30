module Stripe
  module APIOperations
    module Update
      def save(params={})
        # Let the caller override the URL but avoid serializing it.
        req_url = params.delete(:req_url) || save_url
        values = self.class.serialize_params(self).merge(params)

        if values.length > 0
          # note that id gets removed here our call to #url above has already
          # generated a uri for this object with an identifier baked in
          values.delete(:id)

          response, opts = request(:post, req_url, values)
          refresh_from(response, opts)
        end
        self
      end

      private

      def save_url
        # This switch essentially allows us "upsert"-like functionality. If the
        # API resource doesn't have an ID set (suggesting that it's new) and
        # its class responds to .create (which comes from
        # Stripe::APIOperations::Create), then use the URL to create a new
        # resource. Otherwise, generate a URL based on the object's identifier
        # for a normal update.
        if self[:id] == nil && self.class.respond_to?(:create)
          self.class.url
        else
          url
        end
      end
    end
  end
end
