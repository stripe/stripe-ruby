module Stripe
  module Util
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
        'application_fee' => ApplicationFee,
        'balance' => Balance,
        'balance_transaction' => BalanceTransaction,
        'card' => Card,
        'charge' => Charge,
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
        'transfer' => Transfer
      }
    end

    def self.convert_to_stripe_object(resp, api_key)
      case resp
      when Array
        resp.map { |i| convert_to_stripe_object(i, api_key) }
      when Hash
        # Try converting to a known object class.  If none available, fall back to generic StripeObject
        object_classes.fetch(resp[:object], StripeObject).construct_from(resp, api_key)
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

    def self.url_encode(key)
      URI.escape(key.to_s, Regexp.new("[^#{URI::PATTERN::UNRESERVED}]"))
    end

    def self.flatten_params(params, parent_key=nil)
      result = []
      params.each do |key, value|
        calculated_key = parent_key ? "#{parent_key}[#{url_encode(key)}]" : url_encode(key)
        if value.is_a?(Hash)
          result += flatten_params(value, calculated_key)
        elsif value.is_a?(Array)
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
          result += flatten_params(elem, calculated_key)
        elsif elem.is_a?(Array)
          result += flatten_params_array(elem, calculated_key)
        else
          result << ["#{calculated_key}[]", elem]
        end
      end
      result
    end

    # The secondary opts argument can either be a string or hash
    # Turn this value into an api_key and a set of headers
    def self.parse_opts(opts)
      case opts
      when NilClass
        raise_bad_api_key
      when String
        return opts, {}
      when Hash
        headers = {}
        if opts[:idempotency_key]
          headers[:idempotency_key] = opts[:idempotency_key]
        end
        if opts[:stripe_account]
          headers[:stripe_account] = opts[:stripe_account]
        end

        api_key = if opts.has_key?(:api_key)
          check_bad_api_key!(opts.fetch(:api_key))
        end

        return api_key, headers
      else
        raise TypeError.new("parse_opts expects a String or a Hash")
      end
    end

    def self.check_bad_api_key!(key)
      raise_bad_api_key unless key.is_a?(String)
      key
    end

    def self.raise_bad_api_key
      raise TypeError.new('api_key must be a String')
    end
  end
end
