module Stripe
  class StripeClient
    def initialize(conn)
      self.conn = conn
    end

    def self.set_last_response(resp)
      if Thread.current[:stripe_client]
        Thread.current[:stripe_last_response] = resp
      end
    end

    def request(&block)
      old_stripe_client = Thread.current[:stripe_client]
      Thread.current[:stripe_client] = self

      begin
        res = block.call
        [res, Thread.current[:stripe_last_response]]
      ensure
        Thread.current[:stripe_client] = old_stripe_client
        Thread.current[:stripe_last_response] = nil
      end
    end

    private

    attr_accessor :conn
  end
end
