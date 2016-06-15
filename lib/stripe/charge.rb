module Stripe
  class Charge < APIResource
    extend Stripe::APIOperations::List
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Save

    def refund(params={}, opts={})
      # Old versions of charge objects included a `refunds` field that was just
      # a vanilla array instead of a Stripe list object.
      #
      # Where possible, we'd still like to use the new refund endpoint (thus
      # `self.refunds.create`), but detect the old API version by looking for
      # an `Array` and fall back to the old refund URL if necessary so as to
      # maintain internal compatibility.
      unless self.refunds.is_a?(Array)
        self.refunds.create(params, opts)

        # now that a refund has been created, we expect the state of this object
        # to change as well (i.e. `refunded` will now be `true`) so refresh it
        # from the server
        self.refresh
      else
        response, opts = request(:post, refund_url, params, opts)
        initialize_from(response, opts)
      end
    end

    def capture(params={}, opts={})
      response, opts = request(:post, capture_url, params, opts)
      initialize_from(response, opts)
    end

    def update_dispute(params={}, opts={})
      response, opts = request(:post, dispute_url, params, opts)
      initialize_from({ :dispute => response }, opts, true)
      dispute
    end

    def close_dispute(params={}, opts={})
      response, opts = request(:post, close_dispute_url, params, opts)
      initialize_from(response, opts)
    end

    def mark_as_fraudulent
      params = {
        :fraud_details => { :user_report => 'fraudulent' }
      }
      response, opts = request(:post, resource_url, params)
      initialize_from(response, opts)
    end

    def mark_as_safe
      params = {
        :fraud_details => { :user_report => 'safe' }
      }
      response, opts = request(:post, resource_url, params)
      initialize_from(response, opts)
    end

    private

    def capture_url
      resource_url + '/capture'
    end

    def dispute_url
      resource_url + '/dispute'
    end

    def close_dispute_url
      resource_url + '/dispute/close'
    end

    # Note that this is actually the *old* refund URL and its use is no longer
    # preferred.
    def refund_url
      resource_url + '/refund'
    end
  end
end
