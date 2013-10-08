module Stripe
  module APIOperations
    module Update
      def save
        set_metadata = process_metadata_values()

        if @unsaved_values.length > 0 or set_metadata.length > 0
          values = @unsaved_values.reduce({}) do |h, k|
            h.update(k => @values[k].nil? ? '' : @values[k])
          end
          values.delete(:id)

          # if the object supports metadata
          if @values[:metadata]
            values[:metadata] = set_metadata
          end

          response, api_key = Stripe.request(:post, url, @api_key, values)
          refresh_from(response, api_key)
        end
        self
      end

      def process_metadata_values
        # if unsetting metadata, return ''
        return '' if @values[:metadata] == nil

        set_metadata = {}
        # if we're updating metadata as a whole,
        # (metadata = {key => val})
        if @unsaved_values.include?(:metadata)
          set_metadata.update(@values[:metadata])
          # unset keys from previous request
          set_metadata.update(metadata_unset_hash(set_metadata))
        end

        # if we're updating keys individually,
        # (metadata[key] = val)
        set_metadata.update(unsaved_metadata_hash())

        set_metadata
      end

      def metadata_unset_hash(updated_hash)
        unset = {}
        @previous_metadata.each do |key, val|
          # don't unset if setting to a new value in the same request
          unset.update(key => '') unless updated_hash.has_key?(key.to_s)
        end
        unset
      end

      def unsaved_metadata_hash
        unsaved_keys = self.metadata.instance_eval { @unsaved_values }
        unsaved_hash = {}

        if not unsaved_keys.nil?
          metadata_vals = self.metadata.instance_eval { @values }
          unsaved_hash = unsaved_keys.reduce({}) do |h, k|
            h.update(k => metadata_vals[k].nil? ? '' : metadata_vals[k])
          end
        end

        unsaved_hash
      end
    end
  end
end
