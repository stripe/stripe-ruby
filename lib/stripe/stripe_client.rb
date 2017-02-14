module Stripe
  # StripeClient executes requests against the Stripe API and allows a user to
  # recover both a resource a call returns as well as a response object that
  # contains information on the HTTP call.
  class StripeClient
    attr_accessor :conn

    # Initializes a new StripeClient. Expects a Faraday connection object, and
    # uses a default connection unless one is passed.
    def initialize(conn = nil)
      self.conn = conn || self.class.default_conn
      @system_profiler = SystemProfiler.new
    end

    def self.active_client
      Thread.current[:stripe_client] || default_client
    end

    def self.default_client
      @default_client ||= StripeClient.new(default_conn)
    end

    # A default Faraday connection to be used when one isn't configured. This
    # object should never be mutated, and instead instantiating your own
    # connection and wrapping it in a StripeClient object should be preferred.
    def self.default_conn
      @default_conn ||= begin
        conn = Faraday.new do |conn|
          conn.use Faraday::Request::UrlEncoded
          conn.use Faraday::Response::RaiseError
          conn.adapter Faraday.default_adapter
        end

        if Stripe.verify_ssl_certs
          conn.ssl.verify = true
          conn.ssl.cert_store = Stripe.ca_store
        else
          conn.ssl.verify = false

          unless @verify_ssl_warned
            @verify_ssl_warned = true
            $stderr.puts("WARNING: Running without SSL cert verification. " \
              "You should never do this in production. " \
              "Execute 'Stripe.verify_ssl_certs = true' to enable verification.")
          end
        end

        conn
      end
    end

    # Checks if an error is a problem that we should retry on. This includes both
    # socket errors that may represent an intermittent problem and some special
    # HTTP statuses.
    def self.should_retry?(e, retry_count)
      return false if retry_count >= Stripe.max_network_retries

      # Retry on timeout-related problems (either on open or read).
      return true if e.is_a?(Faraday::TimeoutError)

      # Destination refused the connection, the connection was reset, or a
      # variety of other connection failures. This could occur from a single
      # saturated server, so retry in case it's intermittent.
      return true if e.is_a?(Faraday::ConnectionFailed)

      if e.is_a?(Faraday::ClientError) && e.response
        # 409 conflict
        return true if e.response[:status] == 409
      end

      false
    end

    def self.sleep_time(retry_count)
      # Apply exponential backoff with initial_network_retry_delay on the
      # number of attempts so far as inputs. Do not allow the number to exceed
      # max_network_retry_delay.
      sleep_seconds = [Stripe.initial_network_retry_delay * (2 ** (retry_count - 1)), Stripe.max_network_retry_delay].min

      # Apply some jitter by randomizing the value in the range of (sleep_seconds
      # / 2) to (sleep_seconds).
      sleep_seconds = sleep_seconds * (0.5 * (1 + rand()))

      # But never sleep less than the base sleep seconds.
      sleep_seconds = [Stripe.initial_network_retry_delay, sleep_seconds].max

      sleep_seconds
    end

    # Executes the API call within the given block. Usage looks like:
    #
    #     client = StripeClient.new
    #     charge, resp = client.request { Charge.create }
    #
    def request(&block)
      @last_response = nil
      old_stripe_client = Thread.current[:stripe_client]
      Thread.current[:stripe_client] = self

      begin
        res = block.call
        [res, @last_response]
      ensure
        Thread.current[:stripe_client] = old_stripe_client
      end
    end

    def execute_request(method, url,
        api_base: nil, api_key: nil, headers: {}, params: {})

      api_base ||= Stripe.api_base
      api_key ||= Stripe.api_key

      check_api_key!(api_key)

      params = Util.objects_to_ids(params)
      url = api_url(url, api_base)

      case method.to_s.downcase.to_sym
      when :get, :head, :delete
        # Make params into GET parameters
        url += "#{URI.parse(url).query ? '&' : '?'}#{Util.encode_parameters(params)}" if params && params.any?
        payload = nil
      else
        if headers[:content_type] && headers[:content_type] == "multipart/form-data"
          payload = params
        else
          payload = Util.encode_parameters(params)
        end
      end

      http_resp = execute_request_with_rescues(api_base, 0) do
        conn.run_request(
          method,
          url,
          payload,
          # TODO: Convert RestClient-style parameters.
          request_headers(api_key, method).update(headers)
        ) do |req|
          req.options.open_timeout = Stripe.open_timeout
          req.options.timeout = Stripe.read_timeout
        end
      end

      begin
        resp = StripeResponse.from_faraday_response(http_resp)
      rescue JSON::ParserError
        raise general_api_error(http_resp.code, http_resp.body)
      end

      # Allows StripeClient#request to return a response object to a caller.
      @last_response = resp
      [resp, api_key]
    end

    private

    def api_url(url='', api_base=nil)
      (api_base || Stripe.api_base) + url
    end

    def check_api_key!(api_key)
      unless api_key
        raise AuthenticationError.new('No API key provided. ' \
          'Set your API key using "Stripe.api_key = <API-KEY>". ' \
          'You can generate API keys from the Stripe web interface. ' \
          'See https://stripe.com/api for details, or email support@stripe.com ' \
          'if you have any questions.')
      end

      if api_key =~ /\s/
        raise AuthenticationError.new('Your API key is invalid, as it contains ' \
          'whitespace. (HINT: You can double-check your API key from the ' \
          'Stripe web interface. See https://stripe.com/api for details, or ' \
          'email support@stripe.com if you have any questions.)')
      end
    end

    def execute_request_with_rescues(api_base, retry_count, &block)
      begin
        resp = block.call

      # We rescue all exceptions from a request so that we have an easy spot to
      # implement our retry logic across the board. We'll re-raise if it's a type
      # of exception that we didn't expect to handle.
      rescue => e
        if self.class.should_retry?(e, retry_count)
          retry_count = retry_count + 1
          sleep self.class.sleep_time(retry_count)
          retry
        end

        case e
        when Faraday::ClientError
          if e.response
            handle_api_error(e.response)
          else
            handle_network_error(e, retry_count, api_base)
          end

        # Only handle errors when we know we can do so, and re-raise otherwise.
        # This should be pretty infrequent.
        else
          raise
        end
      end

      resp
    end

    def general_api_error(status, body)
      APIError.new("Invalid response object from API: #{body.inspect} " +
                   "(HTTP response code was #{status})",
                   http_status: status, http_body: body)
    end


    def handle_api_error(http_resp)
      begin
        resp = StripeResponse.from_faraday_hash(http_resp)
        error = resp.data[:error]

        unless error && error.is_a?(Hash)
          raise StripeError.new("Indeterminate error")
        end

      rescue JSON::ParserError, StripeError
        raise general_api_error(http_resp[:status], http_resp[:body])
      end

      case resp.http_status
      when 400, 404
        error = InvalidRequestError.new(
          error[:message], error[:param],
          http_status: resp.http_status, http_body: resp.http_body,
          json_body: resp.data, http_headers: resp.http_headers
        )
      when 401
        error = AuthenticationError.new(
          error[:message],
          http_status: resp.http_status, http_body: resp.http_body,
          json_body: resp.data, http_headers: resp.http_headers
        )
      when 402
        error = CardError.new(
          error[:message], error[:param], error[:code],
          http_status: resp.http_status, http_body: resp.http_body,
          json_body: resp.data, http_headers: resp.http_headers
        )
      when 403
        error = PermissionError.new(
          error[:message],
          http_status: resp.http_status, http_body: resp.http_body,
          json_body: resp.data, http_headers: resp.http_headers
        )
      when 429
        error = RateLimitError.new(
          error[:message],
          http_status: resp.http_status, http_body: resp.http_body,
          json_body: resp.data, http_headers: resp.http_headers
        )
      else
        error = APIError.new(
          error[:message],
          http_status: resp.http_status, http_body: resp.http_body,
          json_body: resp.data, http_headers: resp.http_headers
        )
      end

      error.response = resp
      raise(error)
    end

    def handle_network_error(e, retry_count, api_base=nil)
      case e
      when Faraday::ConnectionFailed
        message = "Unexpected error communicating when trying to connect to Stripe. " \
          "You may be seeing this message because your DNS is not working. " \
          "To check, try running 'host stripe.com' from the command line."

      when Faraday::SSLError
        message = "Could not establish a secure connection to Stripe, you may " \
                  "need to upgrade your OpenSSL version. To check, try running " \
                  "'openssl s_client -connect api.stripe.com:443' from the " \
                  "command line."

      when Faraday::TimeoutError
        api_base = Stripe.api_base unless api_base
        message = "Could not connect to Stripe (#{api_base}). " \
          "Please check your internet connection and try again. " \
          "If this problem persists, you should check Stripe's service status at " \
          "https://twitter.com/stripestatus, or let us know at support@stripe.com."

      else
        message = "Unexpected error communicating with Stripe. " \
          "If this problem persists, let us know at support@stripe.com."

      end

      if retry_count > 0
        message += " Request was retried #{retry_count} times."
      end

      raise APIConnectionError.new(message + "\n\n(Network error: #{e.message})")
    end

    def request_headers(api_key, method)
      headers = {
        'User-Agent' => "Stripe/v1 RubyBindings/#{Stripe::VERSION}",
        'Authorization' => "Bearer #{api_key}",
        'Content-Type' => 'application/x-www-form-urlencoded'
      }

      # It is only safe to retry network failures on post and delete
      # requests if we add an Idempotency-Key header
      if [:post, :delete].include?(method) && Stripe.max_network_retries > 0
        headers['Idempotency-Key'] ||= SecureRandom.uuid
      end

      headers['Stripe-Version'] = Stripe.api_version if Stripe.api_version
      headers['Stripe-Account'] = Stripe.stripe_account if Stripe.stripe_account

      user_agent = @system_profiler.user_agent
      begin
        headers.update(
          'X-Stripe-Client-User-Agent' => JSON.generate(user_agent)
        )
      rescue => e
        headers.update(
          'X-Stripe-Client-Raw-User-Agent' => user_agent.inspect,
          :error => "#{e} (#{e.class})"
        )
      end

      headers
    end

    # SystemProfiler extracts information about the system that we're running
    # in so that we can generate a rich user agent header to help debug
    # integrations.
    class SystemProfiler
      def self.get_uname
        if File.exist?('/proc/version')
          File.read('/proc/version').strip
        else
          case RbConfig::CONFIG['host_os']
          when /linux|darwin|bsd|sunos|solaris|cygwin/i
            get_uname_from_system
          when /mswin|mingw/i
            get_uname_from_system_ver
          else
            "unknown platform"
          end
        end
      end

      def self.get_uname_from_system
        (`uname -a 2>/dev/null` || '').strip
      rescue Errno::ENOENT
        "uname executable not found"
      rescue Errno::ENOMEM # couldn't create subprocess
        "uname lookup failed"
      end

      def self.get_uname_from_system_ver
        (`ver` || '').strip
      rescue Errno::ENOENT
        "ver executable not found"
      rescue Errno::ENOMEM # couldn't create subprocess
        "uname lookup failed"
      end

      def initialize
        @uname = self.class.get_uname
      end

      def user_agent
        lang_version = "#{RUBY_VERSION} p#{RUBY_PATCHLEVEL} (#{RUBY_RELEASE_DATE})"

        {
          :bindings_version => Stripe::VERSION,
          :lang => 'ruby',
          :lang_version => lang_version,
          :platform => RUBY_PLATFORM,
          :engine => defined?(RUBY_ENGINE) ? RUBY_ENGINE : '',
          :publisher => 'stripe',
          :uname => @uname,
          :hostname => Socket.gethostname,
        }
      end
    end
  end
end
