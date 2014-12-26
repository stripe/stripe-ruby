module Stripe
  class Account < APIResource
    include Stripe::APIOperations::List

    def url
      id = self['id']
      if id.nil?
        "#{self.class.url[0..-2]}"
      else
        "#{self.class.url}/#{CGI.escape(id)}"
      end
    end

    def self.retrieve(id = nil, api_key=nil)
      if id.nil? || id.match(/^sk/)
        instance = self.new(nil, id)
      else
        instance = self.new(id, api_key)
      end
      instance.refresh
      instance
    end
  end
end