module Stripe
  module OAuth
    module OAuthOperations
      extend APIOperations::Request::ClassMethods

      def self.request(method, url, params, opts)
        opts = Util.normalize_opts(opts)
        opts[:client] ||= StripeClient.active_client
        opts[:api_base] ||= Stripe.connect_base

        super(method, url, params, opts)
      end
    end

    def self.get_client_id(params={})
      client_id = params[:client_id] || Stripe.client_id
      unless client_id
        raise AuthenticationError.new('No client_id provided. ' \
          'Set your client_id using "Stripe.client_id = <CLIENT-ID>". ' \
          'You can find your client_ids in your Stripe dashboard at ' \
          'https://dashboard.stripe.com/account/applications/settings, ' \
          'after registering your account as a platform. See ' \
          'https://stripe.com/docs/connect/standalone-accounts for details, ' \
          'or email support@stripe.com if you have any questions.')
      end
      client_id
    end

    def self.authorize_url(params={}, opts={})
      base = opts[:connect_base] || Stripe.connect_base

      params[:client_id] = get_client_id(params)
      params[:response_type] ||= 'code'
      query = Util.encode_parameters(params)

      "#{base}/oauth/authorize?#{query}"
    end

    def self.token(params={}, opts={})
      opts = Util.normalize_opts(opts)
      resp, opts = OAuthOperations.request(
        :post, '/oauth/token', params, opts)
      # This is just going to return a generic StripeObject, but that's okay
      Util.convert_to_stripe_object(resp.data, opts)
    end

    def self.deauthorize(params={}, opts={})
      opts = Util.normalize_opts(opts)
      params[:client_id] = get_client_id(params)
      resp, opts = OAuthOperations.request(
        :post, '/oauth/deauthorize', params, opts)
      # This is just going to return a generic StripeObject, but that's okay
      Util.convert_to_stripe_object(resp.data, opts)
    end
  end
end
