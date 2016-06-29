module Stripe
  class ApplicationFeeRefund < APIResource
    include Stripe::APIOperations::Save
    extend Stripe::APIOperations::List

    def resource_url
      "#{ApplicationFee.resource_url}/#{CGI.escape(fee)}/refunds/#{CGI.escape(id)}"
    end

    def self.update(id, params=nil, opts=nil)
      raise NotImplementedError.new("Refunds cannot be updated without an application fee ID. Update a refund by using `a = appfee.refunds.retrieve('refund_id'); a.save`")
    end

    def self.retrieve(id, api_key=nil)
      raise NotImplementedError.new("Refunds cannot be retrieved without an application fee ID. Retrieve a refund using appfee.refunds.retrieve('refund_id')")
    end
  end
end
