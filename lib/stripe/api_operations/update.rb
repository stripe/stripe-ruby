module Stripe
  module APIOperations
    module Update
      def save
        if @unsaved_values.length > 0
          values = {}
          @unsaved_values.each { |k| values[k] = @values[k] }
          response, api_key = Stripe.request(:post, url, @api_key, values)
          refresh_from(response, api_key)
        end
        self
      end
    end
  end
end
