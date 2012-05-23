module Stripe
  class APIResource < StripeObject
    def self.url
      if self == APIResource
        raise NotImplementedError.new("APIResource is an abstract class.  You should perform actions on its subclasses (Charge, Customer, etc.)")
      end
      shortname = self.name.split('::')[-1]
      "/#{CGI.escape(shortname.downcase)}s"
    end
    def url
      id = self['id']
      raise InvalidRequestError.new("Could not determine which URL to request: #{self.class} instance has invalid ID: #{id.inspect}", 'id') unless id
      "#{self.class.url}/#{CGI.escape(id)}"
    end

    def refresh
      response, api_key = Stripe.request(:get, url, @api_key)
      refresh_from(response, api_key)
      self
    end

    def self.retrieve(id, api_key=nil)
      instance = self.new(id, api_key)
      instance.refresh
      instance
    end

    protected
  end
end