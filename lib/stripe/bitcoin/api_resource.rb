module Stripe
  module Bitcoin
    class APIResource < Stripe::APIResource
      def self.url()
        if self == APIResource
          raise NotImplementedError.new('Bitcoin::APIResource is an abstract class.  You should perform actions on its subclasses (Receiver, Payment, etc.)')
        end
        "/v1/bitcoin/#{CGI.escape(class_name.downcase)}s"
      end
    end
  end
end
