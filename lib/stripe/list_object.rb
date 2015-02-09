module Stripe
  class ListObject < StripeObject
    include Stripe::APIOperations::Request

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

    def retrieve(id, opts={})
      response, opts = request(:get,"#{url}/#{CGI.escape(id)}", {}, opts)
      Util.convert_to_stripe_object(response, opts)
    end

    def create(params={}, opts={})
      response, opts = request(:post, url, params, opts)
      Util.convert_to_stripe_object(response, opts)
    end

    def all(params={}, opts={})
      response, opts = request(:get, url, params, opts)
      Util.convert_to_stripe_object(response, opts)
    end
  end
end
