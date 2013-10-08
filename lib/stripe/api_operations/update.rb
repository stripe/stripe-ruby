module Stripe
  module APIOperations
    module Update
      def save
        if @unsaved_values.length > 0
          values = @unsaved_values.reduce({}) do |h, k|
            # if we're updating (but not unsetting) metadata, unset existing keys
            if k == :metadata && @values[:metadata] != nil
              @values[:metadata].update(metadata_unset_hash(@values[:metadata]))
            end

            h.update(k => @values[k].nil? ? '' : @values[k])
          end
          values.delete(:id)
          response, api_key = Stripe.request(:post, url, @api_key, values)
          refresh_from(response, api_key)
        end
        self
      end

      def metadata_unset_hash(updated_hash)
        unset = {}
        @previous_metadata.each do |key, val|
          # don't unset if setting to a new value in the same request
          unset.update(key => '') unless updated_hash.has_key?(key.to_s)
        end
        unset
      end
    end
  end
end
