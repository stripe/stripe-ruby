# frozen_string_literal: true

module Stripe
  module APIOperations
    module Request
      module ClassMethods
        def execute_resource_request(method, url, base_address = :api,
                                     params = {}, opts = {}, usage = [])
          execute_resource_request_internal(
            :execute_request, method, url, base_address, params, opts, usage
          )
        end

        def execute_resource_request_stream(method, url, base_address = :api,
                                            params = {}, opts = {}, usage = [],
                                            &read_body_chunk_block)
          execute_resource_request_internal(
            :execute_request_stream,
            method,
            url,
            base_address,
            params,
            opts,
            usage,
            &read_body_chunk_block
          )
        end

        private def request_stripe_object(method:, path:, base_address: :api, params: {}, opts: {}, usage: [])
          execute_resource_request(method, path, base_address, params, opts, usage)
        end

        private def execute_resource_request_internal(client_request_method_sym,
                                                      method, url, base_address,
                                                      params, opts, usage,
                                                      &read_body_chunk_block)
          params ||= {}

          error_on_invalid_params(params)
          warn_on_opts_in_params(params)

          opts = Util.normalize_opts(opts)
          req_opts = RequestOptions.extract_opts_from_hash(opts)

          APIRequestor.active_requestor.send(
            client_request_method_sym,
            method, url,
            base_address,
            params: params, opts: req_opts, usage: usage,
            &read_body_chunk_block
          )
        end

        # TODO: (major)
        # This method used to be called `request`, but it's such a short name
        # that it eventually conflicted with the name of a field on an API
        # resource (specifically, `Event#request`), so it was renamed to
        # something more unique.
        #
        # The former name had been around for just about forever though, and
        # although all internal uses have been renamed, I've left this alias in
        # place for backwards compatibility. Consider removing it on the next
        # major.
        alias request execute_resource_request
        extend Gem::Deprecate
        deprecate :request, "Stripe.raw_request", 2024, 7

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
        self.class.execute_resource_request(method, url, base_address, params, opts, usage)
      end

      protected def execute_resource_request_stream(method, url, base_address = :api,
                                                    params = {}, opts = {}, usage = [],
                                                    &read_body_chunk_block)
        opts = @opts.merge(Util.normalize_opts(opts))
        self.class.execute_resource_request_stream(
          method, url, base_address, params, opts, usage, &read_body_chunk_block
        )
      end

      private def request_stripe_object(method:, path:, params:, base_address: :api, opts: {}, usage: [])
        execute_resource_request(method, path, base_address, params, opts, usage)
      end

      # See notes on `alias` above.
      alias request execute_resource_request
      extend Gem::Deprecate
      deprecate :request, "Stripe.raw_request", 2024, 7
    end
  end
end
