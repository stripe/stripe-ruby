module Stripe
  module APIOperations
    module Update
      def save(opts={})
        values = serialize_params(self).merge(opts)

        if @values[:metadata]
          values[:metadata] = serialize_metadata
        end

        if values.length > 0
          values.delete(:id)

          response, api_key = Stripe.request(:post, url, @api_key, values)
          refresh_from(response, api_key)
        end
        self
      end

      def serialize_metadata
        if @unsaved_values.include?(:metadata)
          # the metadata object has been reassigned
          # i.e. as object.metadata = {key => val}
          metadata_update = @values[:metadata]  # new hash
          new_keys = metadata_update.keys.map(&:to_sym)
          # remove keys at the server, but not known locally
          keys_to_unset = @previous_metadata.keys - new_keys
          keys_to_unset.each {|key| metadata_update[key] = ''}

          metadata_update
        else
          # metadata is a StripeObject, and can be serialized normally
          serialize_params(@values[:metadata])
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

          update_hash
        else
          obj
        end
      end
    end
  end
end
