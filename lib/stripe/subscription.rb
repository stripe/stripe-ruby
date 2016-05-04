module Stripe
  class Subscription < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Update
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List

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
