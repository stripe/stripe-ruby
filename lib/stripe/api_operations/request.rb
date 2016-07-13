module Stripe
  module APIOperations
    module Request
      module ClassMethods
        def request(method, url, params={}, opts={})
          opts, _ = Util.extract_valid_opts(opts)

          headers = opts.clone
          api_key = headers.delete(:api_key)
          api_base = headers.delete(:api_base)
          # Assume all remaining opts must be headers

          response, opts[:api_key] = Stripe.request(method, url, api_key, params, headers, api_base)

          # Only keep request options that are suitable for re-use in another
          # request.
          new_opts = opts.select { |k, _| Util::PERSIST_OPTS.include?(k) }

          [response, new_opts]
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
