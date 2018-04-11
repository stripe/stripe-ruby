require "cgi"

module Stripe
  module Util
    # Options that a user is allowed to specify.
    OPTS_USER_SPECIFIED = Set[
      :api_key,
      :idempotency_key,
      :stripe_account,
      :stripe_version
    ].freeze

    # Options that should be copyable from one StripeObject to another
    # including options that may be internal.
    OPTS_COPYABLE = (
      OPTS_USER_SPECIFIED + Set[:api_base]
    ).freeze

    # Options that should be persisted between API requests. This includes
    # client, which is an object containing an HTTP client to reuse.
    OPTS_PERSISTABLE = (
      OPTS_USER_SPECIFIED + Set[:client] - Set[:idempotency_key]
    ).freeze

    def self.objects_to_ids(h)
      case h
      when APIResource
        h.id
      when Hash
        res = {}
        h.each { |k, v| res[k] = objects_to_ids(v) unless v.nil? }
        res
      when Array
        h.map { |v| objects_to_ids(v) }
      else
        h
      end
    end

    def self.object_classes
      @object_classes ||= {
        # data structures
        ListObject::OBJECT_NAME => ListObject,

        # business objects
        Account::OBJECT_NAME              => Account,
        AlipayAccount::OBJECT_NAME        => AlipayAccount,
        ApplePayDomain::OBJECT_NAME       => ApplePayDomain,
        ApplicationFee::OBJECT_NAME       => ApplicationFee,
        ApplicationFeeRefund::OBJECT_NAME => ApplicationFeeRefund,
        Balance::OBJECT_NAME              => Balance,
        BalanceTransaction::OBJECT_NAME   => BalanceTransaction,
        BankAccount::OBJECT_NAME          => BankAccount,
        BitcoinReceiver::OBJECT_NAME      => BitcoinReceiver,
        BitcoinTransaction::OBJECT_NAME   => BitcoinTransaction,
        Card::OBJECT_NAME                 => Card,
        Charge::OBJECT_NAME               => Charge,
        CountrySpec::OBJECT_NAME          => CountrySpec,
        Coupon::OBJECT_NAME               => Coupon,
        Customer::OBJECT_NAME             => Customer,
        Dispute::OBJECT_NAME              => Dispute,
        EphemeralKey::OBJECT_NAME         => EphemeralKey,
        Event::OBJECT_NAME                => Event,
        ExchangeRate::OBJECT_NAME         => ExchangeRate,
        FileUpload::OBJECT_NAME           => FileUpload,
        Invoice::OBJECT_NAME              => Invoice,
        InvoiceItem::OBJECT_NAME          => InvoiceItem,
        InvoiceLineItem::OBJECT_NAME      => InvoiceLineItem,
        LoginLink::OBJECT_NAME            => LoginLink,
        Order::OBJECT_NAME                => Order,
        OrderReturn::OBJECT_NAME          => OrderReturn,
        Payout::OBJECT_NAME               => Payout,
        Plan::OBJECT_NAME                 => Plan,
        Product::OBJECT_NAME              => Product,
        Recipient::OBJECT_NAME            => Recipient,
        RecipientTransfer::OBJECT_NAME    => RecipientTransfer,
        Refund::OBJECT_NAME               => Refund,
        Reversal::OBJECT_NAME             => Reversal,
        SKU::OBJECT_NAME                  => SKU,
        Source::OBJECT_NAME               => Source,
        SourceTransaction::OBJECT_NAME    => SourceTransaction,
        Subscription::OBJECT_NAME         => Subscription,
        SubscriptionItem::OBJECT_NAME     => SubscriptionItem,
        ThreeDSecure::OBJECT_NAME         => ThreeDSecure,
        Token::OBJECT_NAME                => Token,
        Topup::OBJECT_NAME                => Topup,
        Transfer::OBJECT_NAME             => Transfer,
        UsageRecord::OBJECT_NAME          => UsageRecord,
      }
    end

    # Converts a hash of fields or an array of hashes into a +StripeObject+ or
    # array of +StripeObject+s. These new objects will be created as a concrete
    # type as dictated by their `object` field (e.g. an `object` value of
    # `charge` would create an instance of +Charge+), but if `object` is not
    # present or of an unknown type, the newly created instance will fall back
    # to being a +StripeObject+.
    #
    # ==== Attributes
    #
    # * +data+ - Hash of fields and values to be converted into a StripeObject.
    # * +opts+ - Options for +StripeObject+ like an API key that will be reused
    #   on subsequent API calls.
    def self.convert_to_stripe_object(data, opts = {})
      case data
      when Array
        data.map { |i| convert_to_stripe_object(i, opts) }
      when Hash
        # Try converting to a known object class.  If none available, fall back to generic StripeObject
        object_classes.fetch(data[:object], StripeObject).construct_from(data, opts)
      else
        data
      end
    end

    def self.log_error(message, data = {})
      if !Stripe.logger.nil? ||
         !Stripe.log_level.nil? && Stripe.log_level <= Stripe::LEVEL_ERROR
        log_internal(message, data, color: :cyan,
                                    level: Stripe::LEVEL_ERROR, logger: Stripe.logger, out: $stderr)
      end
    end

    def self.log_info(message, data = {})
      if !Stripe.logger.nil? ||
         !Stripe.log_level.nil? && Stripe.log_level <= Stripe::LEVEL_INFO
        log_internal(message, data, color: :cyan,
                                    level: Stripe::LEVEL_INFO, logger: Stripe.logger, out: $stdout)
      end
    end

    def self.log_debug(message, data = {})
      if !Stripe.logger.nil? ||
         !Stripe.log_level.nil? && Stripe.log_level <= Stripe::LEVEL_DEBUG
        log_internal(message, data, color: :blue,
                                    level: Stripe::LEVEL_DEBUG, logger: Stripe.logger, out: $stdout)
      end
    end

    def self.file_readable(file)
      # This is nominally equivalent to File.readable?, but that can
      # report incorrect results on some more oddball filesystems
      # (such as AFS)

      File.open(file) { |f| }
    rescue StandardError
      false
    else
      true
    end

    def self.symbolize_names(object)
      case object
      when Hash
        new_hash = {}
        object.each do |key, value|
          key = (begin
                   key.to_sym
                 rescue StandardError
                   key
                 end) || key
          new_hash[key] = symbolize_names(value)
        end
        new_hash
      when Array
        object.map { |value| symbolize_names(value) }
      else
        object
      end
    end

    # Encodes a hash of parameters in a way that's suitable for use as query
    # parameters in a URI or as form parameters in a request body. This mainly
    # involves escaping special characters from parameter keys and values (e.g.
    # `&`).
    def self.encode_parameters(params)
      Util.flatten_params(params)
          .map { |k, v| "#{url_encode(k)}=#{url_encode(v)}" }.join("&")
    end

    # Transforms an array into a hash with integer keys. Used for a small
    # number of API endpoints. If the argument is not an Array, return it
    # unchanged. Example: [{foo: 'bar'}] => {"0" => {foo: "bar"}}
    def self.array_to_hash(array)
      case array
      when Array
        hash = {}
        array.each_with_index { |v, i| hash[i.to_s] = v }
        hash
      else
        array
      end
    end

    # Encodes a string in a way that makes it suitable for use in a set of
    # query parameters in a URI or in a set of form parameters in a request
    # body.
    def self.url_encode(key)
      CGI.escape(key.to_s).
        # Don't use strict form encoding by changing the square bracket control
        # characters back to their literals. This is fine by the server, and
        # makes these parameter strings easier to read.
        gsub("%5B", "[").gsub("%5D", "]")
    end

    def self.flatten_params(params, parent_key = nil)
      result = []

      # do not sort the final output because arrays (and arrays of hashes
      # especially) can be order sensitive, but do sort incoming parameters
      params.each do |key, value|
        calculated_key = parent_key ? "#{parent_key}[#{key}]" : key.to_s
        if value.is_a?(Hash)
          result += flatten_params(value, calculated_key)
        elsif value.is_a?(Array)
          check_array_of_maps_start_keys!(value)
          result += flatten_params_array(value, calculated_key)
        else
          result << [calculated_key, value]
        end
      end

      result
    end

    def self.flatten_params_array(value, calculated_key)
      result = []
      value.each do |elem|
        if elem.is_a?(Hash)
          result += flatten_params(elem, "#{calculated_key}[]")
        elsif elem.is_a?(Array)
          result += flatten_params_array(elem, calculated_key)
        else
          result << ["#{calculated_key}[]", elem]
        end
      end
      result
    end

    def self.normalize_id(id)
      if id.is_a?(Hash) # overloaded id
        params_hash = id.dup
        id = params_hash.delete(:id)
      else
        params_hash = {}
      end
      [id, params_hash]
    end

    # The secondary opts argument can either be a string or hash
    # Turn this value into an api_key and a set of headers
    def self.normalize_opts(opts)
      case opts
      when String
        { api_key: opts }
      when Hash
        check_api_key!(opts.fetch(:api_key)) if opts.key?(:api_key)
        opts.clone
      else
        raise TypeError, "normalize_opts expects a string or a hash"
      end
    end

    def self.check_string_argument!(key)
      raise TypeError, "argument must be a string" unless key.is_a?(String)
      key
    end

    def self.check_api_key!(key)
      raise TypeError, "api_key must be a string" unless key.is_a?(String)
      key
    end

    # Normalizes header keys so that they're all lower case and each
    # hyphen-delimited section starts with a single capitalized letter. For
    # example, `request-id` becomes `Request-Id`. This is useful for extracting
    # certain key values when the user could have set them with a variety of
    # diffent naming schemes.
    def self.normalize_headers(headers)
      headers.each_with_object({}) do |(k, v), new_headers|
        if k.is_a?(Symbol)
          k = titlecase_parts(k.to_s.tr("_", "-"))
        elsif k.is_a?(String)
          k = titlecase_parts(k)
        end

        new_headers[k] = v
      end
    end

    # Generates a Dashboard link to inspect a request ID based off of a request
    # ID value and an API key, which is used to attempt to extract whether the
    # environment is livemode or testmode.
    def self.request_id_dashboard_url(request_id, api_key)
      env = !api_key.nil? && api_key.start_with?("sk_live") ? "live" : "test"
      "https://dashboard.stripe.com/#{env}/logs/#{request_id}"
    end

    # Constant time string comparison to prevent timing attacks
    # Code borrowed from ActiveSupport
    def self.secure_compare(a, b)
      return false unless a.bytesize == b.bytesize

      l = a.unpack "C#{a.bytesize}"

      res = 0
      b.each_byte { |byte| res |= byte ^ l.shift }
      res.zero?
    end

    #
    # private
    #

    COLOR_CODES = {
      black:   0, light_black:   60,
      red:     1, light_red:     61,
      green:   2, light_green:   62,
      yellow:  3, light_yellow:  63,
      blue:    4, light_blue:    64,
      magenta: 5, light_magenta: 65,
      cyan:    6, light_cyan:    66,
      white:   7, light_white:   67,
      default: 9,
    }.freeze
    private_constant :COLOR_CODES

    # We use a pretty janky version of form encoding (Rack's) that supports
    # more complex data structures like maps and arrays through the use of
    # specialized syntax. To encode an array of maps like:
    #
    #     [{a: 1, b: 2}, {a: 3, b: 4}]
    #
    # We have to produce something that looks like this:
    #
    #     arr[][a]=1&arr[][b]=2&arr[][a]=3&arr[][b]=4
    #
    # The only way for the server to recognize that this is a two item array is
    # that it notices the repetition of element "a", so it's key that these
    # repeated elements are encoded first.
    #
    # This method is invoked for any arrays being encoded and checks that if
    # the array contains all non-empty maps, that each of those maps must start
    # with the same key so that their boundaries can be properly encoded.
    def self.check_array_of_maps_start_keys!(arr)
      expected_key = nil
      arr.each do |item|
        break unless item.is_a?(Hash)
        break if item.count.zero?

        first_key = item.first[0]

        if expected_key
          if expected_key != first_key
            raise ArgumentError,
                  "All maps nested in an array should start with the same key " \
                  "(expected starting key '#{expected_key}', got '#{first_key}')"
          end
        else
          expected_key = first_key
        end
      end
    end
    private_class_method :check_array_of_maps_start_keys!

    # Uses an ANSI escape code to colorize text if it's going to be sent to a
    # TTY.
    def self.colorize(val, color, isatty)
      return val unless isatty

      mode = 0 # default
      foreground = 30 + COLOR_CODES.fetch(color)
      background = 40 + COLOR_CODES.fetch(:default)

      "\033[#{mode};#{foreground};#{background}m#{val}\033[0m"
    end
    private_class_method :colorize

    # Turns an integer log level into a printable name.
    def self.level_name(level)
      case level
      when LEVEL_DEBUG then "debug"
      when LEVEL_ERROR then "error"
      when LEVEL_INFO  then "info"
      else level
      end
    end
    private_class_method :level_name

    # TODO: Make these named required arguments when we drop support for Ruby
    # 2.0.
    def self.log_internal(message, data = {}, color: nil, level: nil, logger: nil, out: nil)
      data_str = data.reject { |_k, v| v.nil? }
                     .map do |(k, v)|
        format("%s=%s", colorize(k, color, !out.nil? && out.isatty), wrap_logfmt_value(v))
      end.join(" ")

      if !logger.nil?
        # the library's log levels are mapped to the same values as the
        # standard library's logger
        logger.log(level,
                   format("message=%s %s", wrap_logfmt_value(message), data_str))
      elsif out.isatty
        out.puts format("%s %s %s", colorize(level_name(level)[0, 4].upcase, color, out.isatty), message, data_str)
      else
        out.puts format("message=%s level=%s %s", wrap_logfmt_value(message), level_name(level), data_str)
      end
    end
    private_class_method :log_internal

    def self.titlecase_parts(s)
      s.split("-")
       .reject { |p| p == "" }
       .map { |p| p[0].upcase + p[1..-1].downcase }
       .join("-")
    end
    private_class_method :titlecase_parts

    # Wraps a value in double quotes if it looks sufficiently complex so that
    # it can be read by logfmt parsers.
    def self.wrap_logfmt_value(val)
      # If value is any kind of number, just allow it to be formatted directly
      # to a string (this will handle integers or floats).
      return val if val.is_a?(Numeric)

      # Hopefully val is a string, but protect in case it's not.
      val = val.to_s

      if %r{[^\w\-/]} =~ val
        # If the string contains any special characters, escape any double
        # quotes it has, remove newlines, and wrap the whole thing in quotes.
        format(%("%s"), val.gsub('"', '\"').delete("\n"))
      else
        # Otherwise use the basic value if it looks like a standard set of
        # characters (and allow a few special characters like hyphens, and
        # slashes)
        val
      end
    end
    private_class_method :wrap_logfmt_value
  end
end
