module Stripe
  class Invoice < APIResource
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save
    extend Stripe::APIOperations::Create

    OBJECT_NAME = 'invoice'

    def self.upcoming(params, opts={})
      params = params.merge(params) {|_, v| v.nil? ? '' : v}
      resp, opts = request(:get, upcoming_url, params, opts)
      Util.convert_to_stripe_object(resp.data, opts)
    end

    def pay(params={}, opts={})
      resp, opts = request(:post, pay_url, params, opts)
      initialize_from(resp.data, opts)
    end

    private

    def self.upcoming_url
      resource_url + '/upcoming'
    end

    def pay_url
      resource_url + '/pay'
    end
  end
end
