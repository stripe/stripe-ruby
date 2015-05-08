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
    def self.retrieve(id=ARGUMENT_NOT_PROVIDED, opts={})
      id = id.equal?(ARGUMENT_NOT_PROVIDED) ? nil : Util.check_string_argument!(id)
      # Account used to be a singleton, where this method's signature was `(opts={})`.
      # For the sake of not breaking folks who pass in an OAuth key in opts, let's lurkily
      # string match for it.
      if opts == {} && id.is_a?(String) && id.start_with?('sk_')
        # `super` properly assumes a String opts is the apiKey and normalizes as expected.
        opts = id
        id = nil
      end
      super(id, opts)
    end

    def deauthorize(client_id, opts={})
      opts = {:api_base => Stripe.connect_base}.merge(Util.normalize_opts(opts))
      response, opts = request(:post, '/oauth/deauthorize', { 'client_id' => client_id, 'stripe_user_id' => self.id }, opts)
      opts.delete(:api_base) # the api_base here is a one-off, don't persist it
      Util.convert_to_stripe_object(response, opts)
    end

    ARGUMENT_NOT_PROVIDED = Object.new
  end
end
