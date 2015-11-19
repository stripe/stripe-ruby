module Stripe
  class ApplicationFee < APIResource
    extend Stripe::APIOperations::List

    def self.url
      '/v1/application_fees'
    end

    def refund(params={}, opts={})
      self.refunds.create

      # now that a refund has been created, we expect the state of this object
      # to change as well (i.e. `refunded` will now be `true`) so refresh it
      # from the server
      refresh
    end
  end
end
