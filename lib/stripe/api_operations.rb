module Stripe
  module APIOperations
    module Create
      module ClassMethods
        def create(params={}, api_key=nil)
          response, api_key = Stripe.request(:post, self.url, api_key, params)
          Util.convert_to_stripe_object(response, api_key)
        end
      end
      def self.included(base)
        base.extend(ClassMethods)
      end
    end

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

    module Delete
      def delete
        response, api_key = Stripe.request(:delete, url, @api_key)
        refresh_from(response, api_key)
        self
      end
    end

    module List
      module ClassMethods
        def all(filters={}, api_key=nil)
          response, api_key = Stripe.request(:get, url, api_key, filters)
          Util.convert_to_stripe_object(response, api_key)
        end
      end

      def self.included(base)
        base.extend(ClassMethods)
      end
    end
  end
end