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

    def self.convert_to_stripe_object(resp, api_key)
      types = {
        'charge' => Charge,
        'customer' => Customer,
        'invoiceitem' => InvoiceItem,
        'invoice' => Invoice,
        'plan' => Plan,
        'coupon' => Coupon,
        'event' => Event,
        'transfer' => Transfer,
        'recipient' => Recipient,
        'list' => ListObject
      }
      case resp
      when Array
        resp.map { |i| convert_to_stripe_object(i, api_key) }
      when Hash
        # Try converting to a known object class.  If none available, fall back to generic APIResource
        if klass_name = resp[:object]
          klass = types[klass_name]
        end
        klass ||= StripeObject
        klass.construct_from(resp, api_key)
      else
        resp
      end
    end

    def self.file_readable(file)
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
        new = {}
        object.each do |key, value|
          key = (key.to_sym rescue key) || key
          new[key] = symbolize_names(value)
        end
        new
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
  end
end
