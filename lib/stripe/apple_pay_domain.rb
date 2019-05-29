# frozen_string_literal: true

# Domains registered for Apple Pay on the Web
module Stripe
  class ApplePayDomain < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List

    OBJECT_NAME = "apple_pay_domain".freeze

    def self.resource_url
      "/v1/apple_pay/domains"
    end
  end
end
