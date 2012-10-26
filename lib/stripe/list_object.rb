module Stripe
  class ListObject < StripeObject

    def each(&blk)
      self.data.each(&blk)
    end

    def all(filters={})
      response, api_key = Stripe.request(:get, url, api_key, filters)
      Util.convert_to_stripe_object(response, api_key)
    end

  end
end
