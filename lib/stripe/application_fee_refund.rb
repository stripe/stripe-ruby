module Stripe
  class ApplicationFeeRefund < APIResource
    include Stripe::APIOperations::Update
    include Stripe::APIOperations::List

    def url
      "#{ApplicationFee.url}/#{CGI.escape(fee)}/refunds/#{CGI.escape(id)}"
    end

    def self.retrieve(id, api_key=nil)
      raise NotImplementedError.new("Refunds cannot be retrieved without an application fee ID. Retrieve a refund using appfee.refunds.retrieve('refund_id')")
    end
  end
end
