# frozen_string_literal: true

module Stripe
  module APIOperations
    module Delete
      module ClassMethods
        # Deletes an API resource
        #
        # Deletes the identified resource with the passed in parameters.
        #
        # ==== Attributes
        #
        # * +id+ - ID of the resource to delete.
        # * +params+ - A hash of parameters to pass to the API
        # * +opts+ - A Hash of additional options (separate from the params /
        #   object values) to be added to the request. E.g. to allow for an
        #   idempotency_key to be passed in the request headers, or for the
        #   api_key to be overwritten. See
        #   {APIOperations::Request.execute_resource_request}.
        def delete(id, params = {}, opts = {})
          resp, opts = execute_resource_request(:delete,
                                                "#{resource_url}/#{id}",
                                                params, opts)
          Util.convert_to_stripe_object(resp.data, opts)
        end
      end

      def delete(params = {}, opts = {})
        resp, opts = execute_resource_request(:delete, resource_url,
                                              params, opts)
        initialize_from(resp.data, opts)
      end

      def self.included(base)
        base.extend(ClassMethods)
      end
    end
  end
end
