module Stripe
  # StripeClient executes requests against the Stripe API and allows a user to
  # recover both a resource a call returns as well as a response object that
  # contains information on the HTTP call.
  class StripeClient
    attr_accessor :conn

    # Initializes a new StripeClient. Expects a Faraday connection object, and
    # uses a default connection unless one is passed.
    def initialize(conn = nil)
      self.conn = conn || Stripe.default_conn
    end

    # Sets the last StripeResponse object to have come back from an API call.
    # This is expected to be called by the Stripe module.
    def self.set_last_response(resp)
      if Thread.current[:stripe_client]
        Thread.current[:stripe_last_response] = resp
      end
    end

    # Executes the API call within the given block. Usage looks like:
    #
    #     client = StripeClient.new
    #     charge, resp = client.request { Charge.create }
    #
    def request(&block)
      old_stripe_client = Thread.current[:stripe_client]
      old_stripe_last_response = Thread.current[:stripe_last_response]

      Thread.current[:stripe_client] = self
      Thread.current[:stripe_last_response] = nil

      begin
        res = block.call
        [res, Thread.current[:stripe_last_response]]
      ensure
        Thread.current[:stripe_client] = old_stripe_client
        Thread.current[:stripe_last_response] = old_stripe_last_response
      end
    end
  end
end
