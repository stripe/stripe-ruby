require "cgi"

module Stripe
  module Util
    # Request options that can be used between requests. This should also be a
    # strict subset of VALID_OPTS.
    PERSIST_OPTS = Set[
      :api_key,
      :api_base,
      :stripe_account,
      :stripe_version,
    ].freeze

    VALID_OPTS = Set[
      :api_key,
      :api_base,
      :content_type,
      :idempotency_key,
      :stripe_account,
      :stripe_version,
    ].freeze

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
        'list' => ListObject,

        # business objects
        'account' => Account,
        'alipay_account' => AlipayAccount,
        'application_fee' => ApplicationFee,
        'balance' => Balance,
        'balance_transaction' => BalanceTransaction,
        'bank_account' => BankAccount,
        'card' => Card,
        'charge' => Charge,
        'country_spec' => CountrySpec,
        'coupon' => Coupon,
        'customer' => Customer,
        'event' => Event,
        'fee_refund' => ApplicationFeeRefund,
        'invoiceitem' => InvoiceItem,
        'invoice' => Invoice,
        'plan' => Plan,
        'recipient' => Recipient,
        'refund' => Refund,
        'subscription' => Subscription,
        'subscription_item' => SubscriptionItem,
        'file_upload' => FileUpload,
        'token' => Token,
        'transfer' => Transfer,
        'transfer_reversal' => Reversal,
        'bitcoin_receiver' => BitcoinReceiver,
        'bitcoin_transaction' => BitcoinTransaction,
        'dispute' => Dispute,
        'product' => Product,
        'sku' => SKU,
        'order' => Order,
        'order_return' => OrderReturn,
        'three_d_secure' => ThreeDSecure,
        'apple_pay_domain' => ApplePayDomain,
      }
    end

    # Converts a hash of fields or an array of hashes into a +StripeObject+ or
    # array of +StripeObject+s. These new objects will be created as a concrete
    # type as dictated by their `object` field (e.g. an `object` value of
    # `charge` would create an instance of +Charge+), but if `object` is not
    # present or of an unkown type, the newly created instance will fall back
    # to being a +StripeObject+.
    #
    # ==== Attributes
    #
    # * +resp+ - Hash of fields and values to be converted into a StripeObject.
    # * +opts+ - Options for +StripeObject+ like an API key that will be reused
    #   on subsequent API calls.
    def self.convert_to_stripe_object(resp, opts)
      case resp
      when Array
        resp.map { |i| convert_to_stripe_object(i, opts) }
      when Hash
        # Try converting to a known object class.  If none available, fall back to generic StripeObject
        object_classes.fetch(resp[:object], StripeObject).construct_from(resp, opts)
      else
        resp
      end
    end

    def self.file_readable(file)
      # This is nominally equivalent to File.readable?, but that can
      # report incorrect results on some more oddball filesystems
      # (such as AFS)
      begin
        File.open(file) { |f| }
      rescue
        false
      else
        true
      end
    end

    def self.symbolize_names(object)
      case object
      when Hash
        new_hash = {}
        object.each do |key, value|
          key = (key.to_sym rescue key) || key
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
      Util.flatten_params(params).
        map { |k,v| "#{url_encode(k)}=#{url_encode(v)}" }.join('&')
    end

    # Encodes a string in a way that makes it suitable for use in a set of
    # query parameters in a URI or in a set of form parameters in a request
    # body.
    def self.url_encode(key)
      CGI.escape(key.to_s).
        # Don't use strict form encoding by changing the square bracket control
        # characters back to their literals. This is fine by the server, and
        # makes these parameter strings easier to read.
        gsub('%5B', '[').gsub('%5D', ']')
    end

    def self.flatten_params(params, parent_key=nil)
      result = []

      # do not sort the final output because arrays (and arrays of hashes
      # especially) can be order sensitive, but do sort incoming parameters
      params.each do |key, value|
        calculated_key = parent_key ? "#{parent_key}[#{key}]" : "#{key}"
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

    # Given a Hash, extracts any keys that are known to be valid request
    # options and returns them as a new Hash. All other keys are returned as a
    # second Hash as well.
    def self.extract_valid_opts(hash)
      hash = Util.normalize_opts(hash)
      opts, other = hash.partition { |k, _| Util::VALID_OPTS.include?(k) }
      [Hash[opts], Hash[other]]
    end

    def self.normalize_id(id)
      if id.kind_of?(Hash) # overloaded id
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
        {:api_key => opts}
      when Hash
        check_api_key!(opts.fetch(:api_key)) if opts.has_key?(:api_key)
        opts.clone
      else
        raise TypeError.new('normalize_opts expects a string or a hash')
      end
    end

    def self.check_string_argument!(key)
      raise TypeError.new("argument must be a string") unless key.is_a?(String)
      key
    end

    def self.check_api_key!(key)
      raise TypeError.new("api_key must be a string") unless key.is_a?(String)
      key
    end

    private

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
        return if !item.is_a?(Hash)
        return if item.count == 0

        first_key = item.first[0]

        if expected_key
          if expected_key != first_key
            raise ArgumentError,
              "All maps nested in an array should start with the same key " +
              "(expected starting key '#{expected_key}', got '#{first_key}')"
          end
        else
          expected_key = first_key
        end
      end
    end
  end
end
