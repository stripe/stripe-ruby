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

    # A metaprogramming call that specifies that a field of a resource can be
    # its own type of API resource (say a nested card under an account for
    # example), and if that resource is set, it should be transmitted to the
    # API on a create or update. Doing so is not the default behavior because
    # API resources should normally be persisted on their own RESTful
    # endpoints.
    def self.save_nested_resource(name)
      define_method(:"#{name}=") do |value|
        super(value)

        # The parent setter will perform certain useful operations like
        # converting to an APIResource if appropriate. Refresh our argument
        # value to whatever it mutated to.
        value = send(name)

        # Note that the value may be subresource, but could also be a scalar
        # (like a tokenized card's ID for example), so we check the type before
        # setting #save_with_parent here.
        if value.is_a?(APIResource)
          value.save_with_parent = true
        end

        value
      end
    end

    def resource_url
      unless id = self['id']
        raise InvalidRequestError.new("Could not determine which URL to request: #{self.class} instance has invalid ID: #{id.inspect}", 'id')
      end
      "#{self.class.resource_url}/#{CGI.escape(id)}"
    end

    def refresh
      resp, opts = request(:get, resource_url, @retrieve_params)
      initialize_from(resp.data, opts)
    end

    def self.retrieve(id, opts={})
      opts = Util.normalize_opts(opts)
      instance = self.new(id, opts)
      instance.refresh
      instance
    end
  end
end
