module Stripe
  class Subscription < APIResource
    extend Stripe::APIOperations::List
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Save
    include Stripe::APIOperations::Delete

    OBJECT_NAME = 'subscription'

    save_nested_resource :source

    def delete_discount
      _, opts = request(:delete, discount_url)
      initialize_from({ :discount => nil }, opts, true)
    end

    def self.update(id, params={}, opts={})
      params[:items] = Util.array_to_hash(params[:items]) if params[:items]
      super(id, params, opts)
    end

    def self.create(params={}, opts={})
      params[:items] = Util.array_to_hash(params[:items]) if params[:items]
      super(params, opts)
    end

    def invoices(params={}, opts={})
      opts = @opts.merge(Util.normalize_opts(opts))
      invoices = Invoice.all(params.merge(:customer => customer), opts)
      invoices.select {|i| i['subscription'] == id }
    end

    private

    def discount_url
      resource_url + '/discount'
    end
  end
end
