module Stripe
  class APIResource < StripeObject
    include Stripe::APIOperations::Request

    # A flag that can be set a behavior that will cause this resource to be
    # encoded and sent up along with an update of its parent resource. This is
    # usually not desirable because resources are updated individually on their
    # own endpoints, but there are certain cases, replacing a customer's source
    # for example, where this is allowed.
    attr_accessor :save_with_parent

    def self.class_name
      self.name.split('::')[-1]
    end

    def self.resource_url
      if self == APIResource
        raise NotImplementedError.new('APIResource is an abstract class.  You should perform actions on its subclasses (Charge, Customer, etc.)')
      end
      "/v1/#{CGI.escape(class_name.downcase)}s"
    end

    def resource_url
      unless id = self['id']
        raise InvalidRequestError.new("Could not determine which URL to request: #{self.class} instance has invalid ID: #{id.inspect}", 'id')
      end
      "#{self.class.resource_url}/#{CGI.escape(id)}"
    end

    def refresh
      response, opts = request(:get, resource_url, @retrieve_params)
      initialize_from(response, opts)
    end

    def self.retrieve(id, opts={})
      opts = Util.normalize_opts(opts)
      instance = self.new(id, opts)
      instance.refresh
      instance
    end
  end
end
