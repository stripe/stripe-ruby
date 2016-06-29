module Stripe
  class Subscription < APIResource
    extend Stripe::APIOperations::List
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Save
    include Stripe::APIOperations::Delete

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
