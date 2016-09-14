module Stripe
  class Subscription < APIResource
    extend Stripe::APIOperations::List
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Save
    include Stripe::APIOperations::Delete

    save_nested_resource :source

    def self.create(params={}, opts={})
      params[:items] = Util.serialize_indexed_array(params[:items]) if params[:items].respond_to?(:each)
      super(params, opts)
    end

    def self.update(id, params={}, opts={})
      params[:items] = Util.serialize_indexed_array(params[:items]) if params[:items].respond_to?(:each)
      super(id, params, opts)
    end

    def delete_discount
      _, opts = request(:delete, discount_url)
      initialize_from({ :discount => nil }, opts, true)
    end

    private

    def discount_url
      resource_url + '/discount'
    end
  end
end
