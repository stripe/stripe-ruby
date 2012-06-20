module Stripe
  module JSON
    if MultiJson.respond_to?(:dump)
      def self.dump(*args)
        MultiJson.dump(*args)
      end

      def self.load(*args)
        MultiJson.load(*args)
      end
    else
      def self.dump(*args)
        MultiJson.encode(*args)
      end

      def self.load(*args)
        MultiJson.decode(*args)
      end
    end
  end
end
