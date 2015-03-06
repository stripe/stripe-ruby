module Stripe
  class SingletonAPIResource < APIResource
    def self.url
      if self == SingletonAPIResource
        raise NotImplementedError.new('SingletonAPIResource is an abstract class.  You should perform actions on its subclasses (Account, etc.)')
      end
      "/v1/#{CGI.escape(class_name.downcase)}"
    end

    def url
      self.class.url
    end

    def self.retrieve(api_key=ARGUMENT_NOT_PROVIDED)
      api_key = api_key.equal?(ARGUMENT_NOT_PROVIDED) ? nil : Util.check_bad_api_key!(api_key)
      instance = self.new(nil, api_key)
      instance.refresh
      instance
    end

    ARGUMENT_NOT_PROVIDED = Object.new
  end
end
