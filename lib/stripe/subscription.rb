module Stripe
  class Subscription < APIResource
    extend Stripe::APIOperations::List
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Save
    include Stripe::APIOperations::Delete

    OBJECT_NAME = "subscription".freeze

    save_nested_resource :source

    def delete_discount
      _, opts = request(:delete, discount_url)
      initialize_from({ discount: nil }, opts, true)
    end

    def self.update(id, params = {}, opts = {})
      params[:items] = Util.array_to_hash(params[:items]) if params[:items]
      super(id, params, opts)
    end

    def self.create(params = {}, opts = {})
      params[:items] = Util.array_to_hash(params[:items]) if params[:items]
      super(params, opts)
    end

    def serialize_params(options = {})
      update_hash = super
      if @unsaved_values.include?(:items)
        value = Util.array_to_hash(@values[:items])
        update_hash[:items] =
          serialize_params_value(value, nil, true, options[:force], key: :items)
      end
      update_hash
    end

    private

    def discount_url
      resource_url + "/discount"
    end
  end
end
