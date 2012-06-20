module Stripe
  class InvalidRequestError < StripeError
    attr_accessor :param

    def initialize(message, param, http_status=nil, http_body=nil, json_body=nil)
      super(message, http_status, http_body, json_body)
      @param = param
    end
  end
end
