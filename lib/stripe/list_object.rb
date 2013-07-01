module Stripe
  class ListObject < StripeObject
    def [](k)
      case k
      when String, Symbol
        super
      else
        raise ArgumentError.new("You tried to access the #{k.inspect} index, but ListObject types only support String keys. (HINT: List calls return an object with a 'data' (which is the data array). You likely want to call #data[#{k.inspect}])")
      end
    end

    def each(&blk)
      self.data.each(&blk)
    end

    def all(filters={})
      response, api_key = Stripe.request(:get, url, @api_key, filters)
      Util.convert_to_stripe_object(response, api_key)
    end

  end
end
