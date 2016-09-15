module Stripe
  # Domains registered for Apple Pay on the Web
  class ApplePayDomain < APIResource
    def self.resource_url
      '/v1/apple_pay/domains'
    end

    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List
  end
end
