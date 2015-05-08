module Stripe
  class APIResource < StripeObject
    include Stripe::APIOperations::Request

    def self.class_name
      self.name.split('::')[-1]
    end

    def self.url
      if self == APIResource
        raise NotImplementedError.new('APIResource is an abstract class.  You should perform actions on its subclasses (Charge, Customer, etc.)')
      end
      "/v1/#{CGI.escape(class_name.downcase)}s"
    end

    def url
      unless id = self['id']
        raise InvalidRequestError.new("Could not determine which URL to request: #{self.class} instance has invalid ID: #{id.inspect}", 'id')
      end
      "#{self.class.url}/#{CGI.escape(id)}"
    end

    def refresh
      response, opts = request(:get, url, @retrieve_params)
      refresh_from(response, opts)
    end

    def self.retrieve(id, opts={})
      opts = Util.normalize_opts(opts)
      instance = self.new(id, opts)
      instance.refresh
      instance
    end
  end
end
