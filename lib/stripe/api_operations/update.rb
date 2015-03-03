module Stripe
  module APIOperations
    module Update
      def save(params={})
        values = serialize_params(self).merge(params)

        if values.length > 0
          values.delete(:id)

          response, opts = request(:post, url, values)
          refresh_from(response, opts)
        end
        self
      end

      def serialize_nested(key)
        if @unsaved_values.include?(key)
          # the metadata object has been reassigned
          # i.e. as object.metadata = {key => val}
          update = @values[key]  # new hash
          new_keys = update.keys.map(&:to_sym)
          # remove keys at the server, but not known locally
          keys_to_unset = @previous[key].keys - new_keys
          keys_to_unset.each {|key| update[key] = ''}

          update
        else
          # metadata is a StripeObject, and can be serialized normally
          serialize_params(@values[key])
        end
      end

      def serialize_params(obj)
        case obj
        when nil
          ''
        when StripeObject
          unsaved_keys = obj.instance_variable_get(:@unsaved_values)
          obj_values = obj.instance_variable_get(:@values)
          update_hash = {}

          unsaved_keys.each do |k|
            update_hash[k] = serialize_params(obj_values[k])
          end

          obj_values.each do |k, v|
            if v.is_a?(StripeObject) || v.is_a?(Hash)
              update_hash[k] = serialize_nested(k)
            end
          end

          update_hash
        else
          obj
        end
      end
    end
  end
end
