module Stripe
  class Account < APIResource
    include Stripe::APIOperations::Create
    include Stripe::APIOperations::List
    include Stripe::APIOperations::Update

    def url
      if self['id']
        super
      else
        "/v1/account"
      end
    end

    # @override To make id optional
    def self.retrieve(id=nil, opts={})
      super
    end

    def deauthorize(client_id, opts={})
      opts = {:api_base => Stripe.connect_base}.merge(Util.normalize_opts(opts))
      response, opts = request(:post, '/oauth/deauthorize', { 'client_id' => client_id, 'stripe_user_id' => self.id }, opts)
      opts.delete(:api_base) # the api_base here is a one-off, don't persist it
      Util.convert_to_stripe_object(response, opts)
    end
  end
end
