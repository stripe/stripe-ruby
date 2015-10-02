module Stripe
  module APIOperations
    module Update
      # Creates or updates an API resource.
      #
      # If the resource doesn't yet have an assigned ID and the resource is one
      # that can be created, then the method attempts to create the resource.
      # The resource is updated otherwise.
      #
      # ==== Attributes
      #
      # * +params+ - Overrides any parameters in the resource's serialized data
      #   and includes them in the create or update. If +:req_url:+ is included
      #   in the list, it overrides the update URL used for the create or
      #   update.
      def save(params={})
        # Let the caller override the URL but avoid serializing it.
        req_url = params.delete(:req_url) || save_url

        # We started unintentionally (sort of) allowing attributes send to
        # +save+ to override values used during the update. So as not to break
        # the API, this makes that official here.
        update_attributes_with_options(params, :raise_error => false)

        # Now remove any parameters that look like object attributes.
        params = params.reject { |k, _| respond_to?(k) }

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
