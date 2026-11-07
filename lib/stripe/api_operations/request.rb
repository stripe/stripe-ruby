# frozen_string_literal: true

module Stripe
  module APIOperations
    module Request
      module ClassMethods
        def execute_resource_request(method, url, base_address = :api,
                                     params = {}, opts = {}, usage = [], requestor: nil)
          execute_resource_request_internal(
            :execute_request, method, url, base_address, params, opts, usage, requestor
          )
        end

        def execute_resource_request_stream(method, url, base_address = :api,
                                            params = {}, opts = {}, usage = [], requestor: nil,
                                            &read_body_chunk_block)
          execute_resource_request_internal(
            :execute_request_stream,
            method,
            url,
            base_address,
            params,
            opts,
            usage,
            requestor,
            &read_body_chunk_block
          )
        end

        private def request_stripe_object(method:, path:, base_address: :api, params: {}, opts: {}, usage: [])
          execute_resource_request(method, path, base_address, params, opts, usage)
        end

        # `requestor` is only ever passed by the instance-level `execute_resource_request`
        # methods below, which prefer a retained `@requestor` over the global active one.
        # Class-level callers (e.g. a generated `Resource.list` static method) have no bound
        # instance to retain a requestor from, so they correctly leave it nil and fall back to
        # the global here, same as before this parameter existed.
        private def execute_resource_request_internal(client_request_method_sym,
                                                      method, url, base_address,
                                                      params, opts, usage, requestor = nil,
                                                      &read_body_chunk_block)
          params = params.to_h if params.is_a?(Stripe::RequestParams)
          params ||= {}

          error_on_invalid_params(params)
          warn_on_opts_in_params(params)

          opts = Util.normalize_opts(opts)
          req_opts = RequestOptions.extract_opts_from_hash(opts)

          (requestor || APIRequestor.active_requestor).send(
            client_request_method_sym,
            method, url,
            base_address,
            params: params, opts: req_opts, usage: usage,
            &read_body_chunk_block
          )
        end

        private def error_on_invalid_params(params)
          return if params.nil? || params.is_a?(Hash)

          raise ArgumentError,
                "request params should be either a Hash or nil " \
                "(was a #{params.class})"
        end

        private def warn_on_opts_in_params(params)
          RequestOptions::OPTS_USER_SPECIFIED.each do |opt|
            warn("WARNING: '#{opt}' should be in opts instead of params.") if params.key?(opt)
          end
        end
      end

      def self.included(base)
        base.extend(ClassMethods)
      end

      protected def execute_resource_request(method, url, base_address = :api,
                                             params = {}, opts = {}, usage = [])
        opts = @opts.merge(Util.normalize_opts(opts))
        self.class.execute_resource_request(
          method, url, base_address, params, opts, usage, requestor: retained_requestor
        )
      end

      protected def execute_resource_request_stream(method, url, base_address = :api,
                                                    params = {}, opts = {}, usage = [],
                                                    &read_body_chunk_block)
        opts = @opts.merge(Util.normalize_opts(opts))
        self.class.execute_resource_request_stream(
          method, url, base_address, params, opts, usage, requestor: retained_requestor,
          &read_body_chunk_block
        )
      end

      # Prefers the requestor this instance was deserialized with over the global active one,
      # the same way ApiResource#request_stripe_object already does. Without this, e.g. a
      # ListObject's #next_page would always use the global requestor instead of the client
      # that retrieved it, even if that client was explicitly scoped to a different account.
      private def retained_requestor
        instance_variable_defined?(:@requestor) && @requestor ? @requestor : nil
      end

      private def request_stripe_object(method:, path:, params:, base_address: :api, opts: {}, usage: [])
        execute_resource_request(method, path, base_address, params, opts, usage)
      end
    end
  end
end
