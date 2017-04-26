module Stripe
  class ApplicationFee < APIResource
    extend Stripe::APIOperations::List

    OBJECT_NAME = 'application_fee'

    def self.resource_url
      '/v1/application_fees'
    end

    # If you don't need access to an updated fee object after the refund, it's
    # more performant to just call `fee.refunds.create` directly.
    def refund(params={}, opts={})
      self.refunds.create(params, opts)

      # now that a refund has been created, we expect the state of this object
      # to change as well (i.e. `refunded` will now be `true`) so refresh it
      # from the server
      self.refresh
    end
  end
end
