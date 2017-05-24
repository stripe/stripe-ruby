module Stripe
  module APIOperations
    module Request
      module ClassMethods
        OPTS_KEYS_TO_PERSIST = Set[:api_key, :api_base, :client, :stripe_account, :stripe_version]

        def request(method, url, params={}, opts={})
          warn_on_opts_in_params(params)

          opts = Util.normalize_opts(opts)
          opts[:client] ||= StripeClient.active_client

          headers = opts.clone
          api_key = headers.delete(:api_key)
          api_base = headers.delete(:api_base)
          client = headers.delete(:client)
          # Assume all remaining opts must be headers

          resp, opts[:api_key] = client.execute_request(
            method, url,
            api_base: api_base, api_key: api_key,
            headers: headers, params: params
          )

          # Hash#select returns an array before 1.9
          opts_to_persist = {}
          opts.each do |k, v|
            if OPTS_KEYS_TO_PERSIST.include?(k)
              opts_to_persist[k] = v
            end
          end

          [resp, opts_to_persist]
        end

        private

        KNOWN_OPTS = Set[:api_key, :idempotency_key, :stripe_account, :stripe_version]
        private_constant :KNOWN_OPTS

        def warn_on_opts_in_params(params)
          KNOWN_OPTS.each do |opt|
            if params.has_key?(opt)
              $stderr.puts("WARNING: #{opt} should be in opts instead of params.")
            end
          end
        end
      end

      def self.included(base)
        base.extend(ClassMethods)
      end

      protected

      def request(method, url, params={}, opts={})
        opts = @opts.merge(Util.normalize_opts(opts))
        self.class.request(method, url, params, opts)
      end
    end
  end
end
