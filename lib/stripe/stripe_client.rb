module Stripe
  class StripeClient
    def initialize(conn)
      self.conn = conn
    end

    def request(&block)
      res = block.call
      [res, Thread.local[:stripe_last_response]]
    end

    def set_last_response(resp)
      Thread.local[:stripe_last_response] = resp
    end

    private

    attr_accessor :conn
  end
end
