module Stripe
  class SingletonAPIResource < APIResource
    def self.url()
      if self == SingletonAPIResource
        raise NotImplementedError.new('SingletonAPIResource is an abstract class.  You should perform actions on its subclasses (Account, etc.)')
      end
      "/v1/#{CGI.escape(class_name.downcase)}"
    end

    def url
      self.class.url
    end

    def self.retrieve(api_key=nil)
      instance = self.new(nil, api_key)
      instance.refresh
      instance
    end
  end
end
