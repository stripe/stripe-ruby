module Stripe
  class Invoice < APIResource
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save
    extend Stripe::APIOperations::Create

    OBJECT_NAME = "invoice".freeze

    def self.upcoming(params, opts = {})
      params[:subscription_items] = Util.array_to_hash(params[:subscription_items]) if params[:subscription_items]
      resp, opts = request(:get, upcoming_url, params, opts)
      Util.convert_to_stripe_object(resp.data, opts)
    end

    def pay(params = {}, opts = {})
      resp, opts = request(:post, pay_url, params, opts)
      initialize_from(resp.data, opts)
    end

    def self.upcoming_url
      resource_url + "/upcoming"
    end
    private_class_method :upcoming_url

    def pay_url
      resource_url + "/pay"
    end
    private :pay_url
  end
end
